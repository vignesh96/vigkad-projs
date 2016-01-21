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

<body background="assets/images/body1.jpg">
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                   
                    <li>
                        <a href="editprofile.html">Edit Profile</a>
                    </li>
				<li>
                        <a href="log.jsp">Notifications</a>
                    </li>

                    <li>
                        <a href="post1.html">Post</a>
                    </li>
                    <li>
                        <a href="logout.jsp">LogOut</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root",""); 
PreparedStatement ps=con.prepareStatement("insert into reqpost values(?,?,?)");
%>
<%
String regno = (String)session.getAttribute("reg");
String sub=request.getParameter("subj");
String query=request.getParameter("query");

%>
<%
ps.setString(1,regno);
ps.setString(2,sub);
ps.setString(3,query);
int s=ps.executeUpdate();
%>
<br> <br> <br> <br>
<center><h1>Posted successfully</h1>


</center>
<%
}
catch(Exception e)
{
 out.println("Exception : " + e.getMessage() + "");
}
%>
</body>
</html>
