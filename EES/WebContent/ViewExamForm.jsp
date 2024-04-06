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
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
Statement st = conn.createStatement();
ResultSet rs=st.executeQuery("select * from examform,student where examform.roll_no='"+rollno+"' and examform.roll_no=student.roll_no");
rs.next();
%>
<form action="ExamFormPayment.jsp" style="border:1px solid #ccc; width:70%;" method="post">
  <div class="container">
    <h1>Examination Form 2019</h1>
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
                                                <th>S.No
                                                    </th>
                                                    
                                                    <th>Subject Code
                                                    </th>
                                                    <th>Subject Name
                                                   
                                                    </th>
                                                    <th>Evaluation
                                                    </th>
                                                   
                                                </tr>
                                            </thead>
                                                                          
<tr><td>1</td>
<td><%=rs.getString("Subject_code1") %></td>
<td><%=rs.getString("Subject_name1") %></td>
<td><%=rs.getString("Evaluation1") %></td></tr>
<tr><td>2</td>
<td><%=rs.getString("Subject_code2") %></td>
<td><%=rs.getString("Subject_name2") %></td>
<td><%=rs.getString("Evaluation2") %></td></tr>
<tr><td>3</td>
<td><%=rs.getString("Subject_code3") %></td>
<td><%=rs.getString("Subject_name3") %></td>
<td><%=rs.getString("Evaluation3") %></td></tr>
<tr><td>4</td>
<td><%=rs.getString("Subject_code4") %></td>
<td><%=rs.getString("Subject_name4") %></td>
<td><%=rs.getString("Evaluation4") %></td></tr>
<tr><td>5</td>
<td><%=rs.getString("Subject_code5") %></td>
<td><%=rs.getString("Subject_name5") %></td>
<td><%=rs.getString("Evaluation5") %></td></tr>
<tr><td>6</td>
<td><%=rs.getString("Subject_code6") %></td>
<td><%=rs.getString("Subject_name6") %></td>
<td><%=rs.getString("Evaluation6") %></td></tr>



<tr><td></td>
<td></td>
<td>Total Amount</td>
<td><%=rs.getString("amount") %>
</td></tr>

</table>
<br>
<br>
<table width=30% border=1>
<caption>Enter Card Details</caption>
<tr><td><%=rs.getString("cardno") %></td></tr>
<tr><td><%=rs.getString("expmonth") %></td></tr>
<tr><td><%=rs.getString("expyear") %></td></tr>
<tr><td><%=rs.getString("cvvno") %></td></tr>

</table>
       <div class="clearfix">
     
</div>
</form>
            
    </div>
  </div>

</form>
</center>
</body>
</html>