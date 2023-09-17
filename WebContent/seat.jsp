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
  background: pink;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: white;
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
<%@include file="AdminMenu.html" %>
<center>
<%


String rollno=request.getParameter("rollno");
//if(rollno=="")
//{
//response.sendRedirect("StudentLogin.jsp");	
//}
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation","root","");
Statement st = conn.createStatement();

ResultSet rs;

rs=st.executeQuery("select * from student where roll_no='"+rollno+"'");
if(!rs.next())
out.print("<b>Roll No not Found....!");
else
{
%>
<form action="seatpro.jsp" style="border:1px solid #ccc; width:70%;" method="post">
  <div class="container">
    <h1>Examination Marks Upload</h1>
    <hr>
     <table width=60%>
    <tr>
    <td><label for="roll_no"><b>Roll No:</b></label></td>
<td><input type=hidden value=<%=rollno %> name=roll_no>    <%=rollno %></td>
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
  
    <br><br><label ><b>Room & Seat No</b></label>

                                                     
<table border="1px" style="width: 100%;">
                                            <thead>
                                                <tr>
                                                    
                                                    <th>Room No
                                                    </th>
                                                    <th>Seat No
                                                   
                                                    </th>
                                                   
                                                                                                   </tr>
                                            </thead>
                                                                          
<tr>
<td> <input type=text name=roomno></td>
<td> <input type=text name=seatno></td>

</table>
          <div class="clearfix">
      <button  type="submit" name="submit" class="signupbtn"><b>Submit</button>
</div>
</form>
            
    </div>
  </div>

</form>
<%
} %>
</center>
</body>
</html>