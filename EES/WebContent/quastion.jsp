<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Question Add</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%@ include file="StudentMenu.jsp"%>

	<section>


		<%
		int t = Integer.parseInt(request.getParameter("tr"));
		int count = Integer.parseInt(request.getParameter("co"));
		;
		int cno = Integer.parseInt(request.getParameter("n"));
		String q = request.getParameter("q1");
		String[] tans = request.getParameterValues("a");
		String sp1 = request.getParameter("s");
		String qtype = request.getParameter("q");
		%>

		<form method=post
			action="g_qus.jsp?id=<%=cno%>&type=<%=qtype%>&c=<%=count%>&r=<%=t%>&sp=<%=sp1%>">
			<h2>Attend the given question</h2>
			<br>
			<br>
			<table border=1 width=50%>
				<tr>
					<td width=25% bgcolor=GREEN>Qus:<%
					out.print(count);
					%>.<%
					out.print(q);
					%>
					</td>
				</tr>
				<tr>
					<td width=25% bgcolor=LIGHTBLUE><Input name="ans" type="radio"
						value="1" checked><%=tans[0]%></td>
				</tr>
				<tr>
					<td width=25% bgcolor=LIGHTBLUE><Input name="ans" type="radio"
						value="2"><%=tans[1]%></td>
				</tr>
				<tr>
					<td width=25% bgcolor=LIGHTBLUE><Input name="ans" type="radio"
						value="3"><%=tans[2]%></td>
				</tr>
				<tr>
					<td width=25% bgcolor=LIGHTBLUE><Input name="ans" type="radio"
						value="4"><%=tans[3]%></td>
				</tr>

			</table>


			<br> <Input name="next" type="submit" value="Next">
			</center>
		</form>


	</section>

</body>
</html>