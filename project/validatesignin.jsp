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
</div>
</td>
<td>
<div id="content" style="background-color:#70DBDB;font-size:20px;width:1150px ;height:800px;">
<br>
<font style="font-size:70px; padding-top: 25px; padding-right: 50px; padding-bottom: 25px;padding-left: 50px;color:#669900"><center></center> </font><br>
<p style="padding-top: 25px; padding-right: 50px; padding-bottom: 25px;padding-left: 25px;color:red;">
<center>
<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vignesh","root","");
boolean status=false; 
PreparedStatement ps=con.prepareStatement("select * from vii where name=? and ID=? ");
String username=request.getParameter("name");
String pass=request.getParameter("id");
ps.setString(1,username);
ps.setString(2,pass);
ResultSet rs=ps.executeQuery();
status=rs.next();
if(status){
%>
<center>	<a href="hospi.html">Logout</a> </center>	
<table border="3" cell spacing="2" cell padding="4">
<tr>
<td>Patient name</td>
<td>ID</td>
<td>Age</td>
<td>Gender</td>
<td>Address</td>
<td>Phone number</td>
<td>Blood Group</td>
<td>Disease</td>
<td>Family</td>
</tr>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
</tr>
<%
}else {
%>

<%
out.print("Hi,no such record found!!!");
%>
<a href="regi.html"> Go here</a> to sign in again
<%
}	
}
catch(Exception e)
{
out.println("Connection not created"+e.getMessage());
}
%>
</table></center>
<br>
<br>

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