package sist.action;

import javax.servlet.http.HttpServletRequest;

import sist.bean.cartBean;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class cartInsertAction implements Action{

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public cartInsertAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		cartBean bean = new cartBean();
		
		int pnum=Integer.parseInt(request.getParameter("pnum"));
		String mid=request.getParameter("mid");
		int pcount=Integer.parseInt(request.getParameter("pcount"));
		int callprice=Integer.parseInt(request.getParameter("callprice"));
		int dcharge=Integer.parseInt(request.getParameter("dcharge"));
		
		bean.setMid(mid);
		bean.setCallprice(callprice);
		bean.setDcharge(dcharge);
		bean.setPcount(pcount);
		bean.setPnum(pnum);
		
		try {
			bean.setBasketno(dao.cartSeq());
			dao.cartInsert(bean);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		request.setAttribute("cart", bean);
		path = "cartAjax.jsp";
		redirect = false;
		
		return new ActionForWard(path, redirect);
	}
}
