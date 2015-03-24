package nju.software.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;

import nju.software.domain.Stamp;
import nju.software.util.CommonUtil;
import nju.software.util.HttpConnection;
import nju.software.util.JsonUtil;
import nju.software.util.SysContant;
import nju.software.vo.StampVO;

public class HomeService {
	    private List<Stamp> farLists;//ϲ������Ʊ����
	    private List<Stamp> hotLists;//������Ʊ����
	    private List<Stamp> newLists;//������Ʊ����
	    private SearchService searchService;
	    public HomeService()
	    {
	    	 searchService=new SearchService();
	    }
	    private void testData()
	    {
	    	farLists=new ArrayList<Stamp>();
	    	Stamp stamp=new Stamp();
	    	stamp.setId(10);
	    	stamp.setName("������Ʊ");
	    	stamp.setPath("OnLineStamp/images/test1.png");
	    	farLists.add(stamp);farLists.add(stamp);farLists.add(stamp);farLists.add(stamp);
	    	hotLists=new ArrayList<Stamp>();
	    	hotLists.add(stamp);hotLists.add(stamp);hotLists.add(stamp);hotLists.add(stamp);
	    	newLists=new ArrayList<Stamp>();
	    	newLists.add(stamp);newLists.add(stamp);newLists.add(stamp);newLists.add(stamp);
	    }
	    /**
	     * 
	     * @return
	     */
	    public List<StampVO> getFarStampList()
	    { 
	    	
	    	 return searchService.getYearStamps("1957",4);
	    }
	    /**
	     *��ȡ���ŵ���Ʊ 
	     */
	    public List<StampVO> getHotStampList()
	    {
	    	return searchService.getYearStamps("1956",4);
	    }
	    /**
	     * ��ȡ������Ʊ
	     */
	    public List<StampVO> getNewStampList()
	    {
	    	return searchService.getYearStamps("1966",4);
	    }
	    /**
	     * 
	     */
	    public List<String> getYears()
	    {
	    	try {
				String str=CommonUtil.readParse(SysContant.DISPLAY_YEAR_PATH);
				return JsonUtil.praseYearList(str);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	return null;
	    }
	    /**
	     * 
	     * @return
	     */
	    public List<String> getCounty()
	    {
	    	try {
				String str=CommonUtil.readParse(SysContant.DISPLAY_COUNTRY_PATH);
				return JsonUtil.praseYearList(str);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	return null;
	    }
}
