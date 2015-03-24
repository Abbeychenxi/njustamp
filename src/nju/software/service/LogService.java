package nju.software.service;
 

import java.text.SimpleDateFormat;
import java.util.Date;
 
import javax.servlet.http.HttpServletRequest;

public class LogService {

	public static String getLog(HttpServletRequest  request)
	{
		StringBuffer buffer=new StringBuffer();
		Date date=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		buffer.append(formatter.format(date)+";");
		buffer.append(request.getRemoteAddr()+";");
		buffer.append(request.getRemoteHost()+";");
		buffer.append(request.getRemotePort()+";");
		buffer.append(request.getRemoteUser()+";");
		return buffer.toString();
	}
}
