<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@ include file="StudentMenu.jsp" %> 

<section>
<%
String sp=session.getAttribute("rollno").toString();
String fn="";
String sn="";
		Connection conn;
		Statement stmt;
		ResultSet rs;
		
		try
            	{
              	    Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation","root","");
 		stmt=conn.createStatement();
		rs=stmt.executeQuery("select * from student where s_id='"+sp+"'");
		while(rs.next())
		{
		fn=rs.getString("f_name");
		sn=rs.getString("l_name");
		}

%>


<center>
</br><h3>Please select the Subject</h3>

<form method=post action="s_repo.jsp?sid=<%=sp%>">
<SELECT NAME="qtype">
				<OPTION VALUE="math" SELECTED>Maths
				<OPTION VALUE="c">C
				<OPTION VALUE="cpp"> C++
				<OPTION VALUE="java"> JAVA
				<OPTION VALUE="oracle"> Oracle
			</SELECT><br><br>
<input type=submit value="  SHOW  ">
</form>
<br><br>
<caption align=top ><b>Your Analysis Report</b></caption><br><br>
<center><table border=5 width=75%>
<tr><th bgcolor=lightyello>TEST NAME</th><th bgcolor=lightyello>Got Marks</th><th bgcolor=lightyello>Total Marks</th><th bgcolor=lightyello>Date of Test</th><th bgcolor=lightyello>Time of Test</th></tr>
<%
String t=request.getParameter("qtype");
if(!(t.equals("")))
{
rs=stmt.executeQuery("select * from result where s_id='"+sp+"' and tqus='"+t+"'");
while(rs.next())
{
%>
<tr><td><%=rs.getString("tqus")%></td><td><%=rs.getString("t_ans")%></td><td><%=rs.getString("no_o_att_q")%></td><td><%=rs.getString("d_o_t")%></td><td><%=rs.getString("t_o_t")%></td></tr>
<%
}
}
%>
</center>

<%
stmt.close();
conn.close();
}
catch(Exception e)
{
//out.println("Error occurred "+e);
}
%>
</section>

</body>
</html>