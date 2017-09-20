package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.bean.MemberBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class MemberLoginAction implements Action{
	
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public MemberLoginAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		String id=(String)request.getParameter("id");
		String pw=(String)request.getParameter("pw");
		try {
			if(dao.memberLogin(id, pw)){
				MemberBean bean = dao.memberInfo(id);
				request.getSession().setAttribute("member", bean);
				
				path="productList.do?cmd=productList&job=main";
			}else{
				path="/Cart/ClientCartJSP/login.jsp";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return new ActionForWard(path, redirect);
	}
}
