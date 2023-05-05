package com.signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminee")
public class admine extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		//RequestDispatcher dispatcher=null;
		String adminname = request.getParameter("adminname");
		String adminpassword = request.getParameter("adminpassword");
	
		RequestDispatcher dispatcher1 = null;
		if (adminname == null || adminname.equals("")) {
			request.setAttribute("status", "invalidemail");
			dispatcher1 = request.getRequestDispatcher("adminlogin.jsp");
			dispatcher1.forward(request, response);

		}
		if (adminpassword == null || adminpassword.equals("")) {
			request.setAttribute("status", "invalidpassword");
			dispatcher1 = request.getRequestDispatcher("adminlogin.jsp");
			dispatcher1.forward(request, response);
		}


		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/highway?useSSL=false", "root","54321");
			//System.out.println("in do post");
			//System.out.println(request.getParameter(" adminname"));
			//System.out.println(request.getParameter("adminpassword "));
			if("Admin".equals(request.getParameter("adminname")) && "12345".equals(request.getParameter("adminpassword")))
				
			{
				//System.out.println("login sucessfully");
				dispatcher1 = request.getRequestDispatcher("adminindex.jsp");
				
			}else
			{
				request.setAttribute("status", "failed");


				dispatcher1 = request.getRequestDispatcher("adminlogin.jsp");
				
			}
			dispatcher1.forward(request, response);

			
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}

	}

}
