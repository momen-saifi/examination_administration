<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Manage Question</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%@ include file="AdminMenu.html"%>
	<center>
		<div class="content">

			<center>
				<H2>
					<I>INPUT DETAILS OF NEW QUESTION</I>
				</H2>
			</center>
			<br>
			<table border=0 align=center>
				<tr>
					<td>
						<FORM NAME="create" method=post action="question.jsp">
							<tr>
								<TD align=right><SPAN><P>
											<B>Question Type:</B></SPAN></TD>
								<td><SELECT NAME="qtype">
										<OPTION VALUE="math" SELECTED>Maths
										<OPTION VALUE="c">C
										<OPTION VALUE="cpp">C++
										<OPTION VALUE="java">JAVA
										<OPTION VALUE="oracle">Oracle
								</SELECT></td>
							</tr>
							<tr>
								<TD align=right><SPAN><B>Question:</B></SPAN></td>
								<td><textarea rows="7" Name="qus"></TEXTAREA></td>
							</tr>
							<tr>
								<TD align=right><SPAN><B>First option:</B></SPAN></TD>
								<td><INPUT Name="op1" Type="text" MaxLength="100"></td>
							</tr>
							<tr>
								<TD align=right><SPAN><B>Second option:</B></SPAN></TD>
								<td><INPUT Name="op2" Type="TEXT" MaxLength="100"></td>
							</tr>
							<tr>
								<TD align=right><SPAN><B>Third option:</B></SPAN></TD>
								<td><INPUT Type="TEXT" Name="op3" MaxLength="100"></td>
							</tr>
							<tr>
								<TD align=right><SPAN><B>Forth option:</B></SPAN></TD>
								<td><INPUT Type="TEXT" Name="op4" MaxLength="100"></td>
							</tr>
							<tr>
								<TD align=right><SPAN><B>Answer:</B></SPAN></TD>
								<td><SELECT NAME="ans">
										<OPTION VALUE="1" SELECTED>1
										<OPTION VALUE="2">2
										<OPTION VALUE="3">3
										<OPTION VALUE="4">4
								</SELECT></td>
							</tr>

							<br>
							<br>
							<tr>
								<TD align=right>
							<tr>
								<td>
								<td><span> <INPUT Type="submit" name="sub"
										Value="Submit"> <INPUT Type="RESET" Val/HTML>
										<%
										if (request.getParameter("sub") != null) {
											try {
												String txttype = request.getParameter("qtype");
												String txtqus = request.getParameter("qus");
												String txtop1 = request.getParameter("op1");
												String txtop2 = request.getParameter("op2");
												String txtop3 = request.getParameter("op3");
												String txtop4 = request.getParameter("op4");
												String txtans = request.getParameter("ans");

												if (txttype.equals("") | txtqus.equals("") | txtop1.equals("") | txtop2.equals("") | txtop3.equals("")
												| txtop4.equals("") | txtans.equals("")) {
											response.sendRedirect("error_e_qus.jsp?msg=You forget any field(s)");
												}

												Connection conn;
												Statement stmt;
												ResultSet rs;

												Class.forName("com.mysql.jdbc.Driver");
												conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation", "root", "");
												stmt = conn.createStatement();

												rs = stmt.executeQuery("select * from q_details");
												int num = 0;
												while (rs.next()) {
											num = rs.getInt("q_id");
												}
												num++;
												stmt.executeUpdate("insert into q_details values(" + num + ",'" + txtqus + "','" + txttype + "','" + txtop1
												+ "','" + txtop2 + "','" + txtop3 + "','" + txtop4 + "','" + txtans + "')");
												//conn.commit();

												stmt.close();
												conn.close();
												response.sendRedirect("question.jsp");
											} catch (Exception e) {
												out.println("Error occurred " + e);
											}
										}
										%>
										</div>
										</center>
</body>
</html>