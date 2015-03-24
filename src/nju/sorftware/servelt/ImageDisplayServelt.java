package nju.sorftware.servelt;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.vo.StampVO;

public class ImageDisplayServelt extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ImageDisplayServelt() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
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
		  response.setContentType("image/PNG");
		  OutputStream outputStream=response.getOutputStream();
		  String strId=request.getParameter("id");
		  int id=Integer.parseInt(strId);
		  List<StampVO> list=(List<StampVO>) request.getSession().getAttribute("stamps");
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

	private byte[] getBytes(String url) 
	{
		ByteArrayOutputStream baos = null;
		  try
		  {
		   URL u = new URL(url);
		   BufferedImage image = ImageIO.read(u);
		   
		         //convert BufferedImage to byte array
		   baos = new ByteArrayOutputStream();
		   ImageIO.write( image, "PNG", baos);
		   baos.flush();
		   baos.close();
		   return baos.toByteArray();
		  }
		  catch (Exception e)
		  {
			  e.printStackTrace();
			  return null;
		  }
		  
		 
	}
		 
	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
