<html>
<?php
$con=mysqli_connect("127.0.0.1","peter","","test");

if (mysqli_connect_errno($con))
{
	  echo "Failed to connect to MySQL: " . mysqli_connect_error($con);
}

$sql="CREATE TABLE mydatabase(FirstName CHAR(30),LastName CHAR(30),Age INT)";
if (mysqli_query($con,$sql))
{
	  echo "Database  created successfully";
}
else
  {
  	echo "Error creating database: " . mysqli_error($con);
  }

mysqli_query($con,"INSERT INTO mydatabase (FirstName, LastName, Age)
VALUES ('Peter', 'Griffin',35)");

mysqli_query($con,"INSERT INTO mydatabase (FirstName, LastName, Age)
VALUES ('Glenn', 'Quagmire',33)");

$result = mysqli_query($con,"SELECT * FROM mydatabase");

while($row = mysqli_fetch_array($result))
{
	  echo $row['FirstName'] . " " . $row['LastName'] . " " . $row['Age'];
        	echo "<br>";
}
$result1 = mysqli_query($con,"SELECT * FROM mydatabase
WHERE FirstName='Peter'");

while($row = mysqli_fetch_array($result1))
{
	  echo $row['FirstName'] . " " . $row['LastName'];
	  echo "<br>";
}
$result3 = mysqli_query($con,"SELECT * FROM mydatabase ORDER BY age");

while($row = mysqli_fetch_array($result3))
  {
	  echo $row['FirstName'];
 	  echo "Last Name " . $row['LastName'];
  	  echo " " . $row['Age'];
          echo "<br>";
  }

mysqli_query($con,"DELETE FROM mydatabase WHERE LastName='Griffin'");
mysqli_query($con,"UPDATE mydatabase SET Age=36
WHERE FirstName='Peter' AND LastName='Griffin'");

mysqli_close($con);
?> 
</html>
