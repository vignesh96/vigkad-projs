<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Register in our website</title>

        
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

       
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<body background="img/todo.jpg">


<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root",""); 
PreparedStatement ps=con.prepareStatement("insert into todoist values(?,?,?,?,?,?,?)");
%>
<%
String name=request.getParameter("uname");
String id=request.getParameter("id");
String sex=request.getParameter("gender");
String addr=request.getParameter("email");
String role=request.getParameter("role");
String comp=request.getParameter("company");
String pwd=request.getParameter("pass");
%>
<%
ps.setString(1,name);
ps.setString(2,id);
ps.setString(3,sex);
ps.setString(4,addr);
ps.setString(5,role);
ps.setString(6,comp);
ps.setString(7,pwd);
int s=ps.executeUpdate();
%>


<br> <br> <br> <br>
<center><h1>registered successfully</h1>
<h2> you are now registered here <h2><br>
Go back to <a href="login.html"> LOGIN page </a>
</center>
<%
} 

catch(Exception e) 
{ 
	
	out.println("\nException:"+e.getMessage()); 
} 



%> 

</body>
</html>