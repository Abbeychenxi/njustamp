package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Stamp;

public class SimilarStampService {

	private List<Stamp> simiStamps;
	public SimilarStampService()
	{
		
	}
	private void testData()
	{
		simiStamps=new ArrayList<Stamp>();
		Stamp stamp=new Stamp();
	    stamp.setPath("OnLineStamp/images/test5.gif");
	    simiStamps.add(stamp);simiStamps.add(stamp);simiStamps.add(stamp);simiStamps.add(stamp);
	    simiStamps.add(stamp);simiStamps.add(stamp);   
	}
	/**
	 * 获得相识邮票集合 
	 * @return
	 */
	public List<Stamp> getSimiStamps()
	{
		testData();
		return simiStamps;
	}
}
