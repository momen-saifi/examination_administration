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
<%@ include file="AdminMenu.html" %> 

<center>
<div class="content">

<form action="StudentInsert.jsp" method="post">
<input  class="c" type="text" name="Roll_no" placeholder="Roll no" value="">
<input  class="c" type="text" name="name" placeholder="Name" value="">
<input  class="c" type="text" name="Course" placeholder="Course" value="">
<input  class="c" type="text" name="Branch" placeholder="Branch" value="">
<label>Gender</label>
<input name="Gender" checked  type="radio" value="Male"> Male
<input name="Gender"  type="radio" value="Female"> Female
<input  class="c" type="Password" name="Password" placeholder="Password" value="">
<input type ="Submit" name="Insert" value="Insert" style="float:right; padding:10px; width:25%; border-radius:5px; border:1px solid black; margin-top:2%">
</form>
</center>

<%


if(request.getParameter("Insert")!=null){
	

                    String Roll_no=request.getParameter("Roll_no");
                    String name=request.getParameter("name");
                    String Course=request.getParameter("Course");
                    String Branch=request.getParameter("Branch");
                    String Gender=request.getParameter("Gender");
                    String Password=request.getParameter("Password");
                                        try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation","root","");
                                        Statement st = conn.createStatement();
                                        int i=st.executeUpdate("insert into student(Roll_no,Name,Course,Branch,Gender,Password,seatno,roomno,status)values('"+Roll_no+"','"+name+"','"+Course+"','"+Branch+"','"+Gender+"','"+Password+"','','','')");
          
                                        }
                                        catch(Exception e)
                                        {
                                        	out.print(e);
                                        	
                                        }
   
}                
                                        %>
</div>

</body>
</html>