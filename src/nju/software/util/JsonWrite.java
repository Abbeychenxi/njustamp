package nju.software.util;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

/**
 * @author ����: fan
 * @version ����ʱ�䣺2015-3-18 ����11:04:08 
 * ��˵��
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
