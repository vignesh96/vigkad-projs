<?php
session_start(); 

$_SESSION['meuser']=$sess;

$result2 = mysql_query("SELECT * FROM route");
$in=0;
mysql_affected_rows();
while($row = mysql_fetch_array($result2))
  {
 $s[$in]  = $row[source];
 $d[$in]  = $row[dest];
 $in++;
  }	

if(isset($_POST[login]))
{
$_SESSION['meuser']="";
$result = mysql_query("SELECT * FROM admin WHERE un='$_POST[un]' AND pass='$_POST[pass]'  ");

echo $_SESSION['id'] = mysql_affected_rows();

while($row = mysql_fetch_array($result))
  {
   $_SESSION['meuser']=$_POST[un];
  }
}

if(isset($_POST[View]))
{
$_SESSION['meuser'] = $sess;
$date = "$_POST[year]-$_POST[month]-$_POST[dy]";
$result2 = mysql_query("SELECT * FROM route WHERE  source='$_POST[From]' AND  dest = '$_POST[To]' AND  date='$date' ");
$jn=0;
//echo mysql_affected_rows();
while($row = mysql_fetch_array($result2))
  {
 	$sc[$jn]   =  $row[source];
	$dt[$jn]   =  $row[dest];
 	$tim[$jn]  =  $row[tim];
 	$far[$jn]  =  $row[fare];
 	$typ[$jn]  =  $row[type];
 	$rtno[$jn] =  $row[routeno];
 		
		 $jn++;
  }	
}

if( isset($_SESSION['meuser']) || $_SESSION['id']==1 )
{
?>
<html>
<head>
<title>Welcome to Ganesh Travels</title>


</head>
<body leftmargin="0" topmargin="0" background="index.php_files/bb_bg.jpg" marginheight="0" marginwidth="0">
<p><br>
</p>
<table align="center"  border="0" cellpadding="0" cellspacing="0" width="778">
  <!-- head str -->
  <tbody><tr>
	<td>
				
	<?php
	include("banner.php");
	?>			
	</td>
</tr>
<tr>
<td><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
	      <td background="index.php_files/link_bg.jpg" height="34">&nbsp; WelCome <?php echo $_SESSION['meuser']; ?></td>
</tr>
</tbody></table>
</td>
</tr>
<!-- head end -->

<!-- center str -->
<tr><td><table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr> 
          <!-- lhs str -->
          <td rowspan="2" background="index.php_files/lhs_bg.jpg" valign="top" width="200" class="style20">
		   <div>
&nbsp;&nbsp;&nbsp; <br>
			<span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span>Accounts and Reports</span></strong></span><br>
			<br>
			</div>
			
			<!--- report -->
<?php
include("banrep.php");
?>


<!--- report -->
</td>
          <!-- lhs end -->
          <!-- mid str -->
          <td align="center" height="" valign="top" width="580">

<table border="0" cellpadding="0" cellspacing="6" width="98%" bgcolor="white">
<tbody><tr><td height="6"><img src="index.php_files/spacer.gif" alt="" border="0" height="6" width="1"></td></tr><tr>
                <td valign="top" width="50%" style="height: 170px" bordercolor="#000000" bgcolor="#FFFFFF">
<table border="1" cellspacing="1" width="100%" style="height: 169px; border-collapse:collapse" bordercolor="#000000">
                    <tbody><tr>
                    <form method="POST" action="main.php?sess=<?php echo $_SESSION['meuser']; ?>">
                      <td style="height: 40px" ><strong><hr>&nbsp;Select Journey 
						Date&nbsp;: <select name="dy">
						<option>Day</option>
						<?php
						for($i=1; $i<=31; $i++)
						{
							echo "<option value=$i>$i</option>";
						}
						
						echo "</select>";
						echo "<select name='month'>";
						echo "<option>Month</option>";

						for($ij=01; $ij<=12; $ij++)
						{
							echo "<option value=$ij>$ij</option>";
						}
						?>
						</select>
						
						<select name="year">
						<option>Year</option>
						<?php
						for($ik=2009; $ik<=2010; $ik++)
						{
							echo "<option value=$ik>$ik</option>";
						}
						?>
						</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</strong><br>
						<br>
							<strong>
						
							&nbsp;
						
							From :</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select name="From" >
						<option>From</option>
						<?php
						for($ss=0; $ss<$in;$ss++ )
					
						{
							if($src != $s[$ss])
							{
							echo "<option value='$s[$ss]'>$s[$ss]</option> ";
							$src=$s[$ss];
							}
						}
						?>
						
						</select>&nbsp;&nbsp;<strong>&nbsp; To</strong>&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<select name="To" >
						<option>To</option>
						<?php
						for($ss=0; $ss<$in;$ss++ )
						{
							if($src != $d[$ss])
							{
						echo "<option value='$d[$ss]'>$d[$ss]</option> ";
							$src=$d[$ss];
							}
						}
						?>
						</select>&nbsp;&nbsp;
							<input name="View" type="submit" value="submit"></form>
							
							<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
						
						</td>
                    </tr>
                    <tr>
                      <td bgcolor="white" >
							
							<hr>
							
						<table style="width: 549; border-collapse:collapse" border="2" bordercolor="#000000" cellpadding="0" cellspacing="0" height="118">
							<tr>
								<td style="width: 118" bordercolor="#000000" align="left" height="19"><strong>
								&nbsp;
								Date</strong></td>
					<td colspan="2"  bordercolor="#000000" width="260" height="19">&nbsp;<?php echo "$_POST[dy] - $_POST[month] - $_POST[year]" ; ?></td>
							</tr>
							<tr>
								<td style="width: 118"  bordercolor="#000000" align="left" height="19"><strong>
								&nbsp;
								Source</strong></td>
								<td colspan="2"  bordercolor="#000000" width="260" height="19">&nbsp;&nbsp;<?php echo $_POST[From]; ?></td>
							</tr>
							<tr>
								<td style="width: 118"  bordercolor="#000000" align="left" height="19"><strong>
								&nbsp;
								Destination</strong></td>
								<td colspan="2"  bordercolor="#000000" width="260" height="19">&nbsp;&nbsp;<?php echo $_POST[To]; ?></td>
							</tr>
							<tr>
								<td style="width: 379"  bordercolor="#000000" colspan="3" height="19">&nbsp;</td>
							</tr>
							<tr>
								<td style="width: 118"  bordercolor="#000000" align="center" height="18"> <strong>
								&nbsp;
								Time&nbsp;</strong></td>
								<td  style="width: 159" bordercolor="#000000" align="center" height="18"><strong>&nbsp; Bus Type
						</strong></td>
								<td  bordercolor="#000000" width="100" align="center" height="18"><strong>&nbsp; Price</strong></td>
								<td  bordercolor="#000000" width="165" align="center" height="18"><strong>Book</strong></td>
							</tr>
								<?php 
								for($co=0; $co<$jn; $co++)
								{
								?>
							<tr>
								<td style="width: 118"  bordercolor="#000000" height="19" align="center">&nbsp;	<?php  echo $tim[$co];  ?>	</td>
								<td  style="width: 159" bordercolor="#000000" height="19" align="center">&nbsp;  <?php   echo $typ[$co]; ?></td>
								<td  bordercolor="#000000" width="100" height="19" align="center">&nbsp; <?php echo $far[$co]; ?></td>
								<td  bordercolor="#000000" width="165" height="19">
                                <p align="center"><a href="main2.php?rootno=<?php echo $rtno[$co];?>&sess=<?php echo $sess;?> ">Click Here</a></td>
							</tr>
							<?php
							}
							?>
						</table>
						<strong>
						<br>
						</strong><br>
						</td>
                    </tr>
                  </tbody></table></td>
              </tr>
            </tbody></table> 

			</td>
          <!-- mid end -->
        </tr>
        <tr>
          <td align="center" background="index.php_files/bot_bg.jpg" height="69"><table border="0" cellpadding="0" cellspacing="0" width="60%">
      <tbody><tr> 
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </tbody></table>
			<table border="0" cellpadding="0" cellspacing="0" width="100%" style="height: 31px">
<tbody><tr>
			
          <td background="index.php_files/foot_bg.jpg" height="47">
			&nbsp;&nbsp;</td>
	

		  <td align="right" background="index.php_files/foot_bg.jpg" height="47">
            Copyrights Ganesh Travel, 2009 &nbsp;&nbsp;</td>
		</tr>
	</tbody></table>
			</td>
        </tr>
      </tbody></table></td></tr>
<!-- center end -->



<!-- footer str -->
<tr>
	<td background="index.php_files/foot_bg.jpg" height="47" valign="top">&nbsp;</td>
</tr>
<!-- footer end -->


</tbody></table><br>
<?php
}

else
{
echo "Incorrect Username or Password...Please Try Again <br>";
echo "<a href='index.php'>Click Here to Login</a>";
}

?>

</body></html>
<?php
mysql_close($con);
?>