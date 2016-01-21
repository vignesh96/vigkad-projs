<!DOCTYPE HTML>
<!--
Design by Free Responsive Templates
http://www.free-responsive-templates.com
Released for free under a Creative Commons Attribution 3.0 Unported License (CC BY 3.0) 
-->
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Free Responsive Template #9 - ZOO co</title>
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Belgrano' rel='stylesheet' type='text/css'>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
</head>
<body>
<header>
    <div class="headerContainer">
        <h1><a href="">Crowd <span>Sourcing</span></a></h1>
        <div id="navcontainer">
            <ul id="navlist">
                <li id="active"><a href="log.jsp">Home</a></li>
                
                <li><a href="log.jsp">View</a></li>
            </ul>
        </div>
        <div class="clearfloat"></div>
    </div>
</header>
<div class="container">
    <section>
    	<!-- begin .slider -->
		<div class="slider">
            <div class="flexslider">
                <ul class="slides">
                    <li><img src="images/a1.jpg" alt="" width="400" height="300"></li>
                    <li><img src="images/a2.jpg" alt="" width="400" height="300"></li>
                    <li><img src="images/a3.jpg" alt=="" width="400" height="300"></li>
                </ul>
            </div>
        </div>
        <div class="clearfloat"></div>
		<!-- end .slider -->
        <h1>Welcome</h1>
	<body>
<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>

<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");
PreparedStatement ps=con.prepareStatement("select * from commentt where postreg = ? and subject = ?");
String preg = request.getParameter("preg");
String subj = request.getParameter("subj");
ps.setString(1,preg);
ps.setString(2,subj);
ResultSet rs = ps.executeQuery();
while(rs.next())
{
%>
		<%
				String reg = rs.getString(4);
				String com = rs.getString(5);
				out.println(reg);
				out.println(com);
		%>
		
<%}
	}
catch(Exception e)
{
out.println("Connection not created"+e.getMessage());
}

%>
        <!-- begin .boxes -->
        <div class="clearfloat"></div>
        <div class="boxes">

                </li>
            </ul>
            <div class="clearfloat"></div>
        </div>
        <!-- end .boxes -->
    </section>
</div>
</body>
</html>
