<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","");
boolean status=false; 
PreparedStatement ps=con.prepareStatement("select * from todoist where ID=? and password=? and Role=?");
String id=request.getParameter("form-id");
String pass=request.getParameter("form-password");
String role = "worker";
ps.setString(1,id);
ps.setString(2,pass);
ps.setString(3,role);
ResultSet rs=ps.executeQuery();
status=rs.next();
if(status){
		session.setAttribute("id",id);
		response.sendRedirect("logged.jsp");
%>
<%

}else {
%>
<%
ps=con.prepareStatement("select * from todoist where ID=? and password=? and Role=?");
id=request.getParameter("form-id");
pass=request.getParameter("form-password");
role = "manager";
ps.setString(1,id);
ps.setString(2,pass);
ps.setString(3,role);
rs=ps.executeQuery();
status=rs.next();
if(status){
		session.setAttribute("id",id);
		response.sendRedirect("logged1.jsp"); 
}else{
%>
<%
out.print("Hi,no such record found!!!");
%>
Go Back To <a href="Register.html"> Register </a> to register  
<%
}	
}
	}
catch(Exception e)
{
out.println("Connection not created"+e.getMessage());
}

%>

