
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payroll</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%

String u=request.getParameter("Username");
String pass=request.getParameter("Password");


try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation","root","");
  Statement st=Con.createStatement();
  ResultSet rs=st.executeQuery("select * from admin_login where UserId='"+u+"' and Password='"+pass+"'");
  if(rs.next())
  {		
	  session.setAttribute("Aid",u);
	  response.sendRedirect("adminhome.jsp");
}
  else
  {
	  
	  response.sendRedirect("AdminLogin.jsp");
  }
  
} catch(Exception e) {
    out.println(e);
}



%>
</body>
</html>