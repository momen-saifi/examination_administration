<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}


/* Float cancel and signup buttons and add an equal width */
 .signupbtn {
  float: left;
  width: 100%;
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

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
<body>
<%@page import="java.sql.*" %>
<center>
<form action="Signup.jsp" style="border:1px solid #ccc; width:50%;" method="post">
  <div class="container">
    <h1>Sign Up</h1>
    <hr>
<%
try{
	String Roll_no = request.getParameter("Roll_no");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
    String query = "SELECT * FROM student WHERE Roll_no=(SELECT max(Roll_no) from student)";
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery(query);
                                     

//ResultSet rs=st.executeQuery("SELECT * FROM student WHERE Roll_no=(SELECT max(Roll_no)");
  	if(rs.next()){
  		%>
    <label for="roll_no"><b>Roll No</b></label>
    <input type="text" placeholder="Roll no" name="Roll_no" value="<%=rs.getString("Roll_no")%>" required>
  		
  		<%
  	}
}
catch(Exception e){
	out.println(e);
}
%>


    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="Name"  required>

    <label for="course"><b>Course</b></label>
    <input type="text" placeholder="Course Name" name="Course" required>

    <label for="branch"><b>Branch</b></label>
    <input type="text" placeholder="Branch" name="Branch" required>

<label><b>Gender</b></label>
<input name="Gender" checked  type="radio" value="Male"> Male
<input name="Gender"  type="radio" value="Female"> Female

    <br><br><label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="Password" required>

    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
       <div class="clearfix">
      <button type="submit" name="signup" class="signupbtn"><b>Sign Up</button>
    </div>
  </div>
  
  
<%

if(request.getParameter("signup")!=null){
	
                    String Roll_no=request.getParameter("Roll_no");
                    String Name=request.getParameter("Name");
                    String Course=request.getParameter("Course");
                    String Branch=request.getParameter("Branch");
                    String Gender=request.getParameter("Gender");
                    String Password=request.getParameter("Password");
                                        try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
                                        Statement st = conn.createStatement();
                                        int i=st.executeUpdate("insert into student(Roll_no,Name,Course,Branch,Gender,Password)values('"+Roll_no+"','"+Name+"','"+Course+"','"+Branch+"','"+Gender+"','"+Password+"')");
          
                                        }
                                        catch(Exception e)
                                        {
                                        	out.print(e);
                                        	
                                        }
   
}                
                                        %>
  
</form>
</center>
</body>
</html>