<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color:#fde428;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}


/* Float cancel and signup buttons and add an equal width */
 .signupbtn {
  
  width: 50%;
}

/* Add padding to container elements */
.container {

  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
tr{
margin:0px;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .signupbtn {
     width: 50%;
  }
}
</style>
<body>
<%@page import="java.sql.*" %>
<%@include file="StudentMenu.jsp" %>
<center>
<%
if(session.getAttribute("rollno")==null)
	{
		response.sendRedirect("StudentLogin.jsp");
		
	}
%>
<%


String rollno=(String)session.getAttribute("rollno");
//if(rollno=="")
//{
//response.sendRedirect("StudentLogin.jsp");	
//}

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation","root","");
Statement st = conn.createStatement();
ResultSet rs;
rs=st.executeQuery("select * from marks where rollno='"+rollno+"'");
if(!rs.next())
{
	out.print("<b>Roll No not found....!");
}
else
{
 rs=st.executeQuery("select * from student,marks where student.roll_no='"+rollno+"' and student.roll_no=marks.rollno");
rs.next();
}
%>
<form action="ExamFormPayment.jsp" style="border:1px solid #ccc; width:70%;" method="post">
  <div class="container">
    <h1>Examination Result 2019</h1>
    <hr>
     <table width=60%>
    <tr>
    <td><label for="roll_no"><b>Roll No:</b></label></td>
<td>    <%=rollno %></td>
    <td><label for="name"><b>Name:</b></label></td><td> <%=rs.getString("name") %></td></tr>
    <tr>
    <td><label for="roll_no"><b> Course:</b></label></td>
<td>    <%=rs.getString("course") %></td>
    <td><label for="name"><b>Gender:</b></label></td><td> <%=rs.getString("gender") %></td></tr>
    <tr>
    <td><label for="roll_no"><b> Branch:</b></label></td>
<td>    <%=rs.getString("branch") %></td>
    <td><label for="name"><b></b></label></td><td> </td></tr>
    </table>
    <br><br><label ><b>Subject and subject code</b></label>
                                                     
<table border="1px" style="width: 100%;">
                                            <thead>
                                                <tr>
                                                    <th><% if(rs.getString("Course").equals("MCA")) out.print("Data Stucture");
                                                    else if(rs.getString("Course").equals("BCA")) out.print("C++");
                                                    else if(rs.getString("Course").equals("B.Tech")) out.print("Python");
                                                    else if(rs.getString("Course").equals("M.Tech")) out.print("Math");
                                                    %>
                                                    </th><td><%=rs.getString("m1") %></td>
                                                    <th><% if(rs.getString("Course").equals("MCA")) out.print("PHP");
                                                    else if(rs.getString("Course").equals("BCA")) out.print("JAVA");
                                                    else if(rs.getString("Course").equals("B.Tech")) out.print("C++");
                                                    else if(rs.getString("Course").equals("M.Tech")) out.print("C Programming");
                                                    %>
                                                    </th><td><%=rs.getString("m2") %></td></tr>
                                                     <tr><th><% if(rs.getString("Course").equals("M.Tech")) out.print("Data Stucture");
                                                    else if(rs.getString("Course").equals("B.Tech")) out.print("Android");
                                                    else if(rs.getString("Course").equals("BCA")) out.print("Python");
                                                    else if(rs.getString("Course").equals("MCA")) out.print("Math");
                                                    %>
                                                    </th><td><%=rs.getString("m3") %></td>
                                                     <th><% if(rs.getString("Course").equals("B.Tech")) out.print("Data Stucture");
                                                    else if(rs.getString("Course").equals("M.Tech")) out.print("Android");
                                                    else if(rs.getString("Course").equals("MCA")) out.print("Python");
                                                    else if(rs.getString("Course").equals("BCA")) out.print("Math");
                                                    %>
                                                    </th><td><%=rs.getString("m4") %></td></tr>
                                                     <tr><th><% if(rs.getString("Course").equals("M.Tech")) out.print("DAA");
                                                    else if(rs.getString("Course").equals("B.Tech")) out.print("OS");
                                                    else if(rs.getString("Course").equals("BCA")) out.print("Networking");
                                                    else if(rs.getString("Course").equals("MCA")) out.print("DBMS");
                                                    %>
                                                    </th><td><%=rs.getString("m5") %></td>
                                                                                                   </tr>
                                                                                                   <tr>
                                                    <th>Total
                                                    </th><td><%=Integer.parseInt(rs.getString("m1"))+Integer.parseInt(rs.getString("m2"))+Integer.parseInt(rs.getString("m3"))+Integer.parseInt(rs.getString("m4"))+Integer.parseInt(rs.getString("m5")) %></td>
                                                    <th>Percentage
                                                    </th><td><% int per=(Integer.parseInt(rs.getString("m1"))+Integer.parseInt(rs.getString("m2"))+Integer.parseInt(rs.getString("m3"))+Integer.parseInt(rs.getString("m4"))+Integer.parseInt(rs.getString("m5")))/5;
                                                    out.print(per+" %");
                                                    %></td></tr>
                                                     <tr><th>Division
                                                    </th><td><% if(per>=60 && per<=100)
                                                    	out.print("First Division");
                                                    else
                                                    	if(per>=50)
                                                        	out.print("Second Division");
                                                    	else
                                                    		if(per>=40)
                                                            	out.print("Third Division");
                                                    		else
                                                    			
                                                                	out.print("Fail");
                                                    	%></td>
                                                     
                                                                                                   </tr>
                                            </thead>
                                                                          
<tr>




</table>
</form>
            
    </div>
  </div>

</form>
</center>
</body>
</html>