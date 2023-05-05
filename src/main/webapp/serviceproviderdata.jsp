
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <!doctype html>
<html lang="en">
  <head>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Service provider Records</title>
  </head>
<body>
 <h2 align="center"><font><strong>Records Of Services provider</strong></font></h2>
 <div class="container-fluide">
	<div class="container-fluide">
<table class="table table-striped">
  <thead>
    <tr>
    	<td><b>Id</b></td>
		<td><b>Name</b></td>
		<td><b>E-mail</b></td>
		<td><b>Adhar no</b></td>
		

		<td><b>Mobile no</b></td>
		<td><b>Date of Birth</b></td>
		<td><b>	Address</b></td>
		<td><b>City</b></td>
		
</tr>
  </thead>

	
	
   <%

  	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

	try{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/highway", "root", "54321");
		
		statement=connection.createStatement();
		
		
		String sql ="SELECT * FROM provider";

		resultSet = statement.executeQuery(sql);
		while(resultSet.next())
		{
	%>
	
     
		
	<tbody>
    	<tr>
    		<td><%=resultSet.getString("id") %></td>
			<td><%=resultSet.getString("pname") %></td>
			<td><%=resultSet.getString("pemail") %></td>
			<td><%=resultSet.getString("padhar") %></td>
			

			<td><%=resultSet.getString("pmobile") %></td>
			<td><%=resultSet.getString("pdob") %></td>
			<td><%=resultSet.getString("paddress") %></td>
			<td><%=resultSet.getString("pcity") %></td>
			

    	</tr>
    </tbody>
    </div>
	
		            
	<%		
		}
		
	} catch (Exception e) 
   {
		e.printStackTrace();
	}
%>
</div>
</table>
</body>
</html>