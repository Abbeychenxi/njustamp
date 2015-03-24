package domain;

import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;

import nju.software.vo.RetrieveVO;

/**
 * @author 作者: fan
 * @version 创建时间：2015-3-18 上午12:15:15 
 * 类说明
 */
public class Test {

	public static List<RetrieveVO> getData() {
		RetrieveVO vo1 = new RetrieveVO();
		vo1.setFileName("1724.jpg");
		vo1.setRatio("53%");
		
		RetrieveVO vo2 = new RetrieveVO();
		vo2.setFileName("7357.jpg");
		vo2.setRatio("53%");
		
		RetrieveVO vo3 = new RetrieveVO();
		vo3.setFileName("2971.jpg");
		vo3.setRatio("53%");
		
		RetrieveVO vo4 = new RetrieveVO();
		vo4.setFileName("1604.jpg");
		vo4.setRatio("52%");
		
		RetrieveVO vo5 = new RetrieveVO();
		vo5.setFileName("7480.jpg");
		vo5.setRatio("51%");
		
		RetrieveVO vo6 = new RetrieveVO();
		vo6.setFileName("1526.jpg");
		vo6.setRatio("51%");
		List<RetrieveVO> voList = new ArrayList<RetrieveVO>();
		voList.add(vo1);
		voList.add(vo2);
		voList.add(vo3);
		voList.add(vo4);
		voList.add(vo5);
		voList.add(vo6);
		System.out.println(JSON.toJSONString(voList));
		return voList;
	}
	
	public static void main(String[] args) {
		getData();
	}
}
