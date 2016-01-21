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
<font style="font-size:70px; padding-top: 25px; padding-right: 50px; padding-bottom: 25px;padding-left: 50px;color:#669900"><center></center> </font><br>
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
PreparedStatement ps=con.prepareStatement("insert into doctorrec values(?,?,?,?,?,?,?,?)");
%>
<%
String name=request.getParameter("name");
String id=request.getParameter("id");
String sex=request.getParameter("gen");
String addr=request.getParameter("addr");
String age=request.getParameter("age");
String ser=request.getParameter("service");
String pwd=request.getParameter("pass");
String phno=request.getParameter("num");
%>
<%
ps.setString(1,name);
ps.setString(2,id);
ps.setString(3,sex);
ps.setString(4,addr);
ps.setString(5,age);
ps.setString(6,ser);
ps.setString(7,pwd);
ps.setString(8,phno);
int s=ps.executeUpdate();
out.println(s);%>

<h1>registered successfully</h1>
<h2> you are now registered here <h2><br>
<h2> <a href="doctor.html"> Back To Doctor Column </a></h2>

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