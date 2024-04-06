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
<%String sp=session.getAttribute("rollno").toString();%>
<%String a=request.getParameter("c");%>
<%String t=request.getParameter("type");%>
<%
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
		rs=stmt.executeQuery("select * from student where roll_no='"+sp+"'");
		while(rs.next())
		{
		//fn=rs.getString("f_name");
		sn=rs.getString("name");
		}
		String sql="insert into result values('"+sp+"','40','"+t+"','"+a+"','0','0')";
		int ii=stmt.executeUpdate(sql);
		//conn.commit();

stmt.close();
conn.close();
}
catch(Exception e)
{
out.println("Error occurred "+e);
}
%>

<table border=0 align=center width=100%>
<tr>
<td bgColor=pink>
<h2>Score Card</h2>
</td>
<td bgColor=pink align=center>
<h2>Congratulation To Attend The Exam</h2>
</td>

</tr>
</table>
<br><center><h3><%out.print(sn);%></h3></center>
<br></br><br>
<center><br>

<caption align=top ><b>You have scored</b></caption><br><br>
<center><table border=5 width=50%>
<tr><th bgcolor=lightyello>TEST NAME</th><th>Got Marks</th><th>Total Marks</th></tr>

<tr><th bgcolor=lightyello><%=t%></th><th><%=a%></th><th>10</th></tr>


</section>

</body>
</html>