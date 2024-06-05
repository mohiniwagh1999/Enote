package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.Userdao;
import com.DB.DBconnect;
import com.User.User;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   //String id=req.getParameter("id");
	   String name=req.getParameter("name");
	String email=req.getParameter("email");
	String password=req.getParameter("password");
	User us=new User();
	
	us.setName(name);
	us.setEmail(email);
	us.setPassword(password);
	
	Userdao dao=new Userdao(DBconnect.getcon());
	boolean f=dao.adduser(us);
	HttpSession session;
	
	if(f)
	{
		session=req.getSession();
		session.setAttribute("reg-sucess","Registration successfully");
		resp.sendRedirect("register.jsp");
		
	}
	else
	{
		session=req.getSession();
		session.setAttribute("failed-msg","something went wrong on server");
		resp.sendRedirect("register.jsp");
	}
	
}
	
	
	
}
