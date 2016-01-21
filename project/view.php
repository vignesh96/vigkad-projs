<html>
<?php
$con=mysqli_connect("localhost","root","","mi_db");

if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

$result = mysqli_query($con,"SELECT * FROM bie");

echo "<table border='1'>
<tr>
<th>NAME</th>
<th>EMAIL</th>
<th>AGE</th>
<th>STAUS</th>
<th>ADDRESS</th>
<
</tr>";

while($row = mysqli_fetch_array($result))
  {
  echo "<tr>";
  echo "<td>" . $row['name'] . "</td>";
  echo "<td>" . $row['email'] . "</td>";
   echo "<td>" . $row['age'] . "</td>";
     echo "<td>" . $row['status'] . "</td>";
     echo "<td>" . $row['address'] . "</td>";

  echo "</tr>";
  }
echo "</table>";


?>
</html>