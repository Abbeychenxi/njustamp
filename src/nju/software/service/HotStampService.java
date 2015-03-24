package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Stamp;
import nju.software.vo.StampVO;

public class HotStampService {

	private List<Stamp> hotStamps;
	public HotStampService() {
		// TODO Auto-generated constructor stub
	}
	private void testData()
	{
		hotStamps=new ArrayList<Stamp>();
		Stamp stamp=new Stamp();
		stamp.setPath("OnLineStamp/images/test4.gif");
		stamp.setName("≤‚ ‘” ∆±√˚");
		hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);
		hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);
		hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);
		hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);hotStamps.add(stamp);
	}
	public List<StampVO> getHotStamps()
	{
		 SearchService searchService=new SearchService();
		 return searchService.getYearStamps("1957",20);
	}
}
