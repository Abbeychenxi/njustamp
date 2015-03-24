package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Stamp;
import nju.software.vo.StampVO;

public class GuessYouLikeService {

	private List<Stamp> likeStamps;
	public GuessYouLikeService() {
		// TODO Auto-generated constructor stub
	}
	private void testData()
	{
		likeStamps=new ArrayList<Stamp>();
		Stamp stamp=new Stamp();
		stamp.setPath("OnLineStamp/images/test4.gif");
		stamp.setName("测试邮票名");
		likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);
		likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);
		likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);
		likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);likeStamps.add(stamp);
	}
	/**
	 * 获取测你喜欢的邮票集合
	 * @return
	 */
	public List<StampVO> getLikeStamps()
	{
		SearchService searchService=new SearchService();
		return searchService.getYearStamps("1956",20);
	}
}
