package nju.sorftware.servelt;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.vo.StampVO;

/**
 * @author 作者: fan
 * @version 创建时间：2015-3-19 下午2:46:08 
 * 类说明
 */
public class ImageServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 response.setContentType("image/PNG");
		  OutputStream outputStream=response.getOutputStream();
		  String strId=request.getParameter("id");
		  int id=Integer.parseInt(strId);
		  List<StampVO> list=(List<StampVO>) request.getSession().getAttribute("stampImage");
		  InputStream is = new ByteArrayInputStream(list.get(id).getBinary_pic());
		  int len =0;
		  byte[] buffer=new byte[1024];
		  while((len=is.read(buffer))!=-1) {
		   //out.print((char)a);
			  outputStream.write(buffer, 0, len);
		  }
		  is.close();
		  outputStream.close();
		
	}

}
