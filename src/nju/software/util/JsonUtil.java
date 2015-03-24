package nju.software.util;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import nju.software.domain.StampGoods;
import nju.software.domain.StampPic;
import nju.software.domain.Stampa;

public class JsonUtil {

	public static List<StampGoods> parseStampGoods(String str)
	{
		 List<StampGoods> goodss=new ArrayList<StampGoods>();
	    
	    try {
	    	JSONObject jsonObject=new JSONObject(str);
			JSONArray array=jsonObject.getJSONArray("item_list");
			for(int i=0;i<array.length();i++)
			{
				JSONObject object=(JSONObject) array.get(i);
				System.out.println(i+"======="+object);
				StampGoods goods=new StampGoods();
				List<StampPic> pics=new ArrayList<StampPic>();
				goods.setId(object.getInt("stamp_id"));
				goods.setName(object.getString("stamp_name"));
				goods.setLink(object.getString("stamp_link"));
				goods.setDescrip(object.getString("stamp_descrip"));
				JSONArray jsonArray=object.getJSONArray("stamp_pic_list");
				for(int j=0;j<jsonArray.length();j++)
				{
					StampPic pic=new StampPic();
					JSONObject object2=(JSONObject) jsonArray.get(j);
					 
					pic.setStamp_id(object2.getInt("stamp_id"));
					pic.setStamp_pic_id(object2.getInt("stamp_pic_id"));
					pic.setStamp_pic_url(object2.getString("stamp_pic_url"));
					pic.setStamp_pic_name(object2.getString("stamp_pic_name"));
					pics.add(pic);
					
				}
				goods.setPics(pics);
				goodss.add(goods);
			}
			 
		}catch(JSONException e)
		{
			e.printStackTrace();
		}
	    
		return goodss;
	}
    /**
     * 使用指定文本查找相关邮票数据
     *  "status": int,
       "data": [
        {
            "id": int,
            "collar_id": int,
            "name": string,
            "money": string,
            "number": string,
            "pic": string,
            "price": string,
            "old_price": string,
            "publish_time": date,
            "color": string,
            "country": string,
            "binary_pic": byte[]
        }
　　]
     * @param text 指定关键字
     * @return 该API用于搜索所有字段中包含text指定关键字的邮票信息
     */
	public static List<Stampa> parseTextQueyStamp(String text)
	{
		 List<Stampa> stampas=new ArrayList<Stampa>();
	    
	    try {
	    	JSONObject jsonObject=new JSONObject(text);
			JSONArray array=jsonObject.getJSONArray("data");
			for(int i=0;i<array.length();i++)
			{
				JSONObject object=(JSONObject) array.get(i);
				Stampa stampa=new Stampa();
				stampa.setId(object.getInt("id"));
				stampa.setCollar_id(object.getInt("collar_id"));
				stampa.setName(object.getString("name"));
				stampa.setMoney(object.getString("money"));
				stampa.setNumber(object.getString("number"));
				stampa.setPic(object.getString("pic"));
				stampa.setPrice(object.getString("price"));
				stampa.setOld_price(object.getString("old_price"));
				stampa.setPublish_time(object.getString("publish_time"));
				stampa.setColor(object.getString("color"));
				stampa.setCountry(object.getString("country"));
				stampa.setBinary_pic(object.getString("binary_pic").getBytes());
				stampas.add(stampa);
			}
			 
		}catch(JSONException e)
		{
			e.printStackTrace();
		}
	    
		return stampas;
	}
	/**
	 * 获取指定国家的邮票数据
	 * @param county
	 * @return{
     "status": int,
     "data": [
        {
            "id": int,
            "collar_id": int,
            "name": string,
            "money": string,
            "number": string,
            "pic": string,
            "price": string,
            "old_price": string,
            "publish_time": date,
            "color": string,
            "country": string,
            "binary_pic": byte[]
        }
　　]
}
	 */
	public static List<Stampa> parseCountyQueyStamp(String county)
	{
		 List<Stampa> stampas=new ArrayList<Stampa>();
	    
	    try {
	    	JSONObject jsonObject=new JSONObject(county);
			JSONArray array=jsonObject.getJSONArray("data");
			for(int i=0;i<array.length();i++)
			{
				JSONObject object=(JSONObject) array.get(i);
				Stampa stampa=new Stampa();
				stampa.setId(object.getInt("id"));
				stampa.setCollar_id(object.getInt("collar_id"));
				stampa.setName(object.getString("name"));
				stampa.setMoney(object.getString("money"));
				stampa.setNumber(object.getString("number"));
				stampa.setPic(object.getString("pic"));
				stampa.setPrice(object.getString("price"));
				stampa.setOld_price(object.getString("old_price"));
				stampa.setPublish_time(object.getString("publish_time"));
				stampa.setColor(object.getString("color"));
				stampa.setCountry(object.getString("country"));
				stampa.setBinary_pic(object.getString("binary_pic").getBytes());
				stampas.add(stampa);
			}
			 
		}catch(JSONException e)
		{
			e.printStackTrace();
		}
	    
		return stampas;
	}
	/**
	 * 获取国家列表
	 * {
		    "status": int,
		　　"data": [string]
		}
	 * @return data数组中存储的是所有国家的列表
	 * @throws JSONException 
	 */
	public List<String> praseCountyList(String str)  
	{
		List<String> list=new ArrayList<String>();
		try {
			JSONObject object=new JSONObject(str);
			JSONArray array=object.getJSONArray("data");
			for(int i=0;i<array.length();i++)
			{
				list.add(array.getString(i));
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 获取指定年份的邮票数据
	 * @param county
	 * @return{
     "status": int,
     "data": [
        {
            "id": int,
            "collar_id": int,
            "name": string,
            "money": string,
            "number": string,
            "pic": string,
            "price": string,
            "old_price": string,
            "publish_time": date,
            "color": string,
            "country": string,
            "binary_pic": byte[]
        }
　　]
}
	 */
	public static List<Stampa> parseYearQueyStamp(String str)
	{
		 List<Stampa> stampas=new ArrayList<Stampa>();
	    
	    try {
	    	JSONObject jsonObject=new JSONObject(str);
			JSONArray array=jsonObject.getJSONArray("data");
			for(int i=0;i<array.length();i++)
			{
				JSONObject object=(JSONObject) array.get(i);
				Stampa stampa=new Stampa();
				stampa.setId(object.getInt("id"));
				stampa.setCollar_id(object.getInt("collar_id"));
				stampa.setName(object.getString("name"));
				stampa.setMoney(object.getString("money"));
				stampa.setNumber(object.getString("number"));
				stampa.setPic(object.getString("pic"));
				stampa.setPrice(object.getString("price"));
				stampa.setOld_price(object.getString("old_price"));
				stampa.setPublish_time(object.getString("publish_time"));
				stampa.setColor(object.getString("color"));
				stampa.setCountry(object.getString("country"));
				stampa.setBinary_pic(object.getString("binary_pic").getBytes());
				stampas.add(stampa);
			}
			 
		}catch(JSONException e)
		{
			e.printStackTrace();
		}
	    
		return stampas;
	}
	/**
	 * 获取年份列表
	 * {
		    "status": int,
		　　"data": [string]
		}
	 * @return data数组中存储的是所有国家的列表
	 * @throws JSONException 
	 */
	public static List<String> praseYearList(String str)  
	{
		List<String> list=new ArrayList<String>();
		try {
			JSONObject object=new JSONObject(str);
			JSONArray array=object.getJSONArray("data");
			for(int i=0;i<array.length();i++)
			{
				list.add(array.getString(i));
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	/**
	 * 获取可用查询方式
	 * {
		    "status": int,
		　　"data": [string]
		}
	 * @return data数组中存储的是所有国家的列表
	 * @throws JSONException 
	 */
	public List<String> praseQueryWayList(String str)  
	{
		List<String> list=new ArrayList<String>();
		try {
			JSONObject object=new JSONObject(str);
			JSONArray array=object.getJSONArray("data");
			for(int i=0;i<array.length();i++)
			{
				list.add(array.getString(i));
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
