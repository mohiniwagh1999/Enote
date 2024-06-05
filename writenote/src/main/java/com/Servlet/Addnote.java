package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.PostDAO;
import com.DB.DBconnect;
@WebServlet("/addnote")
public class Addnote extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String title=req.getParameter("title");
		String content=req.getParameter("content");
		
		PostDAO dao=new PostDAO(DBconnect.getcon());
		boolean f=dao.addnotes(title, content, id);
		if(f)
		{
			System.out.println("data inserted successfully");
			resp.sendRedirect("show.jsp");
		}
		else
		{
			System.out.println("data not inserted");
		}
		
		
	}
	
}

