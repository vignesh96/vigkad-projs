<html>
<?php
		$con=mysqli_connect("127.0.0.1","peter","","test");
		if(mysqli_errno($con))
		{
			echo "Error creating connection".mysqli_error();
		}
	if(mysqli_query($con,"CREATE TABLE mytab (FirstName CHAR(30),LastName CHAR(30),UserName CHAR(30),Gender CHAR(10),Password CHAR(30),ContactNumber CHAR(30),EmailID CHAR(30),Seats CHAR(10))"))
	{
		echo "Table created successfully";
	}
	else
	{
		echo "Error creating table".mysqli_error($con);
	}
?>
</html>