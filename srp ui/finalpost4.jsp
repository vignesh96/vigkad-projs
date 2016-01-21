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
<title>Hostel</title>
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
                
                <li><a href="#">Contact</a></li>
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
PreparedStatement ps=con.prepareStatement("select * from finpost where category='hostel'");%>
<%ResultSet rs = ps.executeQuery();
if(!rs.next())
{
	out.println("No posts");
}
while(rs.next())
{
%>		  <link rel="stylesheet" href="style.css">
		<div id="pr" ><p bgcolor="green"><form name="c" action="comment.jsp" method="post">
		<input type="hidden" value="hostel" name="categ">
		POSTED BY:<% out.println(rs.getString(1));%><input type="hidden" name="preg" value="<% out.println(rs.getString(1)); %>" readonly><br>
        SUBJECT: <% out.println(rs.getString(3)); %> <input type="hidden" name="subj" value="<% out.println(rs.getString(3));%>" readonly><br>
		QUERY: <% out.println(rs.getString(4)); %> <input type="hidden" name="query" value="<% out.println(rs.getString(4)); %>" readonly><br>
		
		</p>
		<input type="text" name="comment" placeholder="Leave your comments..."><br>
		<input type="submit" value="Comment">
		</form>

<%
	}
	%>
	<%
}
catch(Exception e)
{
 out.println("Exception : " + e.getMessage() + "");
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
<footer>
	<div class="footerTop"></div>
    <div class="footerBody">
    	<div class="footerContent">
        	<!-- begin Right List -->
            <div class="rightList">
                <h2></h2>
                <ul>
                    </div>
            <!-- end Right List -->
            <!-- begin Left List -->
            <div class="leftList">
                <h2></h2>
                <p class="profilesList">
                	
                	
                </p>
                <p class="profilesList">
                	
                	
                </p>
                <p class="profilesList">
                	
                	
                <p class="profilesList">
                	
                	
                </p>
            </div>
            <!-- end Left List -->
            <div class="clearfloat"></div>
        </div>
    </div>
    <div class="footerBottom"></div>
    <div class="clearfloat"></div>
    <div class="copyright">
        <p>
            Copyright &copy; CR. All rights reserved. Designed by <a href="http://www.free-responsive-templates.com" title="free responsive templates">SVG Website</a>, Validation 
            <a class="footerLink" href="http://validator.w3.org/check/referer" title="This page validates as HTML5"><abbr title="HyperText Markup Language">HTML5</abbr></a> | 
            <a class="footerLink" href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS3</abbr></a>
        </p>
    </div>
    <div class="socialIcons">
        <ul>
            <li><a href=""><img src="images/twitterIcon.png" alt="twitter icon"></a></li>
            <li><a href=""><img src="images/facebookIcon.png" alt="facebook icon"></a></li>
            <li><a href=""><img src="images/rssIcon.png" alt="rss icon"></a></li>
        </ul>
    </div>
</footer>
</body>
</html>
