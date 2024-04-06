<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<%@page import="java.sql.*" %>
<%@ include file="AdminMenu.html" %> 
>
<center>
<div class="content">

<form action="FacultyProfile.jsp" method="post">
<input class="c" type="text" name="empid" placeholder="EmpID">
<input type ="Submit" name="submit" style="padding:10px; width:25%; border-radius:5px; border:1px solid black; margin:2%;">
</form>
<%
if(request.getParameter("submit")!=null)
{
	
String e=request.getParameter("empid");
try {
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
String query = "select * from faculty where empid='"+e+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>

<form action="FacultyProfileShow.jsp" method="post">
<input  class="c" type="text" name="facultyid" placeholder="FacultyId" value="<%=rs.getString("Empid")%>">
<input  class="c" type="text" name="name" placeholder="Name" value="<%=rs.getString("Name")%>">
<input  class="c" type="text" name="emailid" placeholder="EmailId" value="<%=rs.getString("EmailId")%>">
<input  class="c" type="text" name="mobile" placeholder="Mobile" value="<%=rs.getString("Mobile")%>">
<input  class="c" type="text" name="qualification" placeholder="Qualification" value="<%=rs.getString("Qualification")%>">
<input  class="c" type="text" name="salary" placeholder="Salary" value="<%=rs.getString("Salary")%>">
<input  class="c" type="text" name="department" placeholder="Department" value="<%=rs.getString("Department")%>">

<input type ="Submit" name="update" value="Update" style="float:right; padding:10px; width:25%; border-radius:5px; border:1px solid black; margin-top:2%">
</form>
<form>
<input  class="c" type="hidden" name="empid" placeholder="Empid" value="<%=rs.getString("empid")%>">
<input type ="Submit" name="delete" value="Delete" style="float:left; padding:10px; width:25%; border-radius:5px; border:1px solid black; margin-top:2%">
</form>

</form>
<%
}
else
{
	out.print("Not Found");
}
}
catch(Exception ex){
	out.print(ex);
}
}

	else
if(request.getParameter("delete")!=null)
{
	String e=request.getParameter("empid");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","") ;
		Statement stm=con.createStatement();
		
		int i=stm.executeUpdate("delete from faculty where empid='"+e+"'");
		if(i>0)
		{
			out.print("Deleted");
		}
	}
	catch(Exception ex){
		out.print(ex);
	}
}
%>
</div>
</center>
</body>
</html>