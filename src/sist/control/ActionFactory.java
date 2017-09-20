package sist.control;

import sist.action.Action;
import sist.action.AdminAddAction;
import sist.action.AdminListAction;
import sist.action.AdminLoginAction;
import sist.action.AdminLogoutAction;
import sist.action.IdCheckAction;
import sist.action.MemberAddAction;
import sist.action.MemberLoginAction;
import sist.action.MemberLogoutAction;
import sist.action.ProductAddAction;
import sist.action.ProductDeleteAction;
import sist.action.ProductInfoAction;
import sist.action.ProductListAction;
import sist.action.cartDeleteAction;
import sist.action.cartInsertAction;
import sist.action.cartListAction;
import sist.action.cartUpdateAction;

public class ActionFactory {
	
	public static  Action getAction(String cmd){
		Action action=null;
		if(cmd.equals("adminAdd")){
			action = new AdminAddAction("adminList.do?cmd=adminList", true); 
		}else if(cmd.equals("idCheck")){
			action = new IdCheckAction("idCheck.jsp", false);
		}else if(cmd.equals("adminList")){
			action = new AdminListAction("/AdminCartJSP/manageCompany.jsp", false);
		}else if(cmd.equals("adminLogin")){
			action = new AdminLoginAction("", true);
		}else if(cmd.equals("adminLogout")){
			action = new AdminLogoutAction("/Cart/AdminCartJSP/adminLogin.jsp", true);
		}else if(cmd.equals("productAdd")){
			action = new ProductAddAction("productList.do?cmd=productList", true);
		}else if(cmd.equals("productList")){
			action = new ProductListAction("/AdminCartJSP/productList.jsp", false); 
		}else if(cmd.equals("productDelete")){
			action = new ProductDeleteAction("productList.do?cmd=productList",true);
		}else if(cmd.equals("productInfo")){
			action = new ProductInfoAction("",false);
		}else if(cmd.equals("MemberAdd")){
			action = new MemberAddAction("/Cart/ClientCartJSP/joinComplete.jsp", true);
		}else if(cmd.equals("MemberLogin")){
			action = new MemberLoginAction("", true);
		}else if(cmd.equals("MemberLogout")){
			action = new MemberLogoutAction("productList.do?cmd=productList&job=main", false);
		}else if(cmd.equals("cartInsert")){
			action = new cartInsertAction("",false);
		}else if(cmd.equals("cartList")){
			action = new cartListAction("/ClientCartJSP/cart.jsp", false);
		}else if(cmd.equals("cartDelete")){
			action = new cartDeleteAction("",true);
		}else if(cmd.equals("cartUpdate")){
			action = new cartUpdateAction("", true);
		}
		
		return action;
	}
}




