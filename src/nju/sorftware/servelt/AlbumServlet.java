package nju.sorftware.servelt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.dao.LogDao;
import nju.software.domain.Album;
import nju.software.service.AlbumService;
import nju.software.service.CollectService;
import nju.software.service.LogService;
import nju.software.service.StampService;
import nju.software.util.CommonUtil;
import nju.software.util.SysContant;

/**
 * Servlet implementation class AlbumServlet
 */
public class AlbumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlbumServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LogDao.saveLog(LogService.getLog((HttpServletRequest)request));
		String label=request.getParameter("label");
		if(label.equals("look"))
		{
			 displayStampsById(request, response);
		}
		else if(label.equals("album"))
		{
			displayAlbums(request, response);
		}else if(label.equals("new"))
		{
			displayNewAlbums(request, response);
		}else if(label.equals("collect"))
		{
			displayCollectAlbums(request, response);
		}
	}
	/**
	 * 通过邮册的id查找邮票集合
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void displayStampsById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String str=request.getParameter("id").trim();
		System.out.println("id==================>"+str);
		 
	   if(CommonUtil.isNumeric(str))
		{
			AlbumService service=new AlbumService();
			request.setAttribute("albums",service.getAlbums());
			request.setAttribute("stamps",service.getStamps((Integer.parseInt(str))));
			request.getRequestDispatcher(SysContant.ALBUM_LOOK_PATH).forward(request, response);
		}
		else
		{
			 
		}
	}
	/**
	 * 显示邮册集合
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void displayAlbums(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		AlbumService albumService=new AlbumService();
		request.setAttribute("albums",albumService.getAlbums());
		request.getRequestDispatcher("/OnLineStamp/album.jsp").forward(request, response);
	}
	/**
	 * 显示邮册集合
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void displayNewAlbums(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	    AlbumService albumService=new AlbumService();	 
		request.setAttribute("albums",albumService.getNewAlbums());
		request.getRequestDispatcher("/OnLineStamp/new_album.jsp").forward(request, response);
	}
	private void displayCollectAlbums(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		CollectService collectService=new CollectService();
		request.setAttribute("albums",collectService.getAlbums());
		request.getRequestDispatcher("/OnLineStamp/collect_album.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	 
}
