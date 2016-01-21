<!DOCTYPE html>
<html>
<body style="background-color:violet">
<div id="container" style="background-color:yellow">
<div id="header" height:300px>
<h1 align="center" style="background-color:teal;color:red"> Science World </h1>
<h3 align="center">Gain the knowledge by viewing<sub> @ </sub> this world</h3></div></div><br>
<font style="background-color:blue;color: ivory;size:9px"><marquee> This provides you with many information of science when you are confused or don't understand any concepts.So make use of this resource.<em>For details contact<a href="contact.html"> 9789784265 or 044-43053172</a></em></marquee></font> 
<a href="kadiresk.html"> Back to main page </a><br><br>
<div id="menu"  style="background-color:orange;width:150px;float:left">
<h2>Subject:</h2><br>
<h4><a href="physics.html"> Physics </a><br>
<a href="chemistry.html"> Chemistry </a><br>
<a href="aboutus.html"> About Us </a><br>
<a href="resources.html"> Resources </a><br>
<a href="contact.html"> Contact Us </a></h4>
</div>
<div id="content" style="background-color:wheat;float:justify">
<br><table cellpadding=12>

<center><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTQynvXBN2a0HrxnkVj1KmQw1mxkZsmm9_d-G3Gfpd2nKapgkIH"></center>

<tr>
<td>
<p style="font-size:60px;color:olive;font-family:chiller" align="center">The blogs can be seen here</h1>
<center>
<?php
	
	$con = mysqli_connect("127.0.0.1","root","","test");
	if (mysqli_connect_errno($con))
  	{
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  	}

	$result1 = mysqli_query($con,"SELECT * FROM blogf");

while($row = mysqli_fetch_array($result1))
  {
 	echo "<p>"."<h2>"."User Name:". $row['FromWhom'];  
 	echo "<h2>"."Message:". $row['Message']; 
	echo "<br>"."<br>"."<br>"."<br>"; 
	echo "</h2>";
  }
?>
</td></tr>
</table>
</div>
<div id="footer" style="background-color:royalblue;clear=both;text-align:center">
 © copyright @ vignesh.com
</div>
</p>
</body>
</html>