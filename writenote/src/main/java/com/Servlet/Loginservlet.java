package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.Userdao;
import com.DB.DBconnect;
import com.User.User;
@WebServlet("/login")
public class Loginservlet  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("uemail");
		String password=req.getParameter("upassword");
		
		
		User us=new User();
		us.setEmail(email);
		us.setPassword(password);
		
		Userdao dao=new Userdao(DBconnect.getcon());
		User user=dao.loginuser(us);
		if(user!=null)
		{
			HttpSession session=req.getSession();
			session.setAttribute("userD", user);
			resp.sendRedirect("home.jsp");
		}
		
		else
		{
			HttpSession session=req.getSession();
			session.setAttribute("login-failed","invalid username and password");
			resp.sendRedirect("login.jsp");
		}
	}
	
	
}
