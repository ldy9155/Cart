package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.bean.ProductBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class ProductInfoAction implements Action{
	
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public ProductInfoAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		String job = request.getParameter("job");
		int pnum=Integer.parseInt(request.getParameter("pnum"));
		try {
			ProductBean bean=dao.productInfo(pnum);
			request.setAttribute("bean", bean);
			
			if(job.equals("mod")){
				path="/AdminCartJSP/productAdd.jsp?job=mod";
			}else if(job.equals("info")){
				path="/ClientCartJSP/productInfo.jsp";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return new ActionForWard(path, redirect);
	}

	
	
}
