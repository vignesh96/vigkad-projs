
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
<a href="decide.jsp"><h1 align="right">go back</h1></a>
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
	String decision = request.getParameter("dec");
	String cat = request.getParameter("category");
	String regno = request.getParameter("regno");
	String subj = request.getParameter("subj");
	String prob = request.getParameter("prob");
	//out.println(decision);
	//out.println(cat);
	//out.println(regno);
	//out.println(subj);
	//out.println(prob);
	if(request.getParameter("dec").equals("Add")==true)
	{
		
		%><br> <br> <br> <br>
<center><h1>post is accepted</h1>
		<%
			PreparedStatement ps = con.prepareStatement("insert into finpost values(?,?,?,?)");
			ps.setString(1,regno);
			ps.setString(2,cat);
			ps.setString(3,subj);
			ps.setString(4,prob);
			int s = ps.executeUpdate();
			PreparedStatement ps1 = con.prepareStatement("delete from reqpost where regno=? and subject=?");
			ps1.setString(1,regno);
			ps1.setString(2,subj);
			int s1 = ps1.executeUpdate();
			
	}
	else if(request.getParameter("dec").equals("Delete")==true)
	{
		PreparedStatement ps1 = con.prepareStatement("delete from reqpost where regno=? and subject=?");
		ps1.setString(1,regno);
		ps1.setString(2,subj);
		int s1 = ps1.executeUpdate();
		%>
		<br> <br> <br> <br>
<center><h1>the post is deleted</h1>
<%
	}
%>
<%	
}
catch(Exception e)
{
out.println("Connection not created"+e.getMessage());
}

%>
