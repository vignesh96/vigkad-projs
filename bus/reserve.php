

<?php
$total = 0;
foreach($_POST['seat'] as $cd) 
{
$tot[$total] .= $cd;
$total++;
}


session_start();


$result = mysql_query("SELECT * FROM  route WHERE  routeno='$res'  ");
$_SESSION['id'] = mysql_affected_rows();
while($row = mysql_fetch_array($result))
  {
  $rootno = $row[ routeno];
 $type=$row[type];
$src=$row[source];
$dest = $row[dest];
$tim = $row[tim];
$fare = $row[fare];
  }

?>
<html><head><title>Ganesh Travels</title>

</head><body leftmargin="0" topmargin="0" background="index.php_files/bb_bg.jpg" marginheight="0" marginwidth="0">
<p><br>
</p>
<table align="center"  border="0" cellpadding="0" cellspacing="0" width="778">
  <!-- head str -->
  <tbody><tr>
	<td>
				
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody>
      			<td bgcolor="#FFCC00">
				
		<?php
include("banner.php");
?>
</td>
        </tr>
      </tbody></table>
				
	</td>
</tr>
<tr>
<td><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
	      <td background="index.php_files/link_bg.jpg" height="34"><strong>&nbsp;Welcome
			</strong></td>
</tr>
</tbody></table>
</td>
</tr>
<!-- head end -->

<!-- center str -->
<tr><td><table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr> 
          <!-- lhs str -->
          <td align="right" background="index.php_files/lhs_bg.jpg" valign="top" width="200">
		   &nbsp;<?php
include("banrep.php");
?>
</td>
          <!-- lhs end -->
          <!-- mid str -->
          <td align="center" valign="top" width="580" style="height: 406px" class="style3">

<table border="0" cellpadding="0" cellspacing="6" width="98%" bgcolor="white">
<tbody><tr><td height="6"><img src="index.php_files/spacer.gif" alt="" border="0" height="6" width="1"></td></tr><tr>
                <td valign="top" width="50%" style="height: 170px">
<table border="0" cellpadding="0" cellspacing="0" width="100%" style="height: 169px">
                    <tbody>
                    <tr>
                      <td class="style3">
						
							<span><strong><span class="style2">Reserve 
						Tickets</span><p>&nbsp; Route :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<?php  
echo "$src to $dest";
?>
&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p>&nbsp; Bus Type :  <?php echo $type; ?></p>
<p>&nbsp; Time : <?php echo $tim; ?></p>
						
						<form method="get" action="main.php">
<?php
for($in=0; $in<$total;$in++)
{
?>&nbsp; Passenger Name : 
<input type="text" name="passname" size="20" style="width: 168px"><br>
	<br>
&nbsp; Phone Number:&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="phno" size="20" style="width: 169px"><p>&nbsp; Seat&nbsp; No.:&nbsp;<?php echo $tot[$in]; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
Gender : Male <input type="radio" value="Male" checked name="gen[<?php echo $in;?>]"> Female
<input type="radio" name="gen[<?php echo $in;?>]" value="Female"><br>
	<br>
&nbsp; Fare :&nbsp;&nbsp;<?php echo $fare; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<br>
			<hr>			
	<?php
				}
				?>						
						
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input name="Submit1" type="submit" value=" Reserve Tickets " style="width: 118px">&nbsp;&nbsp;&nbsp;&nbsp;
<input name="Submit2" type="submit" value="Cancel" style="width: 117px"><br>
<br>
						
						</form>
						 </td>
                    </tr>
                  </tbody></table></td>
              </tr>
            </tbody></table> 

			</td>
          <!-- mid end -->
        </tr>
      </tbody></table></td></tr>
<!-- center end -->



<!-- footer str -->
<tr>
	<td background="index.php_files/foot_bg.jpg" height="47" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
			
          <td background="index.php_files/foot_bg.jpg" height="47">
			&nbsp;&nbsp;</td>
		 <!--  <td height="47" align="center" background="images/foot_bg.jpg" class="contentB"><a href="#" class="link1" onclick="Add_To_Favorite();">Bookmark us</a> l <a href="#" class="link1">Tell a friend</a></td> -->

		  <td align="right" background="index.php_files/foot_bg.jpg" height="47">© 
            Copyrights Ganesh Travel, 2009&nbsp;&nbsp;</td>
		</tr>
	</tbody></table>
	</td>
</tr>
<!-- footer end -->


</tbody></table>


</body></html>