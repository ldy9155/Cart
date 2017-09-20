package sist.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import sist.bean.cartListBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class cartListAction implements Action{

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public cartListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		String mid = request.getParameter("id");
						
		try {
			List<cartListBean> list = dao.cartListSelect(mid);
			request.setAttribute("list", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return new ActionForWard(path,redirect);
	}

	
	
}
