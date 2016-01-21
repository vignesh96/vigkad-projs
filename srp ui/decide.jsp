<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Problems</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>
	
	 <body>
	
<div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Problems</strong> </h1>
                            <div class="description">
                            	<p>
	                                                           	</p>
                            </div>
                        </div>
                    </div>
					
<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>

<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root",""); 
PreparedStatement ps=con.prepareStatement("select * from reqpost");
int count=0;
%>
<%
ResultSet rs = ps.executeQuery();
while(rs.next())
{
%>

 
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			Problem No : <% out.println(count+1);
													count++;
													%>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-question-circle"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
								<form name="category" method="post" action="dec.jsp">
								
			                    Register Number : <input type="text" value="<% out.println(rs.getString(1)); %>" name="regno"><br><br>
								Subject : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<% out.println(rs.getString(2)); %>" name="subj"> <br><br>
								Problem : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="prob"><% out.println(rs.getString(3)); %></textarea><br><br>
								
								Assign a Category : 
								<select name="category">
									<option value="studies">Studies</option>
									<option value="supplies" >Supplies</option>
									<option value="hostel" > Hostel </option>
									<option value="financial" >Financial</option>
								</select>
								<br><br>
								<input type="radio" name="dec" value="Add"> Add<br>
								<input type="radio" name="dec" value="Delete">Delete<br>

								<button type="submit" class="btn" name="response">Respond</button>
								</form>
							</div>
								<br>
		                    </div>
                        </div>
                    </div>
			
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
	 <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>