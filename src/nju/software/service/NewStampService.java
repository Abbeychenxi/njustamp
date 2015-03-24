package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Stamp;
import nju.software.vo.StampVO;

public class NewStampService {

	private List<Stamp> newStamps;
	public NewStampService() {
		// TODO Auto-generated constructor stub
	}
	private void testData()
	{
		newStamps=new ArrayList<Stamp>();
		Stamp stamp=new Stamp();
		stamp.setPath("OnLineStamp/images/test4.gif");
		stamp.setName("≤‚ ‘” ∆±√˚");
		newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);
		newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);
		newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);
		newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);newStamps.add(stamp);
	}
	public List<StampVO> getNewStamps()
	{
		SearchService searchService=new SearchService();
		return searchService.getYearStamps("1960",20);
	}
}
