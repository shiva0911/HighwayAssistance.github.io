package com.signup;

import java.io.IOException;
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

@WebServlet("/serviceprovidersignup")
public class serviceprovidersignup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("servicename");
		String email = request.getParameter("serviceemail");
		String adhar = request.getParameter("serviceadhar");
		String password = request.getParameter("servicepass");
		String mobileno = request.getParameter("servicecontact");
		String repassword = request.getParameter("servicerepass");
		String dob = request.getParameter("servicedate");
		String address = request.getParameter("serviceaddress");
		String city = request.getParameter("servicecity");

		RequestDispatcher dispatcher = null;
		Connection con = null;
		if (name == null || name.equals("")) {
			request.setAttribute("status", "invalidname");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);
		}
		if (email == null || email.equals("")) {
			request.setAttribute("status", "invaliemail");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);

		}

		if (password == null || password.equals("")) {
			request.setAttribute("status", "invalipassword");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);

		} else if (!password.equals(repassword)) {
			request.setAttribute("status", "invalidconformpassword");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);

		}

		if (mobileno == null || mobileno.equals("")) {
			request.setAttribute("status", "invalimobileno");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);

		} else if (mobileno.length() > 10 || mobileno.length() < 10) {
			request.setAttribute("status", "invalimobilelength");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);

		}
		if (adhar == null || adhar.equals(""))
		{
			request.setAttribute("status", "invaliadhar");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);

		} 
		
		else if (adhar.length() > 12 || adhar.length() < 12)
		
		
		{
			request.setAttribute("status", "invaliadhar");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);

		}
		if (address == null || address.equals("")) {
			request.setAttribute("status", "invalidaddress");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);
		}
		if (city == null || city.equals("")) {
			request.setAttribute("status", "invalidcity");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);
		}
		if (dob == null || dob.equals("")) {
			request.setAttribute("status", "invaliddob");
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			dispatcher.forward(request, response);
		}


		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/highway?useSSL=false", "root", "54321");
			PreparedStatement pst = con.prepareStatement("insert into provider(pname,pemail,padhar,ppassword,pmobile,pdob,paddress,pcity)values(?,?,?,?,?,?,?,?)");
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, adhar);
			pst.setString(4, password);
			pst.setString(5, mobileno);
			//pst.setString(6, repassword);
			pst.setString(6, dob);
			pst.setString(7, address);
			pst.setString(8, city);

			int count = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("serviceprovidersignup.jsp");
			if (count > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				con.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}

	private void getWriter() {
		// TODO Auto-generated method stub

	}

}
