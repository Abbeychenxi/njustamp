package nju.sorftware.servelt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.dao.LogDao;
import nju.software.service.HotStampService;
import nju.software.service.LogService;
import nju.software.vo.StampVO;

/**
 * Servlet implementation class HotStampServlet
 */
public class HotStampServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotStampServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LogDao.saveLog(LogService.getLog((HttpServletRequest)request));
		HotStampService service=new HotStampService();
		List<StampVO> stampVOs=service.getHotStamps();
		request.getSession().setAttribute("hotMore",stampVOs);
		request.setAttribute("hotStamps",stampVOs);
		request.getRequestDispatcher("/OnLineStamp/hotStamp.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
