package nju.sorftware.servelt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.dao.LogDao;
import nju.software.service.LogService;
import nju.software.service.PersonAlbumService;
import nju.software.service.PersonHomeService;

/**
 * Servlet implementation class PersonHomeServlet
 */
public class PersonHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonHomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LogDao.saveLog(LogService.getLog((HttpServletRequest)request));
		PersonAlbumService personAlbumService=new PersonAlbumService();
		 PersonHomeService homeService=new PersonHomeService();
		 request.setAttribute("albumList",personAlbumService.getPerAlbumList());
		 request.setAttribute("intersList",homeService.getIntersStamps());
		 request.setAttribute("talents",homeService.getTalents());
		 request.getRequestDispatcher("/OnLineStamp/person_home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
