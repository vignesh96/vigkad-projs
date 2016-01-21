<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>profile edited</title>

        
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

<body background="assets/images/body1.jpg">

<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%
	String fname=request.getParameter("fname");
	String re=(String)session.getAttribute("reg");
	String maid=request.getParameter("mail");
	String pass=request.getParameter("pas");
	//out.println(re);
	try
	{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root",""); 

		
		Statement st=con.createStatement();
		st.executeUpdate("update signup set name = '"+fname+"',email = '"+maid+"',password = '"+pass+"' where regno='"+re+"'");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
<br> <br> <br> <br>
<center><h1>updated successfully</h1>
<br>
Go back to <a href="log.jsp"> HOME page </a>
</center></body>
</html>


