<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>
<%!

String name;
String select;
%>
<%

 name=request.getParameter("val");

 Class.forName("com.mysql.jdbc.Driver").newInstance();

// Open new connection.
java.sql.Connection conn;

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","");

Statement ps=conn.createStatement();


// Get the query results and display them.



name="^"+name;


 select="Select * from list where (ID REGEXP '"+name+"' );";

ResultSet rel=ps.executeQuery(select);
try{
while(rel.next())
{
%>
<table><tr><td>	<h2 style = "color:red;"> <% out.println("ID :");%></h2></td><td> <h4><% out.println(rel.getString(1)); %></h4></td></tr><br>
	<tr><td> <h2 style = "color:red;"> <% out.println("LIST :");%> </h2></td><td> <h4> <% out.println(rel.getString(2)); %></h4></td></tr><br>
<% }
}
catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }






ps.close();
conn.close(); 

%>
