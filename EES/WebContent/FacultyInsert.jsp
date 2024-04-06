<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@page import="java.sql.*" %>
<%@ include file="AdminMenu.html" %> 
<center>
<div class="content">


<%
	

try {
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
String query = "select * from faculty";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>

<form action="FacultyInsert.jsp" method="post">
<input  class="c" type="text" name="facultyid" placeholder="FacultyId" value="">
<input  class="c" type="text" name="name" placeholder="Name" value="">
<input  class="c" type="text" name="emailid" placeholder="EmailId" value="">
<input  class="c" type="text" name="mobile" placeholder="Mobile" value="">
<input  class="c" type="text" name="qualification" placeholder="Qualification" value="">
<input  class="c" type="text" name="salary" placeholder="Salary" value="">
Selet Subjet : <select    name=subject>
<option>S001</option>
<option>S002</option>
<option>S003</option>
<option>S004</option>
<option>S005</option>
<option>S006</option>
</select>
<br>
<input type ="Submit" name="Insert" value=Insert" style="float:right; padding:10px; width:25%; border-radius:5px; border:1px solid black; margin-top:2%">
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


if(request.getParameter("Insert")!=null){
	

                    String FacultyId=request.getParameter("facultyid");
                    String name=request.getParameter("name");
                    String em=request.getParameter("emailid");
                    String m=request.getParameter("mobile");
                    String q=request.getParameter("qualification");
                    String s=request.getParameter("salary");
                    String d=request.getParameter("department");
                                        try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
                                        Statement st = conn.createStatement();
                                        int i=st.executeUpdate("insert into Faculty(empid,Name,EmailId,Mobile,Qualification,Salary,Department)values('"+FacultyId+"','"+name+"','"+em+"','"+m+"','"+q+"','"+s+"','"+d+"')");
          
                                        }
                                        catch(Exception e)
                                        {
                                        	out.print(e);
                                        	
                                        }
   
}                
                                        %>
</div>
</center>
</body>
</html>