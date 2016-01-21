<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root",""); 
PreparedStatement ps=con.prepareStatement("insert into list values(?,?)");
%>
<%

String id = (String)session.getAttribute("id");
String done = request.getParameter("do");
%>
<%
ps.setString(1,id);
ps.setString(2,done);
int s=ps.executeUpdate();

	response.sendRedirect("logged.jsp");
%>
<%
} 

catch(Exception e) 
{ 
	
	out.println("\nException:"+e.getMessage()); 
} 



%> 
