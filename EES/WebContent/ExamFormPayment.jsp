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


String rollno=(String)session.getAttribute("rollno");

String Roll_no=request.getParameter("Roll_no");
String Name=request.getParameter("Name");
String Course=request.getParameter("Course");
String Branch=request.getParameter("Branch");

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

int Evaluation=Integer.parseInt(Evaluation1)+Integer.parseInt(Evaluation2)+Integer.parseInt(Evaluation3)+Integer.parseInt(Evaluation4)+Integer.parseInt(Evaluation5)+Integer.parseInt(Evaluation6);
Evaluation-=6;

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
    <input type="text" placeholder="Roll no" name="Roll_no" value="<%=rollno %>" required>
    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="Name" value="<%=Name %>" required>

    <label for="course"><b>Course</b></label>
    <input type="text" placeholder="Course Name" name="Course" value="<%=Course %>" required>

    <label for="branch"><b>Branch</b></label>
    <input type="text" placeholder="Branch" name="Branch" value="<%=Branch %>" required>

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
<td><input style="border-style:none;" type="text" name="Subject_code1" value="<%=Subject_code1 %>"/></td>
<td><input style="border-style:none;" type="text" name="Subject_name1" value="<%=Subject_name1 %>"></td>
<td>
<input style="border-style:none;" type="text" name="Evaluation1" value="<%=Evaluation1 %>"></td></tr>
<tr><td>2</td>
<td><input style="border-style:none;" type="text" name="Subject_code2" value="<%=Subject_code2 %>"/></td>
<td><input style="border-style:none;" type="text" name="Subject_name2" value="<%=Subject_name2 %>"></td>
<td>
<input style="border-style:none;" type="text" name="Evaluation2" value="<%=Evaluation2 %>"></td></tr>

<tr><td>3</td>
<td><input style="border-style:none;" type="text" name="Subject_code3" value="<%=Subject_code3 %>"/></td>
<td><input style="border-style:none;" type="text" name="Subject_name3" value="<%=Subject_name3 %>"></td>
<td>
<input style="border-style:none;" type="text" name="Evaluation3" value="<%=Evaluation3 %>"></td></tr>

<tr><td>4</td>
<td><input style="border-style:none;" type="text" name="Subject_code4" value="<%=Subject_code4 %>"/></td>
<td><input style="border-style:none;" type="text" name="Subject_name4" value="<%=Subject_name4 %>"></td>
<td>
<input style="border-style:none;" type="text" name="Evaluation4" value="<%=Evaluation4 %>"></td></tr>

<tr><td>5</td>
<td><input style="border-style:none;" type="text" name="Subject_code5" value="<%=Subject_code5 %>"/></td>
<td><input style="border-style:none;" type="text" name="Subject_name5" value="<%=Subject_name5 %>"></td>
<td>
<input style="border-style:none;" type="text" name="Evaluation5" value="<%=Evaluation5 %>"></td></tr>

<tr><td>6</td>
<td><input style="border-style:none;" type="text" name="Subject_code6" value="<%=Subject_code6 %>"/></td>
<td><input style="border-style:none;" type="text" name="Subject_name6" value="<%=Subject_name6 %>"></td>
<td>
<input style="border-style:none;" type="text" name="Evaluation6" value="<%=Evaluation6 %>"></td></tr>

<tr><td></td>
<td></td>
<td>Total Amount</td>
<td><%=Evaluation*500 %>
<input style="border-style:none;" type="hidden" name="amount" value="<%=Evaluation*500 %>"></td></tr>

</table>
<br>
<br>
<table width=30% border=1>
<caption>Enter Card Details</caption>
<tr><td><input type=text name=cardno placeholder="Card No"></td></tr>
<tr><td><input type=text name=expmonth placeholder="Expiry Month"></td></tr>
<tr><td><input type=text name=expyear placeholder="Expiry Year"></td></tr>
<tr><td><input type=text name=cvvno placeholder="CVV No"></td></tr>

</table>
       <div class="clearfix">
      <button  type="submit" name="submit" class="signupbtn"><b><a style="text-decoration:none;" href="Payment.jsp">Submit<a></button>
</div>
</form>
  
<%

if(request.getParameter("submit")!=null){
	
                     Roll_no=request.getParameter("Roll_no");
                    String cardno=request.getParameter("cardno");
                    String expmonth=request.getParameter("expmonth");
                    String expyear=request.getParameter("expyear");
                    String cvvno=request.getParameter("cvvno");
                    
                     Subject_code1=request.getParameter("Subject_code1");
                     Subject_code2=request.getParameter("Subject_code2");
                     Subject_code3=request.getParameter("Subject_code3");
                     Subject_code4=request.getParameter("Subject_code4");
                     Subject_code5=request.getParameter("Subject_code5");
                     Subject_code6=request.getParameter("Subject_code6");
                    
                     Subject_name1=request.getParameter("Subject_name1");
                     Subject_name2=request.getParameter("Subject_name2");
                     Subject_name3=request.getParameter("Subject_name3");
                     Subject_name4=request.getParameter("Subject_name4");
                    Subject_name5=request.getParameter("Subject_name5");
                     Subject_name6=request.getParameter("Subject_name6");
                    
                     Evaluation1=request.getParameter("Evaluation1");
                     Evaluation2=request.getParameter("Evaluation2");
                     Evaluation3=request.getParameter("Evaluation3");
                     Evaluation4=request.getParameter("Evaluation4");
                     Evaluation5=request.getParameter("Evaluation5");
                     Evaluation6=request.getParameter("Evaluation6");

                                        try {
                                     //   Class.forName("com.mysql.jdbc.Driver");
                                       // Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
                                       
                                       st = conn.createStatement();
                                       rs= st.executeQuery("select empid from faculty where department='"+Subject_code1+"' order by RAND() limit 1");
                                       rs.next();
                                       String f1=rs.getString("empid");
                                       rs= st.executeQuery("select empid from faculty where department='"+Subject_code2+"' order by RAND() limit 1");
                                       rs.next();
                                       String f2=rs.getString("empid");
                                       rs= st.executeQuery("select empid from faculty where department='"+Subject_code3+"' order by RAND() limit 1");
                                       rs.next();
                                       String f3=rs.getString("empid");
                                       rs= st.executeQuery("select empid from faculty where department='"+Subject_code4+"' order by RAND() limit 1");
                                       rs.next();
                                       String f4=rs.getString("empid");
                                       rs= st.executeQuery("select empid from faculty where department='"+Subject_code5+"' order by RAND() limit 1");
                                       rs.next();
                                       String f5=rs.getString("empid");
                                       rs= st.executeQuery("select empid from faculty where department='"+Subject_code6+"' order by RAND() limit 1");
                                       rs.next();
                                       String f6=rs.getString("empid");
                                       int i=st.executeUpdate("insert into examForm(Roll_no,amount,cardno,expmonth,expyear,cvvno,Subject_code1,Subject_code2,Subject_code3,Subject_code4,Subject_code5,Subject_code6,Subject_name1,Subject_name2,Subject_name3,Subject_name4,Subject_name5,Subject_name6,Evaluation1,Evaluation2,Evaluation3,Evaluation4,Evaluation5,Evaluation6,f1,f2,f3,f4,f5,f6)values('"+Roll_no+"',"+Evaluation*500+",'"+cardno+"','"+expmonth+"','"+expyear+"','"+cvvno+"','"+Subject_code1+"','"+Subject_code2+"','"+Subject_code3+"','"+Subject_code4+"','"+Subject_code5+"','"+Subject_code6+"','"+Subject_name1+"','"+Subject_name2+"','"+Subject_name3+"','"+Subject_name4+"','"+Subject_name5+"','"+Subject_name6+"','"+Evaluation1+"','"+Evaluation2+"','"+Evaluation3+"','"+Evaluation4+"','"+Evaluation5+"','"+Evaluation6+"','"+f1+"','"+f2+"','"+f3+"','"+f4+"','"+f5+"','"+f6+"')");
                                       response.sendRedirect("ViewExamForm.jsp");
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