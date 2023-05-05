package com.signup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Service
 */
@WebServlet("/Service")
public class Service extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String name = request.getParameter("name");
		String licence_no = request.getParameter("licence_no");
		String adhar_no = request.getParameter("adhar_no");
		String city = request.getParameter("city");
		String location = request.getParameter("location");
		String service_type = request.getParameter("service_type");
		//String sub_service_type = request.getParameter("sub_service_type");
		String vehicle_name = request.getParameter("vehicle_name");

		String vehicle_no = request.getParameter("vehicle_no");
		String date_time = request.getParameter("date_time");
		String instruction = request.getParameter("instruction");
		String sub_service = "";
		String subservice[] = request.getParameterValues("subservice");

		for (int i = 0; i < subservice.length; i++) {
			sub_service += subservice[i];
		}
		
		
		
		RequestDispatcher dispatcher = null;
		Connection con = null;

		try {
			
			
			HttpSession session = request.getSession();
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/highway?useSSL=false", "root", "54321");
			PreparedStatement pst = con.prepareStatement(
					"insert into service(name,licence_no,adhar_no,city,location,service_type,sub_service_type,instruction,date_time,vehicle_name,vehicle_no)values(?,?,?,?,?,?,?,?,?,?,?)");

			pst.setString(1, name);
			pst.setString(2, licence_no);
			pst.setString(3, adhar_no);
			pst.setString(4, city);
			pst.setString(5, location);
			pst.setString(6, service_type);

			

			pst.setString(7, sub_service);
			pst.setString(8, instruction);
			pst.setString(9, date_time);
			pst.setString(10, vehicle_name);
			pst.setString(11, vehicle_no);

			int count = pst.executeUpdate();

			dispatcher = request.getRequestDispatcher("service.jsp");
			if (count > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
			
			
			
			
			
			
			PreparedStatement pst1 = con.prepareStatement("select * from service");
			ResultSet rs1 = pst1.executeQuery();
			if (rs1.next())
			{
				session.setAttribute("ServiceType", rs1.getString("service_type"));

			}

			
			
			
			
			

		}
		
		catch (Exception e) 
		
		{
			e.printStackTrace();

		} finally {
			try {
				con.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}

}