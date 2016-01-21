<html>
<?php
		$con=mysqli_connect("127.0.0.1","peter","","test");
		if (mysqli_connect_errno($con))
  		{
  			echo "Failed to connect to MySQL: ". mysqli_connect_error();
  		}	 	
		$sql="CREATE TABLE myshow2(UserName CHAR(30),Timings CHAR(30),Date CHAR(30),Movie CHAR(30),Multi CHAR(30),Multi1 CHAR(30),Multi2 CHAR(30))";
		if(mysqli_query($con,$sql))
		{
			echo "Created successfully";
		}
		else
		{
			echo "Not created successfully";
		}											
	
?>
</html>