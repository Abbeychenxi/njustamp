package nju.sorftware.servelt;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nju.software.service.RetrieveService;
import nju.software.util.FileOperate;
import nju.software.util.JsonWrite;
import nju.software.util.RegexURL;
import nju.software.util.SysContant;
import nju.software.vo.StampVO;

/**
 * @author 锟斤拷锟斤拷: fan
 * @version 锟斤拷锟斤拷时锟戒：2015-3-18 锟斤拷锟斤拷10:36:05 锟斤拷说锟斤拷
 */
public class RetrieveServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String image_url = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<StampVO> voList = new ArrayList<StampVO>();
		String label = request.getParameter("label");
		if ("image_url".equals(label.trim())) { // 锟斤拷锟酵计瑄rl
			try {
				voList = retrieveImageUrl(request, response);
				if (!voList.isEmpty() && voList.size() > 0) { // 锟斤拷锟斤拷匹锟斤拷锟斤拷
					System.out.println("**************");
					request.getSession().setAttribute("stampImage", voList);
					request.setAttribute("url", image_url);
					request.setAttribute("StampList", voList);
					request.getRequestDispatcher(
							SysContant.RETRIEVE_RESULT_PATH).forward(request,
							response);
					// JsonWrite.writeJson(voList, response);
				} else {
					// 失锟斤拷
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if ("local_upload".equals(label.trim())) { // 锟斤拷荼锟斤拷锟酵计�
			try {
				voList = retrieveLocalUpload(request, response);
				if (!voList.isEmpty() && voList.size() > 0) { // 锟斤拷锟斤拷匹锟斤拷锟斤拷
					System.out.println("**************");
					request.getSession().setAttribute("stampImage", voList);
					request.setAttribute("url", image_url);
					request.setAttribute("StampList", voList);
					request.getRequestDispatcher(
							SysContant.RETRIEVE_RESULT_PATH).forward(request,
							response);
					// JsonWrite.writeJson(voList, response);
				} else {
					// 失锟斤拷
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				voList = retrieveMore(request, response);
				if (!voList.isEmpty() && voList.size() > 0) {
					request.getSession().setAttribute("stampImage", voList);
					request.setAttribute("url", image_url);
					request.setAttribute("StampList", voList);
					request.getRequestDispatcher(
							SysContant.RETRIEVE_RESULT_MORE_PATH).forward(
							request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	/**
	 * 锟斤拷荼锟斤拷锟斤拷洗锟酵计拷锟斤拷屑锟斤拷锟�
	 * 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	private List<StampVO> retrieveLocalUpload(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		RetrieveService service = new RetrieveService();
		System.out.println("param==========");
		String fileName = FileOperate.fileUpload(request, this
				.getServletContext().getRealPath("/") + "/download/");
		image_url = fileName;
		if (fileName != null) {
			return service.getStampList(fileName, "10");
		}
		return null;
	}

	/**
	 * 锟斤拷锟絠mage url 锟斤拷锟斤拷锟斤拷票
	 * 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	private List<StampVO> retrieveImageUrl(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String url = request.getParameter("url");
		String limit = request.getParameter("limit");
		System.out.println("param=============" + url);
		System.out.println(this.getServletContext().getRealPath("/"));
		Map<String, Object> m = new HashMap<String, Object>();
		if (!RegexURL.isUrl(url)) {
			System.out.println("url ++" + url);
			m.put("success", true);
			m.put("msg", "url不合法");
			JsonWrite.writeJson(m, response);

		} else {
			RetrieveService service = new RetrieveService();
			image_url = url;
			return service.getStampList(url, limit);
		}
		return null;
	}

	private List<StampVO> retrieveMore(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String url = request.getParameter("url");
		String limit = request.getParameter("limit");
		RetrieveService service = new RetrieveService();
		image_url = url;
		return service.getStampList(url, limit);
		// return null;
	}

}
