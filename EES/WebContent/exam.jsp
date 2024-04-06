<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%@ include file="StudentMenu.jsp"%>

	<section>
		<p id="logo" target="_blank">Welcome in Online Exam</p>
		<center>


			<table border=0 width=30% align=center>
				<tr>

					<TD align=center>
						<hr> <A href="g_qus.jsp?type=C&id=0&sp=<%="txtlogin"%>"><img
							src="Aqmal/images/c.gif" border=0></a><br>
					<br> <A href="g_qus.jsp?type=C++&id=0&sp=<%="txtlogin"%>"><img
							src="Aqmal/images/cpp.gif" border=0></a><br>
					<br> <A href="g_qus.jsp?type=Java&id=0&sp=<%="txtlogin"%>"><img
							src="Aqmal/images/java.gif" border=0></a><br>
					<br> <A
						href="g_qus.jsp?type=Data structure&id=0&sp=<%="txtlogin"%>"><img
							src="Aqmal/images/ds.gif" border=0></a><br>
					<br>
				</tr>
				</td>
			</table>

			</form>

		</center>
	</section>

</body>
</html>