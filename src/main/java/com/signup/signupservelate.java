package com.signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signupservelate
 */
@WebServlet("/signup")
public class signupservelate extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		String mobileno=request.getParameter("contact");
		String repassword=request.getParameter("repass");
		
		RequestDispatcher dispatcher=null;
		Connection con=null;
		if(name==null||name.equals(""))
		{
			request.setAttribute("status", "invalidname");
			dispatcher=request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(email==null||email.equals(""))
		{
			request.setAttribute("status", "invaliemail");
			dispatcher=request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
			
		}
		
		if(password==null||password.equals(""))
		{
			request.setAttribute("status", "invalipassword");
			dispatcher=request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
			
		}
		else if(!password.equals(repassword))
		{
			request.setAttribute("status", "invalidconformpassword");
			dispatcher=request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		
			
		}
		
		if(mobileno==null||mobileno.equals(""))
		{
			request.setAttribute("status", "invalimobileno");
			dispatcher=request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		
		}
		else if(mobileno.length()>10 || mobileno.length()<10 )
		{
			request.setAttribute("status", "invalimobilelength");
			dispatcher=request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
			
		
			
		}
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/highway?useSSL=false","root","54321");
			PreparedStatement pst=con.prepareStatement("insert into users(name,password,email,mobileno)values(?,?,?,?)");
			pst.setString(1, name);
			pst.setString(2, password);
			pst.setString(3, email);
			pst.setString(4, mobileno);
			
			
			
			int count =pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("registration.jsp");
			if(count>0)
			{
				request.setAttribute("status", "success");
			}
			else
			{
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		finally
		{
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
	}





}
