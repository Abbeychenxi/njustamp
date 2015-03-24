package nju.software.service;

import java.util.ArrayList;
import java.util.List;

import nju.software.domain.Stamp;
import nju.software.domain.StampGoods;
import nju.software.util.CommonUtil;
import nju.software.util.JsonUtil;
import nju.software.util.SysContant;

/**
 * ��Ʊ������
 * @author cun
 *
 */
public class StampService {

	private List<Stamp> stamps;
	private List<StampGoods> stampGoods;//��Ʊ��Ʒ����
	public StampService()
	{
		testData();
	}
	private void testData()
	{
		stamps=new ArrayList<Stamp>();
		Stamp stamp=new Stamp();
		stamp.setName("������Ʊ��");
    	stamp.setPath("OnLineStamp/images/11.PNG");
    	stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);
    	stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);
    	stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);
    	stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);stamps.add(stamp);
	}
	/**
	 * ��ȡ��������ʾ����Ʊ����
	 * @return
	 */
	public List<Stamp> getStamps()
	{
		return stamps;
	}
	/**
	 * ͨ����Ʊ��id��ȡ��Ʊ����ϸ��Ϣ
	 * @return
	 */
	public Stamp getStampById(int id)
	{
		Stamp stamp=new Stamp();
		return stamp;
	}
	/**
	 * ��ȡ��Ʊ��Ʒ����
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
