<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Seat</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%@ include file="AdminMenu.html"%>

	<section>
		<p id="logo" target="_blank">Student List</p>
		<center>
			<table border="1px" style="width: 100%;">
				<thead>
					<tr>

						<th>Roll No</th>
						<th>Name</th>
						<th>Course</th>

						<th>Room No</th>
						<th>Seat No</th>
						<th>Allocation</th>
						<th>Update</th>




					</tr>
				</thead>
				<tbody>

					<%
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
						String query = "select * from student order by Roll_no";
						Statement st = conn.createStatement();
						ResultSet rs = st.executeQuery(query);
						while (rs.next()) {
					%>

					<form action="StudentProfile.jsp" method="post">
						<tr>
							<td><%=rs.getString("Roll_no")%></td>
							<td><%=rs.getString("Name")%></td>
							<td><%=rs.getString("Course")%></td>
							<td><%=rs.getString("roomno")%></td>
							<td><%=rs.getString("seatno")%></td>
							<td>
								<%
								if (rs.getString("roomno").equals("")) {
								%> <a href=seat.jsp?rollno= <%=rs.getString("Roll_no")%>>Seat
									Allocation</a> <%
 }
 %>
							</td>
							<td><a href=seatupdate.jsp?rollno=
								<%=rs.getString("Roll_no")%>>Seat Update</a></td>
						</tr>
					</form>
				</tbody>
				<%
				}
				} catch (Exception e) {
				out.print(e);

				}
				String Roll_no = request.getParameter("Roll_no");
				String Name = request.getParameter("Name");
				String Gender = request.getParameter("Gender");
				String Course = request.getParameter("Course");
				String Branch = request.getParameter("Branch");
				String Password = request.getParameter("Password");

				if (request.getParameter("delete") != null) {
				String e = request.getParameter("Roll_no");
				try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
				Statement stm = con.createStatement();

				int i = stm.executeUpdate("delete from student where Roll_no='" + Roll_no + "'");
				if (i > 0) {
					out.print("Deleted");
				}
				} catch (Exception ex) {
				out.print(ex);
				}
				} else if (request.getParameter("update") != null) {
				String e = request.getParameter("Roll_no");
				try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
				Statement stm = con.createStatement();

				int i = stm.executeUpdate("update from student set Roll_no='" + Roll_no + "',name='" + Name + "',Course='" + Course
						+ "',Branch='" + Branch + "',Gender='" + Gender + "' WHERE  Roll_no='" + Roll_no + "'");
				if (i > 0) {
					out.print("Deleted");
				}
				} catch (Exception ex) {
				out.print(ex);
				}
				}
				%>
				<tbody>
			</table>
	</section>

</body>
</html>