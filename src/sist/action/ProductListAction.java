package sist.action;

import java.net.URLDecoder;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import sist.bean.PageBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class ProductListAction implements Action {

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();

	public ProductListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	public void paging(HttpServletRequest request) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		String query = request.getParameter("query");
		String data =  request.getParameter("data");
		String search=request.getParameter("search");
		
		map.put("query", query);
		map.put("data", data);
		
		int currentPage = 0;
		int pageScale = 5;
		int totalRow = 0;

		try {
			totalRow = dao.getTotalRow(map);
			currentPage = Integer.parseInt(request.getParameter("page"));
		} catch (Exception e) {
			currentPage = 1;
		}

		int totalPage = totalRow % pageScale == 0 ? totalRow / pageScale : totalRow / pageScale + 1;
		if (totalRow == 0)
			totalPage = 1;
		int start = 1 + (currentPage - 1) * pageScale;
		int end = pageScale + (currentPage - 1) * pageScale;

		int currentBlock = currentPage % pageScale == 0 ? (currentPage / pageScale) : (currentPage / pageScale) + 1;
		int startPage = 1 + (currentBlock - 1) * pageScale;
		int endPage = pageScale + (currentBlock - 1) * pageScale;
		if (totalPage <= endPage)
			endPage = totalPage;

		if(query!=null && data!=null){
			request.setAttribute("query", query);
			request.setAttribute("data", data);
		}else{
			request.setAttribute("query", null);
			request.setAttribute("data", null);
		}
		
		map.put("start", start);
		map.put("end", end);
		
		String job=request.getParameter("job");
		
		if(job!=null && job.equals("main")){
			if(search==null){
				request.setAttribute("newp", dao.selectNew(map));
			}else{
				request.setAttribute("none", "none");
			}
			
			path = "/ClientCartJSP/main.jsp";
		}
		
		request.setAttribute("list", dao.selectProduct(map));
		request.setAttribute("pageBean", new PageBean(currentPage, totalPage, startPage, endPage, currentBlock));
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			
			paging(request);
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return new ActionForWard(path, redirect);
	}

}
