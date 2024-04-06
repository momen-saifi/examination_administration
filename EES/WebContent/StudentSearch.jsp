<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Search</title>
</head>
<body>

	<%@page import="java.sql.*"%>
	<%@ include file="AdminMenu.html"%>

	<section>
		<p id="logo" target="_blank">Student Search</p>
		<center>
			<div class="content">

				<form action="StudentSearch.jsp" method="post">
					<input class="c" type="text" name="Roll_no" placeholder="Roll no">
					<input type="Submit" name="submit"
						style="padding: 10px; width: 25%; border-radius: 5px; border: 1px solid black; margin: 2%;">
				</form>
				<%
				if (request.getParameter("submit") != null) {

					String Roll_no = request.getParameter("Roll_no");
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
						String query = "select * from student where Roll_no='" + Roll_no + "'";
						Statement st = conn.createStatement();
						ResultSet rs = st.executeQuery(query);
						if (rs.next()) {
				%>

				<form action="StudentSearch.jsp" method="post">
					<input class="c" type="text" name="Roll_no" placeholder="Roll no"
						value="<%=rs.getString("Roll_no")%>"> <input class="c"
						type="text" name="Name" placeholder="Name"
						value="<%=rs.getString("Name")%>"> <input class="c"
						type="text" name="Course" placeholder="Course"
						value="<%=rs.getString("Course")%>"> <input class="c"
						type="text" name="Branch" placeholder="Branch"
						value="<%=rs.getString("Branch")%>"> <input class="c"
						type="text" name="Gender" placeholder="Gender"
						value="<%=rs.getString("Gender")%>"> <input class="c"
						type="text" name="Password" placeholder="Password"
						value="<%=rs.getString("Password")%>"> <input
						type="Submit" name="update" value="Update"
						style="float: right; padding: 10px; width: 25%; border-radius: 5px; border: 1px solid black; margin-top: 2%">
				</form>
				<form>
					<input class="c" type="hidden" name="Roll_no" placeholder="Roll_no"
						value="<%=rs.getString("Roll_no")%>"> <input type="submit"
						name="delete" value="Delete"
						style="float: left; padding: 10px; width: 25%; border-radius: 5px; border: 1px solid black; margin-top: 2%">
				</form>

				</form>
				<%
				} else {
				out.print("Not Found");
				}
				} catch (Exception ex) {
				out.print(ex);
				}
				}

				else if (request.getParameter("update") != null) {

				String Roll_no = request.getParameter("Roll_no");
				String Name = request.getParameter("Name");
				String Course = request.getParameter("Course");
				String Branch = request.getParameter("Branch");
				String Gender = request.getParameter("Gender");
				String Password = request.getParameter("Password");

				try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
				Statement stm = con.createStatement();

				int i = stm.executeUpdate("update student set Name='" + Name + "',Course='" + Course + "',Branch='" + Branch
						+ "',Gender='" + Gender + "',Password='" + Password + "' where Roll_no='" + Roll_no + "'");

				if (i > 0) {
				out.print("Updated");
				}
				} catch (Exception ex) {
				out.print(ex);
				}
				}

				else if (request.getParameter("delete") != null) {
				String Roll_no = request.getParameter("Roll_no");
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
				}
				%>
			</div>
		</center>
</body>
</html>