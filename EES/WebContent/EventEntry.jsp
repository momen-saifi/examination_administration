<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Management</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%@ include file="AdminMenu.html"%>

	<center>
		<div class="content">

			<form action="EventEntry.jsp" method="post">
				<input class="c" type="text" name="subject" placeholder="Subject"
					value=""> <input class="c" type="text" name="message"
					placeholder="Message" value=""> <input type="Submit"
					name="Insert" value="Insert"
					style="float: right; padding: 10px; width: 25%; border-radius: 5px; border: 1px solid black; margin-top: 2%">
			</form>
	</center>
	<%
	if (request.getParameter("Insert") != null) {

		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
			Statement st = conn.createStatement();
			int i = st.executeUpdate("insert into event(subject,message)values('" + subject + "','" + message + "')");

		} catch (Exception e) {
			out.print(e);
		}

	}
	%>
	</div>

</body>
</html>