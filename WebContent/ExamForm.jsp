<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
Statement st = conn.createStatement();
ResultSet rs=st.executeQuery("select * from student where roll_no='"+rollno+"'");
rs.next();
%>
<form action="ExamFormPayment.jsp" style="border:1px solid #ccc; width:70%;" method="post">
  <div class="container">
    <h1>Examination Form 2019</h1>
    <hr>
    <label for="roll_no"><b>Roll No</b></label>
    <input type="text" placeholder="Roll no" name="Roll_no" value="<% out.print(rs.getString(1)); %>" required>
    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="Name" value="<% out.print(rs.getString(2)); %>" required>

    <label for="course"><b>Course</b></label>
    <input type="text" placeholder="Course Name" name="Course" value="<% out.print(rs.getString(3)); %>" required>

    <label for="branch"><b>Branch</b></label>
    <input type="text" placeholder="Branch" name="Branch" value="<% out.print(rs.getString(4)); %>" required>

    <br><br><label ><b>Fill the subject and subject code</b></label>

                                                     
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
<td><select  style="border-style:none;" name=Subject_code1>
<option>S001</option>
<option>S002</option>
<option>S003</option>
<option>S004</option>
<option>S005</option>
<option>S006</option>
</select>

</td>
<td>



<input style="border-style:none;" type="text" name="Subject_name1" value=""></td>
<td>
<select name="Evaluation1">
		  <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
            <option value="4">4</option>
              <option value="5">5</option>
        </select></td></tr>
<tr><td>2</td>
<td>
<select  style="border-style:none;" name=Subject_code2>
<option>S001</option>
<option>S002</option>
<option>S003</option>
<option>S004</option>
<option>S005</option>
<option>S006</option>
</select>

</td>
<td><input style="border-style:none;" type="text" name="Subject_name2" value=""></td>
<td><select name="Evaluation2">
		  <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
            <option value="4">4</option>
              <option value="5">5</option>
        </select></td></tr>
<tr><td>3</td>
<td>
<select  style="border-style:none;" name=Subject_code3>
<option>S001</option>
<option>S002</option>
<option>S003</option>
<option>S004</option>
<option>S005</option>
<option>S006</option>
</select>

</td>
<td><input style="border-style:none;" type="text" name="Subject_name3" value=""></td>
<td><select name="Evaluation3">
		  <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
            <option value="4">4</option>
              <option value="5">5</option>
        </select></td></tr>
<tr><td>4</td>
<td>
<select  style="border-style:none;" name=Subject_code4>
<option>S001</option>
<option>S002</option>
<option>S003</option>
<option>S004</option>
<option>S005</option>
<option>S006</option>
</select>

</td>
<td><input style="border-style:none;" type="text" name="Subject_name4" value=""></td>
<td><select name="Evaluation4">
		  <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
            <option value="4">4</option>
              <option value="5">5</option>
        </select></td></tr>
<tr><td>5</td>
<td>
<select  style="border-style:none;" name=Subject_code5>
<option>S001</option>
<option>S002</option>
<option>S003</option>
<option>S004</option>
<option>S005</option>
<option>S006</option>
</select>

</td>
<td><input style="border-style:none;" type="text" name="Subject_name5" value=""></td>
<td><select name="Evaluation5">
		  <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
            <option value="4">4</option>
              <option value="5">5</option>
        </select></td></tr>
<tr><td>6</td>
<td>
<select  style="border-style:none;" name=Subject_code6>
<option>S001</option>
<option>S002</option>
<option>S003</option>
<option>S004</option>
<option>S005</option>
<option>S006</option>
</select>

</td>
<td><input style="border-style:none;" type="text" name="Subject_name6" value=""></td>
<td><select name="Evaluation6">
		  <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
            <option value="4">4</option>
              <option value="5">5</option>
        </select></td></tr>
</table>
       <div class="clearfix">
      <button  type="submit" name="submit" class="signupbtn"><b>Submit</button>
</div>
</form>
  
<%

if(request.getParameter("submit")!=null){
	
                    String Roll_no=request.getParameter("Roll_no");
                    String Name=request.getParameter("Name");
                    String Course=request.getParameter("Course");
                    String Branch=request.getParameter("Branch");
                    String Gender=request.getParameter("Gender");
                    
                    String Subject_code1=request.getParameter("Subject_code1");
                    String Subject_code2=request.getParameter("Subject_code2");
                    String Subject_code3=request.getParameter("Subject_code3");
                    String Subject_code4=request.getParameter("Subject_code4");
                    String Subject_code5=request.getParameter("Subject_code5");
                    String Subject_code6=request.getParameter("Subject_code6");
                    
                    String Subject_name1=request.getParameter("Subject_name1");
                    String Subject_name2=request.getParameter("Subject_name2");
                    String Subject_name3=request.getParameter("Subject_name3");
                    String Subject_name4=request.getParameter("Subject_name4");
                    String Subject_name5=request.getParameter("Subject_name5");
                    String Subject_name6=request.getParameter("Subject_name6");
                    
                    String Evaluation1=request.getParameter("Evaluation1");
                    String Evaluation2=request.getParameter("Evaluation2");
                    String Evaluation3=request.getParameter("Evaluation3");
                    String Evaluation4=request.getParameter("Evaluation4");
                    String Evaluation5=request.getParameter("Evaluation5");
                    String Evaluation6=request.getParameter("Evaluation6");

                                        try {
                                     //   Class.forName("com.mysql.jdbc.Driver");
                                       // Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
                                       st = conn.createStatement();
                                        int i=st.executeUpdate("insert into examForm(Roll_no,Name,Course,Branch,Gender,Subject_code1,Subject_code2,Subject_code3,Subject_code4,Subject_code5,Subject_code6,Subject_name1,Subject_name2,Subject_name3,Subject_name4,Subject_name5,Subject_name6,Evaluation1,Evaluation2,Evaluation3,Evaluation4,Evaluation5,Evaluation6)values('"+Roll_no+"','"+Name+"','"+Course+"','"+Branch+"','"+Gender+"','"+Subject_code1+"','"+Subject_code2+"','"+Subject_code3+"','"+Subject_code4+"','"+Subject_code5+"','"+Subject_code6+"','"+Subject_name1+"','"+Subject_name2+"','"+Subject_name3+"','"+Subject_name4+"','"+Subject_name5+"','"+Subject_name6+"','"+Evaluation1+"','"+Evaluation2+"','"+Evaluation3+"','"+Evaluation4+"','"+Evaluation5+"','"+Evaluation6+"')");
       
                                        }
                                        catch(Exception e)
                                        {
                                        	out.print(e);	
                                        }
}                
                                        %>
          
    </div>
  </div>

</form>
</center>
</body>
</html>