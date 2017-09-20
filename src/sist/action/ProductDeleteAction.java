package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class ProductDeleteAction implements Action{

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	
	public ProductDeleteAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		int no=Integer.parseInt(request.getParameter("no"));
		System.out.println(no);
		try {
			dao.productDelete(no);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return new ActionForWard(path, redirect);
	}
}
