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
Statement st=con.createStatement();
String pass=request.getParameter("pass");
String qua = request.getParameter("qua");
st.executeUpdate("update items set quantity = '"+qua+"' where id='"+pass+"'");
out.print("Data updated!!");
%>
<a href="things.html"> Go back to see things record </a>

<%
	}
catch(Exception e)
{
out.println("Connection not created"+e.getMessage());
}

%>

</table></center>
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