<html>
<a href="kadiresk.html"> Click here to go back to main page </a>
<body style="background-color:violet">
<div id="container" style="background-color:yellow">
<div id="header" height:300px>
<h1 align="center" style="background-color:teal;color:red"> Science World </h1>
<h3 align="center">Gain the knowledge by viewing<sub> @ </sub> this world</h3></div></div><br>
<font style="background-color:blue;color: ivory;size:9px"><marquee> This provides you with many information of science when you are confused or don't understand any concepts.So make use of this resource.<em>For details contact<a href="contact.html"> 9789784265 or 044-43053172</a></em></marquee></font> 
<a href="signin.html"><p align="right"> Sign in </a><br> 
<a href="joinus.html">Join us</a> 
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
<?php
	$f=$_POST['fname'];
	$l=$_POST['lname'];
	$pass=$_POST['pass'];
	$no=$_POST['no'];
	$email=$_POST['email'];
	$s=$_POST['sex'];
	$text=$_POST['text'];
	$a=$_POST['accept'];
	$c=$_POST['cpass'];
	$u=$_POST['uname'];
	$i=1;
	if($s=="male")
	{
		$s='m';
	}
	if($s=="female")
	{
		$s='f';
	}
	if($u=="")
	{
		echo "UserName to be filled";
	}
	if($f=="")
	{
		echo "First name not filled<br>";
		$i=0;
	}
	if($l=="")
	{
		echo "Last name not filled<br>";
		$i=0;
	 }
	if($pass=="")
	{
		echo "Password not filled<br>";
		$i=0;		
	}
	else if($c!=$pass)
	{
		echo "Corfirmed Password doesn't match the password<br>";
		$i=0;
	}
	if($no=="")
	{
		echo "Number to be given<br> ";
		$i=0;
	}
	else if(strlen($no)<10)
	{
		echo "Number of digits should be 10<br>";
		$i=0;
	}
	else if(!is_numeric($no))
	{
		echo "Not a number<br>";
		$i=0;
	}
	if($email=="")
	{
		echo "Email ID to be filled<br>";	
		$i=0;	
	}
	else if (!preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$email))
  	{
  		echo "Invalid email format<br>";
		$i=0;
  	}
	if($s=="")
	{
		echo "Radio Button to be filled<br>";
		$i=0;	
	}
	if($a=="")
	{
		echo "Accept the conditions first<br>";
		$i=0;
	}
	if($i==1)
	{
		echo "<h2>"."<p>"."You have successfully created your account . Now you can log in"."</p>"."</h2>";
		$con=mysqli_connect("127.0.0.1","peter","","test");
		if (mysqli_connect_errno($con))
  		{
  			echo "Failed to connect to MySQL: " . mysqli_connect_error();
  		}	 	
		mysqli_query($con,"INSERT INTO myacc(FirstName,LastName,UserName,Gender,Password,ContactNumber,EmailID,Address)
		VALUES ('$f', '$l','$u','$s','$pass','$no','$email','$text')");
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