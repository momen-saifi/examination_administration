<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
if(request.getParameter("update")!=null)
{
	String e=request.getParameter("facultyid");
String n=request.getParameter("name");
String em=request.getParameter("emailid");
String m=request.getParameter("mobile");
String q=request.getParameter("qualification");
String s=request.getParameter("salary");
String d=request.getParameter("department");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
	Statement st = conn.createStatement();
	String query = "update faculty set Name='"+n+"',EmailId='"+em+"',Salary='"+s+"',Mobile='"+m+"',Qualification='"+q+"',Department='"+d+"' where empid='"+e+"'";
	
	int i = st.executeUpdate(query);
	 response.sendRedirect("FacultyProfile.jsp");
}
catch(Exception ex){
	out.print(ex); 
}
}

%>
</body>
</html>