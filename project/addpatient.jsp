<!DOCTYPE html>
<html>
<div id="header"  style="background-color:lightblue; height:200px;" float="right">
<table>
<tr><th>
<img align="left" src="D:\studies\project\download.jpg"  width="190px">
</th>
<head>
<th>
	<font color="red" size="40px">
		
		<center> HOSPITAL MANAGEMENT SYSTEM </center>
	</font>
	<br>
	<font color="black" size="5px">
		<center> >> An Easier Way of your Life << </center>
	</font>
</th></tr>
</table>	
</head>
</div>
<body>
<table>
<tr><td>
 
<div id="menu" style="background-color:lightgreen;width:200px;font-size:20px ;height:820px; color:#CC0099 ;"> 
<br><br>
<ul style="list-style-type:square;list-color:red">
<li> <a href="home.html"> Home Page </a> </li> <br>
<li> <a href="case.html"> Case Records </a> </li> <br>
<li> <a href="about.html"> About Us </a> </li> <br>
<li> <a href="contact.html"> Contacts </a> </li> <br>
<li> <a href="facilities.html"> Facilities </a> </li> <br> 
<li> <a href="doctor.html"> Doctor </a> </li> <br>
</ul>

</div>
</td>
<td>
<div id="content" style="background-color:#70DBDB;font-size:20px;width:1150px ;height:800px;">
<br>
<font style="font-size:70px; padding-top: 25px; padding-right: 50px; padding-bottom: 25px;padding-left: 50px;color:#669900"><center> Facilities </center> </font><br>
<p style="padding-top: 25px; padding-right: 50px; padding-bottom: 25px;padding-left: 25px;color:red;">
<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vignesh","root",""); 
out.println("Connection");
PreparedStatement ps=con.prepareStatement("insert into vii values(?,?,?,?,?,?,?,?,?)");
%>
<%
String name=request.getParameter("name");
String id=request.getParameter("idn");
String age=request.getParameter("age");
String sex=request.getParameter("sex");
String address=request.getParameter("text");
String phone=request.getParameter("phone");
String bp=request.getParameter("blood");
String di=request.getParameter("disease");
String fame=request.getParameter("family");
%>
<%
ps.setString(1,name);
ps.setString(2,id);
ps.setString(3,age);
ps.setString(4,sex);
ps.setString(5,address);
ps.setString(6,phone);
ps.setString(7,bp);
ps.setString(8,di);
ps.setString(9,fame);
int s=ps.executeUpdate();
out.println(s);%>

<h1>registered successfully</h1>
<h2> you are now registered here <h2><br>
<h2> <a href="case.html"> Back To case Records </a></h2>

<%
}
catch(Exception e)
{
 out.println("Exception : " + e.getMessage() + "");
}
%>
</p>
<br><br><br><br><br><br><br><br>
</div>
<div id="footer" height="10px" style="background-color:orange;color:red;"> <marquee direction="left">For any details call HMS DeskBoard 044-43053172 or call +919789784265  </marquee> </div> 
</div>
</td>
</tr>
</table>
</body>
</html>