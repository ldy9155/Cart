package sist.action;

import javax.servlet.http.HttpServletRequest;
import sist.control.ActionForWard;

public interface Action{
	public ActionForWard execute(HttpServletRequest request);
}
