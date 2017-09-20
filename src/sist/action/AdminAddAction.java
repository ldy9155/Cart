package sist.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import sist.action.Action;
import sist.control.ActionForWard;
import sist.dao.CartDao;

public class AdminAddAction implements Action {

	private String path;
	private boolean redirect;
	private CartDao dao = new CartDao();
	
	public AdminAddAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("cnum", String.valueOf(dao.adminSeq()));
			map.put("cid", request.getParameter("id"));
			map.put("cpw", request.getParameter("pw"));
			map.put("cname", request.getParameter("up_com_name"));
			map.put("ceoname", request.getParameter("up_com_owner"));
			map.put("compost", request.getParameter("up_com_post1"));
			map.put("comaddress", request.getParameter("up_com_addr").trim());
			map.put("comkind", request.getParameter("up_com_item"));
			map.put("ccall", request.getParameter("up_com_tel_tot"));
			map.put("chargeman", request.getParameter("up_p_name"));
			map.put("cmphone", request.getParameter("up_p_mobile_tot"));
			
			dao.adminInsert(map);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return new ActionForWard(path, redirect);
	}
}
