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

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");

Statement ps=conn.createStatement();


// Get the query results and display them.



name="^"+name;


 select="Select * from finpost where (category REGEXP '"+name+"' or regno REGEXP '"+name+"' or subject REGEXP '"+name+"' or problem REGEXP '"+name+"');";

ResultSet rel=ps.executeQuery(select);
try{
while(rel.next())
{
%>
<table><tr><td>	<h2 style = "color:red;"> <% out.println("REGISTER NUMBER :");%></h2></td><td> <h4><% out.println(rel.getString(1)); %></h4></td></tr><br>
	<tr><td> <h2 style = "color:red;"> <% out.println("CATEGORY :");%> </h2></td><td> <h4> <% out.println(rel.getString(2)); %></h4></td></tr><br>
	<tr><td> <h2 style = "color:red;"> <% out.println("SUBJECT :");%> </h2> </td><td><h4><% out.println(rel.getString(3)); %></h4></td></tr><br>
	<tr><td> <h2 style = "color:red;"> <% out.println("PROBLEM :");%> </h2> </td><td> <h4><% out.println(rel.getString(4)); %> </h4></td></tr><br><br>
<% }
}
catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }






ps.close();
conn.close(); 

%>
