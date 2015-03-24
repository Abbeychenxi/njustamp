package nju.sorftware.servelt;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.dao.LogDao;
import nju.software.domain.Stampa;
import nju.software.service.HomeService;
import nju.software.service.LogService;
import nju.software.service.NewStampService;
import nju.software.service.SearchService;
import nju.software.service.SimilarStampService;
import nju.software.service.StampService;
import nju.software.vo.StampVO;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		 
		SimilarStampService similarStampService=new SimilarStampService();
		String label=request.getParameter("search");
		if(label.trim().equals("search"))
		{
			StampService stampService=new StampService();
			request.setAttribute("picSources",stampService.getStampGoods(0,10));
			request.setAttribute("simiPics",similarStampService.getSimiStamps());
			request.getRequestDispatcher("/OnLineStamp/search_result.jsp").forward(request, response);
		}
		else if(label.trim().equals("more"))
		{
			StampService stampService=new StampService();
			request.setAttribute("picSources",stampService.getStampGoods(0,10));
			request.setAttribute("simiPics",similarStampService.getSimiStamps());
			request.getRequestDispatcher("/OnLineStamp/search_result_more.jsp").forward(request, response);
		}else if(label.trim().equals("year"))
		{
			String year=request.getParameter("year");
			SearchService searchService=new SearchService();
			List<StampVO> stampas=searchService.getYearStamps(year,20);
			request.getSession().setAttribute("years",stampas);
			for(int i=0;i<stampas.size();i++)
			{
				System.out.println(stampas.get(i).getId()+";;");
			}
			HomeService homeService=new HomeService();
			request.setAttribute("label",year);
			request.setAttribute("titles",homeService.getYears());
			request.setAttribute("newStamps",stampas);
			request.getRequestDispatcher("/OnLineStamp/search_year_display.jsp").forward(request,response);
		}else if(label.trim().equals("county"))
		{
			String county=request.getParameter("county");
			SearchService searchService=new SearchService();
			List<StampVO> stampas=searchService.getCountryStamps();
			request.getSession().setAttribute("stamps",stampas);
			for(int i=0;i<stampas.size();i++)
			{
				System.out.println(stampas.get(i).getId()+";;");
			}
			HomeService homeService=new HomeService();
			request.setAttribute("label",new String(county.getBytes("ISO-8859-1"),"utf-8"));
			request.setAttribute("titles",homeService.getCounty());
			request.setAttribute("newStamps",stampas);
			request.getRequestDispatcher("/OnLineStamp/search_display.jsp").forward(request,response);
		}else if(label.trim().equals("text"))
		{
			String text = request.getParameter("text");
			SearchService searchService = new SearchService();
			List<StampVO> stamps = searchService.getTextStamps(text);
			request.getSession().setAttribute("stamps", stamps);
			HomeService homeService = new HomeService();
			request.setAttribute("label",text);
			request.setAttribute("titles",homeService.getYears());
			request.setAttribute("newStamps",stamps);
			request.getRequestDispatcher("/OnLineStamp/search_text_display.jsp").forward(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String text=request.getParameter("text");
		System.out.println("+++++++"+text);
		SearchService searchService=new SearchService();
		List<StampVO> stampas=searchService.getTextStamps(text);
		request.getSession().setAttribute("texts",stampas);
		for(int i=0;i<stampas.size();i++)
		{
			System.out.print(stampas.get(i).getId() + "\t");
		}
//	s
		request.setAttribute("label",text);
//		request.setAttribute("titles",homeService.getCounty());
		request.setAttribute("newStamps",stampas);
		request.getRequestDispatcher("/OnLineStamp/search_text_display.jsp").forward(request,response);
	}

}
