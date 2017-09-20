package sist.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class cartUpdateAction implements Action {

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public cartUpdateAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		String mid=request.getParameter("mid");
		String basketNo = request.getParameter("basketNo");
		int amount = Integer.parseInt(request.getParameter("amount"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		HashMap<Object, Object> map = new HashMap<Object,Object>();
		
		map.put("pcount", amount);
		map.put("basketno", basketNo);
		map.put("price", price*amount);
		try {
			dao.cartUpdate(map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		path="cartList.do?cmd=cartList&id="+mid;
		return new ActionForWard(path, redirect);
	}
}
