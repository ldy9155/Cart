package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.bean.MemberBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class MemberAddAction implements Action{

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public MemberAddAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		MemberBean bean = new MemberBean();
		bean.setMid(request.getParameter("id"));
		bean.setMname(request.getParameter("name"));
		bean.setMpw(request.getParameter("pw"));
		bean.setMphone(request.getParameter("mobile"));
		bean.setMemail(request.getParameter("email"));
		bean.setMbirth(request.getParameter("birth"));
		bean.setMgrade("¿œπ›");
		bean.setMpoint(0);
		
		try {
			dao.memberAdd(bean);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return new ActionForWard(path, redirect);
	}

	
	
	
	
}
