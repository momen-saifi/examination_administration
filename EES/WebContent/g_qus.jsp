
<%@ page import="java.sql.*" %>


<%
int sn=0;
int count=0;
int t=0;

String q="";
String a1="";
String a2="";
String a3="";
String a4="";

String sp1=request.getParameter("sp");
String sn1=request.getParameter("id");
String count1=request.getParameter("c");
String t1=request.getParameter("r");
String tans=request.getParameter("ans");
String qt=request.getParameter("type");

if(count1!=null)
{
count=Integer.parseInt(count1);
}

if(t1!=null)
{
t=Integer.parseInt(t1);
}
if(sn1!=null|sn1.equals(""))
{
sn=Integer.parseInt(sn1);
}
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try
            	{
    Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/examevaluation","root","");
 		stmt=conn.createStatement();
		rs=stmt.executeQuery("select * from q_details where q_type='"+qt+"' and q_id="+sn+"");
		boolean flag=rs.next();
		if(flag)
		{
		String a=rs.getString("ans");
		if(tans.equals(a))
		{
		t++;
		}}
		rs=stmt.executeQuery("select * from q_details where q_type='"+qt+"' and q_id>"+sn+"");
	
if(count<=1)
{
rs.next();
sn=rs.getInt("q_id");
q=rs.getString("qus");
a1=rs.getString("f_ans");
a2=rs.getString("s_ans");
a3=rs.getString("t_ans");
a4=rs.getString("fo_ans");
count++;
response.sendRedirect("quastion.jsp?n="+sn+"&q1="+q+"&a="+a1+"&a="+a2+"&a="+a3+"&a="+a4+"&tr="+t+"&co="+count+"&q="+qt+"&s="+sp1+"");
}
else
{
response.sendRedirect("examresult.jsp?c="+t+"&type="+qt+"&s="+sp1+"");
}

stmt.close();
conn.close();
}
catch(Exception e)
{
out.println("Error occurred "+e);
}


%>