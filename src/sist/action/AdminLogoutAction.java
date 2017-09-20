package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class AdminLogoutAction implements Action {

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public AdminLogoutAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		request.getSession().invalidate();
		
		return new ActionForWard(path, redirect);
	}

	
	
}
