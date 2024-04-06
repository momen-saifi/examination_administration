<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="Aqmal/jquery.min.js"></script> 
</head>
<body>
<%@page import="java.sql.*" %>
<%@ include file="AdminMenu.html" %> 
<center>
<div class="content" style="width:60%">

< ````````>
$(document).ready(function(){

	$('#Photo').change(function () {
        
        //app.showLoading();
        $('.PhotoHide').hide();
        var ta = this;
        if (ta.files && ta.files[0]) {
            file = ta.files[0];
			if(file.size<100000){
            var reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function (e) {           
                Picture = e.target.result;
                $('#Photo').after("<img src='"+Picture+"' height=100px width=100px class='PhotoHide'>");
                $('#PhotoHide').val(Picture);
               
            }
			
			}
			else{
				alert("Please Choose Maximum 100 KB Image Size");
			}
        }
    });
});
</script>
</td>
</tr>
</FORM>

<%

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation","root","");
Statement st = conn.createStatement();
ResultSet rs;
String rollno=request.getParameter("rollno");

st.executeUpdate("delete from marks where rollno='"+rollno+"'");
response.sendRedirect("Studentmarklist.jsp");

%>
</body>
</html>