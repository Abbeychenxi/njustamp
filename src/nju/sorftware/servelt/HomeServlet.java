package nju.sorftware.servelt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.dao.LogDao;
import nju.software.domain.StampGoods;
import nju.software.service.AdvertService;
import nju.software.service.HomeService;
import nju.software.service.LogService;
import nju.software.service.StampService;
import nju.software.util.CommonUtil;
import nju.software.util.JsonUtil;
import nju.software.util.SysContant;
import nju.software.vo.StampVO;

/**
 * Servlet implementation class HomeServlet
 */
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
       
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LogDao.saveLog(LogService.getLog((HttpServletRequest)request));
		String label=request.getParameter("label");
		 
		if("detail".equals(label.trim()))
		{
			getDetailStamp(request, response);//显示详细的邮票页
		}
		else if("home".equals(label.trim()))
		{
			
			desplayHome(request, response);//显示邮票主页
		}
	}

	/**
	 * 获取邮票的详细信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void getDetailStamp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String str=request.getParameter("id").trim();
		System.out.println("id==================>"+str);
		 
	   if(CommonUtil.isNumeric(str))
		{
			StampService stampService=new StampService();
			request.setAttribute("detailStamp",stampService.getStampById(Integer.parseInt(str)));
			request.getRequestDispatcher(SysContant.STAMP_DETAIL_PATH).forward(request, response);
		}
		else
		{
			 
		}
	}
	/**
	 * 显示主页
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void desplayHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HomeService homeService=new HomeService();
		AdvertService advertService=new AdvertService();
		List<StampVO> farList=homeService.getFarStampList();
		request.setAttribute("farList",farList);
		request.getSession().setAttribute("farlist",farList);
		List<StampVO> hotList=homeService.getHotStampList();
		request.setAttribute("hotList",hotList);
		request.getSession().setAttribute("hotlist",hotList);
		List<StampVO> newList=homeService.getNewStampList();
		request.setAttribute("newList",newList);
		request.getSession().setAttribute("newlist",newList);
		request.setAttribute("adverList",advertService.getAdverises());
		List<String> lists=homeService.getYears();
		System.out.println("===="+lists.size());
	    for(int i=0;i<lists.size();i++)
	    {
	    	System.out.println(lists.get(i));
	    }
		request.setAttribute("years",lists);
		request.setAttribute("countys",homeService.getCounty());
		//response.sendRedirect("yaya.jsp");
		request.getRequestDispatcher(SysContant.HOME_PATH).forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}
	
	
	
}
