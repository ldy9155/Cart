package sist.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import sist.control.ActionForWard;
import sist.dao.CartDao;

public class cartDeleteAction implements Action {

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public cartDeleteAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub

		String mid=request.getParameter("mid");
		String basketNo=request.getParameter("basketNo");
		String basketsNo=request.getParameter("basketsNo");
		HashMap<Object, Object> map = new HashMap<Object,Object>();
		try {
			if(basketNo!=null && !(basketNo.equals("all")) && basketsNo==null){
				dao.cartDeleteOne(Integer.parseInt(basketNo));
			}else if(basketNo.equals("all")){
				dao.cartDeleteAll(mid);
			}else if(basketNo.equals("nos")){
				String no[] = basketsNo.split("/");
				map.put("no", no);
				dao.cartDeletes(map);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		path="cartList.do?cmd=cartList&id="+mid;
		return new ActionForWard(path, redirect);
	}
}
