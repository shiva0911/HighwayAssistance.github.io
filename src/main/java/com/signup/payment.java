
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

@WebServlet("/pay")
public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			HttpSession session = request.getSession();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/highway?useSSL=false", "root",
					"54321");
			String accname = request.getParameter("accname");
			String accno = request.getParameter("accno");
			String accexp = request.getParameter("expdate");
			String acccvv = request.getParameter("cvv");
			String amount = request.getParameter("amount");

			PreparedStatement pst = con
					.prepareStatement("insert into payment(accname,accno,accexp,acccvv,accamount)values(?,?,?,?,?)");
			pst.setString(1, accname);
			pst.setString(2, accno);
			pst.setString(3, accexp);
			pst.setString(4, acccvv);
			pst.setString(5, amount);
			RequestDispatcher dispatcher = null;
			int rs = pst.executeUpdate();

			dispatcher = request.getRequestDispatcher("bill.jsp");
			dispatcher.forward(request, response);

			
			
			
			PreparedStatement pst1 = con.prepareStatement("select * from payment");
			ResultSet rs1 = pst1.executeQuery();
			if (rs1.next())
			{
				session.setAttribute("amount", rs1.getString("accamount"));

			}
			
			
			
			
			

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
