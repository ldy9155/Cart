package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.bean.AdminMemberBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class AdminLoginAction implements Action {

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public AdminLoginAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String id=(String)request.getParameter("username");
		String pw=(String)request.getParameter("password");
		try {
			if(dao.adminLogin(id, pw)){
				AdminMemberBean amb=(AdminMemberBean)dao.adminInfo(id);
				request.getSession().setAttribute("aid", amb.getChargeman());
				request.getSession().setAttribute("company", amb.getCname());
				request.getSession().setAttribute("cnum", amb.getCnum());
				
				path="productList.do?cmd=productList";
				
				if(amb.getChargeman().equals("MASTER")){
					path="adminList.do?cmd=adminList";	
				}
			}else{
				path="adminLogin.jsp";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return new ActionForWard(path, redirect);
	}

	
	
}
