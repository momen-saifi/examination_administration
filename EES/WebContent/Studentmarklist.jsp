<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Marksheet</title>
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
						<th>Subject 1</th>
						<th>Subject 2</th>

						<th>Subject 3</th>
						<th>Subject 4</th>
						<th>Subject 5</th>
						<th>Delete</th>




					</tr>
				</thead>
				<tbody>

					<%
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
						String query = "select * from marks";
						Statement st = conn.createStatement();
						ResultSet rs = st.executeQuery(query);
						while (rs.next()) {
					%>

					<form action="StudentProfile.jsp" method="post">
						<tr>
							<td><%=rs.getString("rollno")%></td>
							<td><%=rs.getString("m1")%></td>
							<td><%=rs.getString("m2")%></td>
							<td><%=rs.getString("m3")%></td>
							<td><%=rs.getString("m4")%></td>
							<td><%=rs.getString("m5")%></td>
							<td><a href=marksdetelepro.jsp?rollno=
								<%=rs.getString("rollno")%>>Delete</a></td>

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