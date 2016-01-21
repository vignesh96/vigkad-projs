<!DOCTYPE html>
<html lang="en">
<style>
	.boxed {
  border: 1px solid green ;
}
</style>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Crowd Sourcing</title>


    <link href="home/css/bootstrap.min.css" rel="stylesheet">


    <link href="home/css/agency.css" rel="stylesheet">


    <link href="home/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

</head>

<body id="page-top" class="index">


    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">

            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">CrowdSourcer</a>
            </div>


            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="index.html"><% out.print("Welcome," + session.getAttribute("reg")); %></a>
                    </li>
                    <li>
                        <a href="editprofile.html">Edit Profile</a>
                    </li>
					<li>
                        <a href="slide.html">Gallery</a>
                    </li>
					<li>
                        <a href="ser.html">Search</a>
                    </li>
					<li>
                        <a href="noti.jsp">Notifications</a>
                    </li>
		
                    <li>
                        <a href="post1.html">Post</a>
                    </li>
                    <li>
                        <a href="logout.jsp">LogOut</a>
                    </li>
                   
                </ul>
            </div>

        </div>

    </nav>
<header>
<div class="container">
	<br><br><br><br>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
<br><br><br><br><br><br>
    <center><!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="1.jpg" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
			<h3>EDUCATION</h3>
          <p>Necessity</p>
        </div>
      </div>

      <div class="item">
        <img src="2.jpg" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
         <h3>FINANCIAL</h3>
          <p>Crowd Funding reg.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="3.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
         <h3>SUPPLIES</h3>
		 <p>where can i find this????</p>
        </div>
      </div>

      <div class="item">
        <img src="4.jpg" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>NETWORKING</h3>
          <p>how to signin</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div></center><br><br><br><br><br><br>
</header>

<div class="container">
<table>
    <tr><td>
	<center> <h1> Some Topics </h1> </center>
	<a href="finalpost1.jsp"><h3> Studies </h3></a>
	<a href="finalpost2.jsp"><h3> Financial </h3></a>
	<a href="finalpost3.jsp"><h3> Supplies </h3></a>
	<a href="finalpost4.jsp"><h3> Hostel </h3></a>
	<br>
	<h3> SOME PROBLEMS </h3>
        <%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");
boolean status=false; 
PreparedStatement ps=con.prepareStatement("SELECT * FROM finpost ORDER BY RAND() LIMIT 5");
ResultSet rel=ps.executeQuery();
while(rel.next())
{
%>
<div class="boxed">
<table><tr><td>	<h4 style = "color:red;"> <% out.println("REGISTER NUMBER :");%></h4></td><td> <h4><% out.println(rel.getString(1)); %></h4></td></tr><br>
	<tr><td> <h4 style = "color:red;"> <% out.println("CATEGORY :");%> </h4></td><td> <h4> <% out.println(rel.getString(2)); %></h4></td></tr><br>
	<tr><td> <h4 style = "color:red;"> <% out.println("SUBJECT :");%> </h4> </td><td><h4><% out.println(rel.getString(3)); %></h4></td></tr><br>
	<tr><td> <h4 style = "color:red;"> <% out.println("PROBLEM :");%> </h4> </td><td> <h4><% out.println(rel.getString(4)); %> </h4></td></tr><br><br>
</table>
</div><br><br>
<% }

}
	catch(Exception e){
		out.println(e);
	}
%>
</td>
<td>
<br><br>
<h3> MOST TRENDING </h3>
<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root","");
boolean status=false; 
PreparedStatement ps=con.prepareStatement("SELECT * FROM finpost ORDER BY RAND() LIMIT 5");
ResultSet rel=ps.executeQuery();
while(rel.next())
{
%>
<div class="boxed">
<table><tr><td>	<h4 style = "color:red;"> <% out.println("REGISTER NUMBER :");%></h4></td><td> <h4><% out.println(rel.getString(1)); %></h4></td></tr><br>
	<tr><td> <h4 style = "color:red;"> <% out.println("CATEGORY :");%> </h4></td><td> <h4> <% out.println(rel.getString(2)); %></h4></td></tr><br>
	<tr><td> <h4 style = "color:red;"> <% out.println("SUBJECT :");%> </h4> </td><td><h4><% out.println(rel.getString(3)); %></h4></td></tr><br>
	<tr><td> <h4 style = "color:red;"> <% out.println("PROBLEM :");%> </h4> </td><td> <h4><% out.println(rel.getString(4)); %> </h4></td></tr><br><br>
</table>
</div><br><br>
<% }

}
	catch(Exception e){
		out.println(e);
	}
%>
</td></tr></table>


</div>


    <script src="home/js/jquery.js"></script>


    <script src="home/js/bootstrap.min.js"></script>


    <script src="home/js/jquery.easing.min.js"></script>
    <script src="home/js/classie.js"></script>
    <script src="home/js/cbpAnimatedHeader.js"></script>


    <script src="home/js/jqBootstrapValidation.js"></script>
    <script src="home/js/contact_me.js"></script>


    <script src="home/js/agency.js"></script>

</body>

</html>
