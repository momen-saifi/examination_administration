<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TRANSPARENT EVALUATION SYSTEM</title>
<Style>
body{
height:50%;
width:100%;
background-image:url('na.jpg');
background-repeat: no-repeat;
}

.panal{
background-color:#000a1a;
color:white;
height:70%;
width:30%;
float:right;
margin:4%;
text-align:center;
padding-top:5%;
padding-bottom:15%;
border-radius:30px;
opacity:0.6;
}
.font{
 color:#d1e0e0;
}
.text {	
  border: none;
  background: #000;
  color: #cce6ff;
  height:25px;
  padding: 5px;
  z-index: 100;
  font-family: 'Roboto', sans-serif;
  border-radius:15px;
  

}
.text:focus {
  outline-width: 0;
  font-size: 16px;
}

.pass {
  border-radius:15px;
  border: none;
  background: #000;
  color: #cce6ff;
 
  height: 25px;
  padding: 5px;
  z-index: 100;
  font-family: 'Roboto', sans-serif;
 
  
}
.pass:focus {
  outline-width: 0;
  font-size: 16px;
}

button {
 
  z-index: 100;
 padding:5px;
  
  border: 1px solid #fff;
  background: #000;
  font-family: '', sans-serif;
  color: #fff;
  font-size: 16px;
  border-radius: 22px;
  transition: 0.5s;
  cursor: pointer;
}
button:hover {
  color: #000;
  background: #cce6ff;
}
.text:hover {
  color: #000;
  background: #cce6ff;
}
.pass:hover {
  color: #000;
  background: #cce6ff;
}
button:focus {
  outline-width: 0;
}
input,button{
width:90%;

margin:auto;
margin-top:10px;
}
</style>
</head>
<body>
<div class="background">
<div class="panal">
<h1 class="font">LOGIN</h1>
<form action=StudentLogin.jsp method=post>
 <input id='username' class='text' onfocus="handle2()" class='inc2' type="text" name="Roll_no" placeholder="UserID" value="">

 <input id='password' class='pass' onfocus="handle1()" class='inc1' type="password" name="Password" placeholder="Password" value="">
 <button name="submit" type="submit">Sign In</button><br>
 <B >Don't have account yet?</B>
 <button><a style="color:white;   text-decoration: none;" href="Signup.jsp">Sign up</a ></button>
</form>

<%@page import="java.sql.*" %>
<%
if(request.getParameter("submit")!=null){
String roll_no=request.getParameter("Roll_no");
String password=request.getParameter("Password");


try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation","root","");
  Statement st=Con.createStatement();
  ResultSet rs=st.executeQuery("select * from student where Roll_no='"+roll_no+"' and password='"+password+"'");
  if(rs.next())
  {		  
	  session.setAttribute("rollno",roll_no);
	  response.sendRedirect("StudentHome.jsp");
} 
  
  else
	  out.println("Please enter correct Userid and Password");

}catch(Exception e) {
    out.println(e);
}
}
%>


</div>

</div>

</body>
</html> 