package nju.sorftware.servelt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.dao.LogDao;
import nju.software.service.GuessYouLikeService;
import nju.software.service.HotStampService;
import nju.software.service.LogService;
import nju.software.vo.StampVO;

/**
 * Servlet implementation class GuessYouLikeServlet
 */
public class GuessYouLikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuessYouLikeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LogDao.saveLog(LogService.getLog((HttpServletRequest)request));
		GuessYouLikeService service=new GuessYouLikeService();
		 
		List<StampVO> stampVOs=service.getLikeStamps();
		request.getSession().setAttribute("likeMore",stampVOs);
		request.setAttribute("likeStamps",stampVOs);
		request.getRequestDispatcher("/OnLineStamp/likeStamp.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
