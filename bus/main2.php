<?php
session_start();  

$_SESSION['meuser']=$sess;
echo $rootno;

$result = mysql_query("SELECT * FROM  route WHERE  routeno='2'");
$_SESSION['id'] = mysql_affected_rows();
while($row = mysql_fetch_array($result))
  {
  	$rootno = $row[routeno];
 	$type=$row[type];
	$src=$row[source];
	$dest = $row[dest];
	echo $bid = $row[busid];
  }
  
//$result1 = mysql_query("SELECT * FROM  brno WHERE  routeno='$rootno' ");
//while($row = mysql_fetch_array($result1))
//  {
//  	
//  }
?>
<html><head><title>Welcome to Ganesh Travels</title>


<style type="text/css">
.style1 {
	text-align: right;
}
</style>


</head>
<body leftmargin="0" topmargin="0" background="index.php_files/bb_bg.jpg" marginheight="0" marginwidth="0">
<p><br>
</p>
<table align="center"  border="0" cellpadding="0" cellspacing="0" width="778">
  <!-- head str -->
  <tbody>
<!-- head end -->

<!-- center str -->
	<tr>
	<td bgcolor="#FFCC00">
				
		<?php
include("banner.php");
?>
</td>
</tr>
	<tr>
	<td bgcolor="#FFCC00">
				
		&nbsp; <strong>WelCome <?php echo $_SESSION['meuser']; ?></strong></td>
</tr>
<tr><td><table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr> 
          <!-- lhs str -->
          <td rowspan="2" align="right" background="index.php_files/lhs_bg.jpg" valign="top" width="200">
		
			<!--- report -->
<?php
include("banrep.php");
?>
</td>

<!--- report -->
          <!-- lhs end -->
          <!-- mid str -->
          <td align="center" height="" valign="top" width="580" class="style1">

<table border="0" cellpadding="0" cellspacing="6" bgcolor="white" style="width: 99%">
<tbody><tr><td height="6"><img src="index.php_files/spacer.gif" alt="" border="0" height="6" width="1"></td></tr><tr>
                <td valign="top" width="50%" style="height: 170px">
<table border="0" cellpadding="0" cellspacing="0" width="100%" style="height: 169px">
                    
                    <tbody>
                    <tr>
                      <td bgcolor="#FFFFFF" bordercolor="#FFFFFF" style="height: 121px" class="style2">
                      
                      
                      <form method="post" action="reserve.php?res=<?php echo $rootno; ?>" style="height: 93px">
						<strong>Route : <?php echo "$src to $dest"; ?><br>
						<br>
						Bus Type : <?php echo "$type"; ?><br>
						<table border="1" cellspacing="1" id="AutoNumber1" style="width: 18%; height: 74px" align="right">
  <tr>
    <td width="74%"><b>Available</b></td>
    <td style="width: 28%">&nbsp;</td>
  </tr>
  <tr>
    <td width="74%"><b>Reserved</b></td>
    <td bgcolor="blue" style="width: 28%">&nbsp;</td>
  </tr>
  <tr>
    <td width="74%"><b>Booked</b></td>
    <td bgcolor="red" style="width: 28%">&nbsp;</td>
  </tr>
</table></strong><br>
						</td>
                    </tr>
                    <tr>
                    
                      <td bgcolor="#FFFFFF" bordercolor="#FFFFFF">&nbsp;<?php include($type.".php"); ?></td>
                    </tr>
                    <tr>
                      <td bgcolor="#FFFFFF" bordercolor="#FFFFFF"><span><strong>
						<input name="Submit1" type="submit" value="Reserve Ticket" style="width: 120px">&nbsp;&nbsp;
						<input name="Submit2" type="submit" value="Book Ticket" style="width: 100px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="Submit3" type="submit" value="Cancel" style="width: 88px">&nbsp;</strong></span></td>
                    </tr></form>
                  </tbody></table></td>
              </tr>
            </tbody></table> 

			</td>
          <!-- mid end -->
        </tr>
        <tr>
          <td align="center" background="index.php_files/bot_bg.jpg" height="69"><table border="0" cellpadding="0" cellspacing="0" width="60%">
      <tbody><tr> 
        <td style="height: 10px"></td>
        <td style="height: 10px"></td>
        <td style="height: 10px"></td>
      </tr>
    </tbody></table></td>
        </tr>
      </tbody></table></td></tr>
<!-- center end -->



<!-- footer str -->
<tr>
	<td background="index.php_files/foot_bg.jpg" height="47" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
			
          <td background="index.php_files/foot_bg.jpg" height="47">
			&nbsp;&nbsp;</td>
		

		  <td align="right" background="index.php_files/foot_bg.jpg" height="47">© 
            Copyrights Ganesh Travel, 2009&nbsp;&nbsp;</td>
		</tr>
	</tbody></table>
	</td>
</tr>
<!-- footer end -->


</tbody></table>


</body></html>