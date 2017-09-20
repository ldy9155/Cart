package sist.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class IdCheckAction implements Action {
	
	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public IdCheckAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
		String flag=request.getParameter("flag");
		
		try {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			map.put("flag", flag);
			String check = dao.idCheck(map);
			
			request.setAttribute("confirm", "confirm");
			request.setAttribute("check", check);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return new ActionForWard(path, redirect);
	}

}
