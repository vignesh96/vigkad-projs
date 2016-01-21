<html>
<?php
	$f=$_POST["fname"];
	$l=$_POST["lname"];
	$pass=$_POST["pass"];
	$no=$_POST["no"];
	$email=$_POST["email"];
	$i;
	if($f=="")
	{
		echo "First name not filled"."<br>";
	}
	if($l=="")
	{
		echo "Last name not filled"."<br>";;
	}
	if($pass=="")
	{
		echo "Password not filled";
	}
	if($no=="")
	{
		echo "Number to be given"."<br>";
	}
	if(strlen($no)<10)
	{
		echo "Number of digits should be 10";
	}
	if (!preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$email))
  	{
  		echo "Invalid email format";
  	}
	if($email=="")
	{
		echo "Email ID to be filled";
	}	
?>
</html>