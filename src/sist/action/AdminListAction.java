package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class AdminListAction implements Action {

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public AdminListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		try {
			request.setAttribute("list", dao.selectAdminMember());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return new ActionForWard(path, redirect);
	}
}
