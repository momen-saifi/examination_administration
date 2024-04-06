<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Exam Schedule</title>
<script type="text/javascript" src="Aqmal/jquery.min.js"></script>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%@include file="StudentMenu.jsp"%>
	<center>
		<div class="content" style="width: 60%">

			<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
			Statement st = conn.createStatement();
			ResultSet rs;
			rs = st.executeQuery("select * from timetable");

			rs.next();
			%>



			<table border="1px" style="width: 100%;">

				<tr>
					<th>MCA</th>
					<td><img width=70% src=<%=rs.getString("photo")%>
						alt="Not Upload"></td>
				</tr>
				<%
				rs.next();
				%>
				<th>BCA</th>
				<td><img src=<%=rs.getString("photo")%> alt="Not Upload"
					width=70%></td>
				</tr>
				<%
				rs.next();
				%>
				<th>B.Tech</th>
				<td><img width=70% src=<%=rs.getString("photo")%>
					alt="Not Upload"></td>
				</tr>

			</table>

		</div>
	</center>


</body>
</html>