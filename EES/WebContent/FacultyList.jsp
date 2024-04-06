<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marks Evaluation System</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@ include file="AdminMenu.html" %> 

<section>
<p id="logo" target="_blank">Faculty List</p>
              <center>
<table border="1px" title="Missing Images" style="width: 100%;">
                                            <thead>
                                                <tr>

                                                    <th>EmpId
                                                    </th>
                                                    <th>Name
                                                   
                                                    </th>
                                                    <th>EmailId
                                                    </th>
                                                   
                                                    <th>Mobile
                                                    </th>
                                                    <th>Qualification
                                                    </th>
                                                       <th>Salary
                                                    </th>
                                                    </th>
                                                       <th>Department
                                                    </th>
                                                   												   
                                               
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                              <%


                                            try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","");
                                            String query = "select * from faculty";
                                            Statement st = conn.createStatement();
                                            ResultSet rs = st.executeQuery(query);
                                            while(rs.next()){                                      
                    
                                            %>
                              
<form action="FacultyList.jsp" method="post">          
<tr><td><input style="border-style:none;" type="text" name="FacultyId" value="<%=rs.getString("EmpId")%>"/></td>
<td><input style="border-style:none;" type="text" name="Name" value="<%=rs.getString("Name")%>"></td>
<td><input style="border-style:none;" type="text" name="EmailId" value="<%=rs.getString("EmailId")%>"></td>
<td><input style="border-style:none;" type="text" name="Mobile" value="<%=rs.getString("Mobile")%>"></td>
<td><input style="border-style:none;" type="text" name="Qualification" value="<%=rs.getString("Qualification")%>"></td>
<td><input style="border-style:none;" type="text" name="Salary" value="<%=rs.getString("Salary")%>"></td>
<td><input style="border-style:none;" type="text" name="Department" value="<%=rs.getString("Department")%>"></td>
          </tr>
</form>
</tbody>
<%
}
                                            }
                                              catch(Exception e)
                                              {
                                              	out.print(e);
                                              	
                                              }
                                              String EmpId=request.getParameter("EmpId");
                                              String Name=request.getParameter("Name");
                                              String EmailId=request.getParameter("EmailId");
                                              String Mobile=request.getParameter("Mobile");
                                              String Qualification=request.getParameter("Qualification");
                                              String Salary=request.getParameter("Salary");
                                              String Department=request.getParameter("Department");
                                              
                                              
                                            	  if(request.getParameter("delete")!=null)
                                            	  {
                                            		  try{
                                            	  		Class.forName("com.mysql.jdbc.Driver");
                                            	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","") ;
                                            	  		Statement stm=con.createStatement();
                                            	  		
                                            	  		int i=stm.executeUpdate("delete from faculty where EmpId='"+EmpId+"'");
                                            	  		if(i>0)
                                            	  		{
                                            	  			out.print("Deleted");
                                            	  		}
                                            	  	}
                                            	  	catch(Exception ex){
                                            	  		out.print(ex);
                                            	  	}
                                            	  }
                                            	  else   if(request.getParameter("update")!=null)
                                            	  {
                                            		  
                                            		  try{
                                              	  		Class.forName("com.mysql.jdbc.Driver");
                                              	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sr","root","") ;
                                              	  		Statement stm=con.createStatement();
                                              	  		
                                              	  		int i=stm.executeUpdate("update from faculty set EmpId='"+EmpId+"',name='"+Name+"',EmailId='"+EmailId+"',Mobile='"+Mobile+"',Qualification='"+Qualification+"',Salary='"+Salary+"',Department='"+Department+"' WHERE  EmpId='"+EmpId+"'");
                                              	  		if(i>0)
                                              	  		{
                                              	  			out.print("Deleted");
                                              	  		}
                                              	  	}
                                              	  	catch(Exception ex){
                                              	  		out.print(ex);
                                              	  	}
                                              	  }
                                            %>
                <tbody>
                            </table>

</section>

</body>
</html>