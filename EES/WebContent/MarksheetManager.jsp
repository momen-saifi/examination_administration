<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marksheet</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
	background-color: #fde428;
	color: black;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 50%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

/* Float cancel and signup buttons and add an equal width */
.signupbtn {
	width: 50%;
}

/* Add padding to container elements */
.container {
	padding: 16px;
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

tr {
	margin: 0px;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
	.signupbtn {
		width: 50%;
	}
}
</style>
<body>
	<%@page import="java.sql.*"%>
	<%@include file="AdminMenu.html"%>

	<form action="Result2.jsp" style="border: 1px solid #ccc; width: 100%;"
		method="post">
		<div class="container">
			<h1>Marksheet 2019</h1>
			<hr>

			<label for="roll_no"><b>Roll No</b></label> <input type="text"
				placeholder="Roll no" name="Roll_no" value="">
			<center>
				<button type="submit" name="roll_submit">Search</button>
			</center>
			<br>
			<br>
	</form>
	<%
	if (request.getParameter("roll_submit") != null) {
		String Roll_no = request.getParameter("Roll_no");

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
		String query = "select * from marks where Roll_no='" + Roll_no + "'";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query);
		if (rs.next()) {
	%>


	<label for="roll_no"><b>Roll NO</b></label>
	<input type="text" name="Roll_no" value="<%=rs.getString("Roll_no")%>"
		required>
	<label for="name"><b>Name</b></label>
	<input type="text" name="Name" value="<%=rs.getString("Name")%>"
		required>

	<label for="course"><b>Course</b></label>
	<input type="text" value="<%=rs.getString("Course")%>" name="Course"
		required>

	<label for="branch"><b>Branch</b></label>
	<input type="text" value="<%=rs.getString("Branch")%>" name="Branch"
		required>

	<br>
	<br>
	<label><b>subject, subject code and marks</b></label>


	<table border="1px" style="width: 100%;">
		<thead>
			<tr>
				<th>S.No</th>

				<th>Subject Code</th>
				<th>Subject Name</th>
				<th>Marks Obtaind</th>
				<th>No. of Evaluation</th>
				<th>Evaluation 1</th>
				<th>Evaluation 2</th>
				<th>Evaluation 3</th>


			</tr>
		</thead>


		<tr>
			<td>1</td>
			<td><input style="border-style: none;" type="text"
				name="Subject_code1" value="<%=rs.getString("Subject_code1")%>" /></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_name1" value="<%=rs.getString("Subject_name1")%>"></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_marks1" value="<%=rs.getString("Subject_marks1")%>"></td>
			<td><%=rs.getString("Evaluation1")%></td>
			<td><input style="border-style: none;" type="text" name="ev1"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev2"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev3"
				value=""></td>
		</tr>

		<tr>
			<td>2</td>
			<td><input style="border-style: none;" type="text"
				name="Subject_code2" value="<%=rs.getString("Subject_code2")%>" /></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_name2" value="<%=rs.getString("Subject_name2")%>"></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_marks2" value="<%=rs.getString("Subject_marks2")%>"></td>
			<td><%=rs.getString("Evaluation2")%></td>
			<td><input style="border-style: none;" type="text" name="ev1"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev2"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev3"
				value=""></td>
		</tr>

		<tr>
			<td>3</td>
			<td><input style="border-style: none;" type="text"
				name="Subject_code3" value="<%=rs.getString("Subject_code3")%>" /></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_name3" value="<%=rs.getString("Subject_name3")%>"></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_marks3" value="<%=rs.getString("Subject_marks3")%>"></td>
			<td><%=rs.getString("Evaluation3")%></td>
			<td><input style="border-style: none;" type="text" name="ev1"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev2"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev3"
				value=""></td>
		</tr>

		<tr>
			<td>4</td>
			<td><input style="border-style: none;" type="text"
				name="Subject_code4" value="<%=rs.getString("Subject_code4")%>" /></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_name4" value="<%=rs.getString("Subject_name4")%>"></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_marks4" value="<%=rs.getString("Subject_marks4")%>"></td>
			<td><%=rs.getString("Evaluation4")%></td>
			<td><input style="border-style: none;" type="text" name="ev1"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev2"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev3"
				value=""></td>
		</tr>

		<tr>
			<td>5</td>
			<td><input style="border-style: none;" type="text"
				name="Subject_code5" value="<%=rs.getString("Subject_code5")%>" /></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_name5" value="<%=rs.getString("Subject_name5")%>"></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_marks5" value="<%=rs.getString("Subject_marks5")%>"></td>
			<td><%=rs.getString("Evaluation5")%></td>
			<td><input style="border-style: none;" type="text" name="ev1"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev2"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev3"
				value=""></td>
		</tr>

		<tr>
			<td>6</td>
			<td><input style="border-style: none;" type="text"
				name="Subject_code6" value="<%=rs.getString("Subject_code6")%>" /></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_name6" value="<%=rs.getString("Subject_name6")%>"></td>
			<td><input style="border-style: none;" type="text"
				name="Subject_marks6" value="<%=rs.getString("Subject_marks6")%>"></td>
			<td><%=rs.getString("Evaluation6")%></td>
			<td><input style="border-style: none;" type="text" name="ev1"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev2"
				value=""></td>
			<td><input style="border-style: none;" type="text" name="ev3"
				value=""></td>
		</tr>
	</table>
	<center>
		<button type="submit" name="roll_submit">Update</button>
		<br>
		<br>
		<button type="submit" name="roll_submit">Upload</button>
		<br>
		<br>
	</center>
	<%
	}
	}
	if (request.getParameter("upload") != null) {

	String Roll_no = request.getParameter("Roll_no");

	String Subject_marks1 = request.getParameter("Subject_marks1");
	String Subject_marks2 = request.getParameter("Subject_marks2");
	String Subject_marks3 = request.getParameter("Subject_marks3");
	String Subject_marks4 = request.getParameter("Subject_marks4");
	String Subject_marks5 = request.getParameter("Subject_marks5");
	String Subject_marks6 = request.getParameter("Subject_marks6");

	try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
	Statement st = conn.createStatement();
	int i = st.executeUpdate(
			"insert into examForm (Subject_marks1,Subject_marks2,Subject_marks3,Subject_marks4,Subject_marks5,Subject_marks6)values('"
			+ Subject_marks1 + "','" + Subject_marks2 + "','" + Subject_marks3 + "','" + Subject_marks4 + "','"
			+ Subject_marks5 + "','" + Subject_marks6 + "') where Roll_no='" + Roll_no + "'");

	} catch (Exception e) {
	out.print(e);

	}

	}
	%>

	</div>
	</div>

	</form>

</body>
</html>