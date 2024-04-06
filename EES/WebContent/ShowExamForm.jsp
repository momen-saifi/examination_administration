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

<section>
<p id="logo" target="_blank">Student List</p>
              <center>
<table border="1px" title="Missing Images" style="width: 100%;">
                                            <thead>
                                                <tr>

                                                    <th>Roll No
                                                    </th>
                                                    <th>Name
                                                   
                                                    </th>
                                                    <th>Course
                                                    </th>
                                                   
                                                    <th>Branch
                                                    </th>
                                                    <th>Gender
                                                    </th>
                                                     									   
                                                  <th>Amount
                                                    </th>
                                                  <th>Action
                                                    </th>
                                                  										   
                                                
                                                  
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                              <%


                                            try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
                                            String query = "select * from examform,student where student.Roll_no=examform.Roll_no";
                                            Statement st = conn.createStatement();
                                            ResultSet rs = st.executeQuery(query);
                                            while(rs.next()){                                      
                    
                                            %>
                              
          
<tr><td><input style="border-style:none;" type="text" name="Roll_no" value="<%=rs.getString("Roll_no")%>"/></td>
<td><%=rs.getString("Name")%></td>
<td><%=rs.getString("Course")%></td>
<td><%=rs.getString("Branch")%></td>
<td><%=rs.getString("Gender")%></td>
<td><%=rs.getString("Amount")%></td>
          
<td><a href="StudentExamForm.jsp?Roll_no=<%=rs.getString("Roll_no")%>"><input name="view" type="submit" value="View" class="btn btn-sm btn-primary"/></a></td>
</tr>
</tbody>
<%
}
                                            }
                                              catch(Exception e)
                                              {
                                              	out.print(e);
                                              	
                                              }
                                             
                                            %>
                <tbody>
                            </table>

</section>

</body>
</html>