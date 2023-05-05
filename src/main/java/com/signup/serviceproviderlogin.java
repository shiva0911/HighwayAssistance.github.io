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
import javax.servlet.http.HttpSession;

@WebServlet("/serviceprovider")
public class serviceproviderlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("serviceusername");
		String password = request.getParameter("servicepassword");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		if (email == null || email.equals("")) {
			request.setAttribute("status", "invalidemail");
			dispatcher = request.getRequestDispatcher("serviceprovider.jsp");
			dispatcher.forward(request, response);

		}
		if (password == null || password.equals("")) {
			request.setAttribute("status", "invalidpassword");
			dispatcher = request.getRequestDispatcher("serviceprovider.jsp");
			dispatcher.forward(request, response);
		}
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/highway?useSSL=false", "root",
					"54321");
			PreparedStatement pst = con.prepareStatement("select * from provider where pemail=? and ppassword=?");
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {

				session.setAttribute("pname", rs.getString("pname"));
				dispatcher = request.getRequestDispatcher("serviceproviderindex.jsp");
			} else

			{

				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("serviceprovider.jsp");
			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
