package com.signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/feedback")
public class feedback1 extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/highway?useSSL=false", "root",
					"54321");
			String name = request.getParameter("name");
			String suggesition = request.getParameter("suggesition");
			String rating = request.getParameter("rating");

			PreparedStatement pst = con.prepareStatement("insert into feedback(name,suggesition,rating)values(?,?,?)");
			pst.setString(1, name);
			pst.setString(2, suggesition);
			pst.setString(3, rating);
			RequestDispatcher dispatcher=null;
			int rs = pst.executeUpdate();

			dispatcher = request.getRequestDispatcher("feedback.jsp");
			dispatcher.forward(request, response);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

	}

}
