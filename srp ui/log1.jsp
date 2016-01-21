<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");
boolean status=false; 
PreparedStatement ps=con.prepareStatement("select * from signup where regno=? and password=? ");
String registerno=request.getParameter("form-username");
String pass=request.getParameter("form-password");
ps.setString(1,registerno);
ps.setString(2,pass);
ResultSet rs=ps.executeQuery();
status=rs.next();
if(status){
		session.setAttribute("reg",registerno);
		response.sendRedirect("log.jsp");
%>
<%

}else {
%>

<%
out.print("Hi,no such record found!!!");
%>
<a href="signIn.html"> Go here</a> to sign in again
<%
}	
}
catch(Exception e)
{
out.println("Connection not created"+e.getMessage());
}

%>

