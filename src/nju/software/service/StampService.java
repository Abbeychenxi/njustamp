package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Stamp;
import nju.software.domain.StampGoods;
import nju.software.util.CommonUtil;
import nju.software.util.JsonUtil;
import nju.software.util.SysContant;

/**
 * 邮票服务类
 * @author cun
 *
 */
public class StampService {

	private List<Stamp> stamps;
	private List<StampGoods> stampGoods;//邮票商品集合
	public StampService()
	{
		testData();
	}
	private void testData()
	{
		stamps=new ArrayList<Stamp>();
		Stamp stamp=new Stamp();
		stamp.setName("测试邮票名");
    	stamp.setPath("OnLineStamp/images/11.PNG");
    	stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);
    	stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);
    	stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);
    	stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);
	}
	/**
	 * 获取主界面显示的邮票集合
	 * @return
	 */
	public List<Stamp> getStamps()
	{
		return stamps;
	}
	/**
	 * 通过邮票的id获取邮票的详细信息
	 * @return
	 */
	public Stamp getStampById(int id)
	{
		Stamp stamp=new Stamp();
		return stamp;
	}
	/**
	 * 获取邮票商品集合
	 * @return
	 */
	public List<StampGoods> getStampGoods(int offset,int count)
	{
		if(offset<0)
		{
			offset=0;
		}
		if(count<0)
		{
			count=0;
		}
		try {
			List<StampGoods> goods=JsonUtil.parseStampGoods(CommonUtil.readParse(SysContant.STAMP_GOODS_PATH+offset+"&count="+count));
			System.out.println("size=="+goods.size());
			return goods;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
}
