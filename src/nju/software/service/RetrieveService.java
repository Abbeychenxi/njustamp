package nju.software.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import nju.software.util.HttpConnection;
import nju.software.vo.RetrieveVO;
import nju.software.vo.StampVO;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

import domain.Test;

/**
 * @author ����: fan
 * @version ����ʱ�䣺2015-3-18 ����1:27:51 ��˵��
 */
public class RetrieveService {
	private final static String RETRIEVE_URL = "http://192.168.68.12:8085/stamp/match";
	private final static String TAOBAO_URL = "http://192.168.68.101:8080/GetStamp/GetTaoBaoURL";
	private final static String STAMP_URL = "http://192.168.68.107:8080/StampAPI/id";

	public List<StampVO> getStampList(String url, String limit) throws Exception {
		System.out.println("**************" + url);
		List<RetrieveVO> voList = getRetrieveResult(RETRIEVE_URL + "?imgurl="
				+ url + "&limit=" + limit);
		if (!voList.isEmpty() && voList.size() > 0) {
			List<StampVO> stampList = new ArrayList<StampVO>();
			for (RetrieveVO vo : voList) {
				StampVO stamp = getStamp(vo.getFileName().split("\\.")[0]);
				String taoBaoUrl = getTaoBaoUrl(vo);
				if (stamp != null && taoBaoUrl != null) {
					
					stamp.setUrl(taoBaoUrl);
				}
				stampList.add(stamp);
			}
			return stampList;
		}
		return null;
	}

	private List<RetrieveVO> getRetrieveResult(String url) throws Exception {
		String json = HttpConnection.httpGet(url);
		System.out.println("@@" + json);
		if (json != null) {
			return JSON.parseObject(json,
					new TypeReference<List<RetrieveVO>>() {
					});
		}
		return null;
	}

	private StampVO getStamp(String id) throws Exception {
		String json = HttpConnection.httpGet(STAMP_URL + "?id=" + id);
		Map<String, String> map = JSON.parseObject(json,
				new TypeReference<Map<String, String>>() {
				});

		return JSON.parseObject(map.get("data"), StampVO.class);

	}

	private String getTaoBaoUrl(RetrieveVO vo) throws Exception {
		String json = HttpConnection.httpPost(TAOBAO_URL, "picture=" + vo.getFileName());
		System.out.println(json);
		if (json != null && json!= "[]") {
			List<Object> list = JSON.parseArray(json);
			return (String) list.get(0);
		}
		return null;
	}

	public static void main(String[] args) throws Exception {
		RetrieveService s = new RetrieveService();
		s.getRetrieveResult("http://192.168.68.12:8085/stamp/match?imgurl=http://192.168.63.11:8000/stampitem/service/rp/pic51_2.jpg.jpg&limit=10");
	}

}
