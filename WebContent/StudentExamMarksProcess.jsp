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

String roll_no=request.getParameter("roll_no");
String m1=request.getParameter("m1");
String m2=request.getParameter("m2");
String m3=request.getParameter("m3");
String m4=request.getParameter("m4");
String m5=request.getParameter("m5");




try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation","root","");
  Statement st=Con.createStatement();
  int i=st.executeUpdate("insert into marks values('"+roll_no+"',"+Integer.parseInt(m1)+","+Integer.parseInt(m2)+","+Integer.parseInt(m3)+","+Integer.parseInt(m4)+","+Integer.parseInt(m5)+")");
   response.sendRedirect("UploadMark.jsp");
  
  
} catch(Exception e) {
    out.println(e);
}


%>
</body>
</html>