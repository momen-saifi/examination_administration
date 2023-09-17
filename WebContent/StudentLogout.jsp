<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payroll</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
session.invalidate();
response.sendRedirect("index.jsp");

%>
</body>
</html>