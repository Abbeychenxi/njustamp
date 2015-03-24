package service;

import nju.software.util.CommonUtil;
import nju.sorftware.servelt.HomeServlet;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AdverServiceTest {

	 
	@Test
	public void nihao() throws Exception
	{
		System.out.println(CommonUtil.readParse("http://172.17.229.156:8000/stampitem/service/sbsl/?offset=0&count=10"));
	}
	
}
