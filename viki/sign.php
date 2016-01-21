<html>
<body style="background-color:violet">
<div id="container" style="background-color:yellow">
<div id="header" height:300px>
<h1 align="center" style="background-color:teal;color:red"> Science World </h1>
<h3 align="center">Gain the knowledge by viewing<sub> @ </sub> this world</h3></div></div><br>
<font style="background-color:blue;color: ivory;size:9px"><marquee> This provides you with many information of science when you are confused or don't understand any concepts.So make use of this resource.<em>For details contact<a href="contact.html"> 9789784265 or 044-43053172</a></em></marquee></font> 
<font style="font-size:20px">
<?php
	$email = $_POST["email"];
	$pass = $_POST["pass"];
	$con = mysqli_connect("127.0.0.1","root","","test");
	if (mysqli_connect_errno($con))
  	{
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  	}
	$sql=$result1 = mysqli_query($con,"SELECT * FROM mypro WHERE EmailID='$email' AND PASSWORD='$pass'");
	while($row = mysqli_fetch_array($result1))
       	{
 		echo " Welcome ". $row['FirstName']; 
		echo "<br>";
  	}
?>
</font>
<div id="menu"  style="background-color:orange;width:150px;float:left">
<h2>Subject:</h2><br>
<h4><a href="physics.html"> Physics </a><br>
<a href="chemistry.html"> Chemistry </a><br>
<a href="aboutus.html"> About Us </a><br>
<a href="resources.html"> Resources </a><br>
<a href="contact.html"> Contact Us </a><br>
<a href="blog.php"> Blog </a></h4>
</div>
<div id="content" style="background-color:wheat;float:justify" align="center">
<br><table cellpadding=12>

<center><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTQynvXBN2a0HrxnkVj1KmQw1mxkZsmm9_d-G3Gfpd2nKapgkIH"></center>
<a href="forum.html"><h4 style="color:red" align="left">Click here to post your message in forum </h4></a>
<a href="kadiresk.html"><h3 style="color:red" align="right"> Logout </h3></a>
<tr>
<td>
<?php
	
	$user = $_POST["email"];
	$pass = $_POST["pass"];
	$con = mysqli_connect("127.0.0.1","root","","test");
	if (mysqli_connect_errno($con))
  	{
		  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  	}

	$result1 = mysqli_query($con,"SELECT * FROM myacc WHERE UserName='$user' AND PASSWORD='$pass'");

while($row = mysqli_fetch_array($result1))
  {
 	echo "<h2>"."First name:". $row['FirstName']; 
	echo "<br>"; 
	echo "Last name:". $row['LastName'];
	echo "<br>";
	echo "User name:". $row['UserName'];
	echo "<br>";
	echo "EmailID:". $row['EmailID'];
	echo "<br>";
	echo "Gender:". $row['Gender'];
	echo "<br>";
	echo "ContactNumber:". $row['ContactNumber']."</h2>";
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

</html>