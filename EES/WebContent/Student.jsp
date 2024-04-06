<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile</title>
</head>
<body>

	<%@page import="java.sql.*"%>
	<%@ include file="StudentMenu.jsp"%>


	<section>
		<p id="logo" target="_blank">Student Profile</p>
		<center>
			<div class="content">


				<%
				if (session.getAttribute("rollno") == null) {
					response.sendRedirect("StudentLogin.jsp");

				}
				String Roll_no = (String) session.getAttribute("rollno");
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
					String query = "select * from student where Roll_no='" + Roll_no + "'";
					Statement st = conn.createStatement();
					ResultSet rs = st.executeQuery(query);
					rs.next();
				%>

				<form action="Student.jsp" method="post">
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


				</form>
				<%
				} catch (Exception ex) {
				out.print(ex);
				}

				if (request.getParameter("update") != null) {

				Roll_no = request.getParameter("Roll_no");
				String Name = request.getParameter("Name");
				String Course = request.getParameter("Course");
				String Branch = request.getParameter("Branch");
				String Gender = request.getParameter("Gender");
				String Password = request.getParameter("Password");

				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
					Statement stm = con.createStatement();

					int i = stm.executeUpdate("update student set Password='" + Password + "' where Roll_no='" + Roll_no + "'");

					if (i > 0) {
						out.print("Updated");
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