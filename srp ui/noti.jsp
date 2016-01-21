<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>profile edited</title>

        <h1 style="color:red">Notifications</h1>
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
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root",""); 
%>
<%
	String reg = (String) session.getAttribute("reg");
	PreparedStatement ps = con.prepareStatement("select * from notif where regno = ?");
	ps.setString(1,reg);
	ResultSet rs = ps.executeQuery();
	
	while(rs.next())
	{
			if(rs.getString(3).equals("Add"))
			{%>
		
				<br> <br> <br> <br>
<center><h1>admin accepted your problem with subject
				<font style="color:blue;"><%out.println(rs.getString(2));%></h1></center>
			<%	
			}
			else if(rs.getString(3).equals("Delete"))
			{%><br><br><br><br>
<center><h1>Admin rejected your problem with subject	
				<font style="color:blue;"><% out.println(rs.getString(2)); %></font></h1></center>
		<%	}  %>
					
	<br><br>
	<% } %>
	
<%
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>