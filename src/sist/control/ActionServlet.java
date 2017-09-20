package sist.control;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sist.action.Action;//control
public class ActionServlet  extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		String cmd=request.getParameter("cmd");
		Action action=ActionFactory.getAction(cmd);
		ActionForWard af= action.execute(request);
		if(af.isRedirect()){
			response.sendRedirect(af.getPath());
		}else{
			RequestDispatcher rd=request.getRequestDispatcher(af.getPath());
			rd.forward(request, response);
		}
	}
}
