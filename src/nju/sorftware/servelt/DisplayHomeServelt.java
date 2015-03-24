package nju.sorftware.servelt;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.vo.StampVO;

public class DisplayHomeServelt extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DisplayHomeServelt() {
		super();
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		  String label=request.getParameter("label");
		  if(label.trim().equals("far"))
		  {
			  List<StampVO> list=(List<StampVO>) request.getSession().getAttribute("farlist");
			  displayImage(request, response,list);
		  }
		  else if(label.trim().equals("hot"))
		  {
			  List<StampVO> list=(List<StampVO>) request.getSession().getAttribute("hotlist");
			  displayImage(request, response,list);
		  }else if(label.trim().equals("new"))
		  {
			  List<StampVO> list=(List<StampVO>) request.getSession().getAttribute("newlist");
			  displayImage(request, response,list);
		  }else if(label.trim().equals("hotMore"))
		  {
			  List<StampVO> list=(List<StampVO>) request.getSession().getAttribute("hotMore");
			  displayImage(request, response,list);
		  }else if(label.trim().equals("newMore"))
		  {
			  List<StampVO> list=(List<StampVO>) request.getSession().getAttribute("newMore");
			  displayImage(request, response,list);
		  }else if(label.trim().equals("likeMore"))
		  {
			  List<StampVO> list=(List<StampVO>) request.getSession().getAttribute("likeMore");
			  displayImage(request, response,list);
		  }
		  
	}
	private void displayImage(HttpServletRequest request, HttpServletResponse response,List<StampVO> list) throws IOException
	{
		response.setContentType("image/PNG");
		  OutputStream outputStream=response.getOutputStream();
		  String strId=request.getParameter("id");
		  int id=Integer.parseInt(strId);
		  
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

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
