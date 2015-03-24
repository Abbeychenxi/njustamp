package nju.software.util;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

/**
 * @author 作者: fan
 * @version 创建时间：2015-3-18 上午11:04:08 
 * 类说明
 */
public class JsonWrite {

	public static void writeJson(Object object, HttpServletResponse response) {
		try {
			String json = JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss");
			System.out.println("$$" + json);
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(json);
			response.getWriter().flush();
			response.getWriter().close();
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
}
