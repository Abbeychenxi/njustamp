package nju.software.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

import nju.software.domain.Stamp;
import nju.software.domain.Stampa;
import nju.software.util.CommonUtil;
import nju.software.util.HttpConnection;
import nju.software.util.JsonUtil;
import nju.software.util.SysContant;
import nju.software.vo.StampVO;

public class SearchService {

	private List<Stamp> picSources;//ͼƬԴ����
	public SearchService()
	{
		
	}
	private void testData()
	{
		picSources=new ArrayList<Stamp>();
		Stamp stamp=new Stamp();
		stamp.setPath("OnLineStamp/images/test5.gif");
		stamp.setName("<<����>>������Ʊ");
		stamp.setDetail("�й���������2015��1��10�շ��С����꡷������Ʊ1��1ö");
		stamp.setUrl("http://www.cpi.com.cn/ypiao/6514.jhtml");
		picSources.add(stamp);picSources.add(stamp);picSources.add(stamp);
		picSources.add(stamp);picSources.add(stamp);
	}
	/**
	 * ��ȡͼƬԴ����
	 * @return
	 */
	public List<Stamp> getPicSources()
	{
		testData();
		return picSources;
	}
//	public List<Stampa> getCountryStamps()
//	{
//		
//		String str=null;
//		try {
//			str = CommonUtil.readParse(SysContant.DISPLAY_COUNTRY_STAMP_PATH);
//			System.out.println(str);
//			return JsonUtil.parseCountyQueyStamp(str);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return null;
//	}
	public List<StampVO> getCountryStamps()  {
		String json=null;
		try {
			System.out.println("+++++++++++++++++=");
			json = HttpConnection.httpGet(SysContant.DISPLAY_COUNTRY_STAMP_PATH );
			 
			Map<String, String> map = JSON.parseObject(json,
					new TypeReference<Map<String, String>>() {
					});
			return  JSON.parseObject(map.get("data"), new TypeReference<List<StampVO>>(){});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public List<StampVO> getYearStamps(String year,int count)  {
		String json=null;
		try {
			System.out.println(SysContant.DISPLAY_YEAR_STAMP_PATH+year);
			json = HttpConnection.httpGet(SysContant.DISPLAY_YEAR_STAMP_PATH+count+"&year="+year );
			System.out.println(SysContant.DISPLAY_YEAR_STAMP_PATH+count+"&year="+year);
			Map<String, String> map = JSON.parseObject(json,
					new TypeReference<Map<String, String>>() {
					});
			return  JSON.parseObject(map.get("data"), new TypeReference<List<StampVO>>(){});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public List<StampVO> getTextStamps(String text)  {
		String json=null;
		try {
			System.out.println(SysContant.DISPLAY_TEXT_STAMP_PATH+text);
			json = HttpConnection.httpGet(SysContant.DISPLAY_TEXT_STAMP_PATH+text);
			
			Map<String, String> map = JSON.parseObject(json,
					new TypeReference<Map<String, String>>() {
					});
			return  JSON.parseObject(map.get("data"), new TypeReference<List<StampVO>>(){});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
