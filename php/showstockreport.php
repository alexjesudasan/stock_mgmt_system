


<!DOCTYPE html>
<html>
<title>BYM BLC - Stock Value</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Alexander Jesudasan for BYM">
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="css/all.css">
<style>

table {
  border-collapse: collapse;
}
table, th, td {
  margin-left:auto; margin-right:auto;
  padding: 5px;
}

@media print
{
.noprint {display:none;}
}
</style>
</head>
<body>

<?php
include 'connect.php'; 
?>

<table border="0" cellspacing="0" cellpadding="0" style="font-size: 1px; line-height: 0;">
    <tbody>
        <tr bgcolor="#D6D1d0">
            <td width="100">
                <p>
                    <img
                        width="75"
                        height="75"
                        src="http://localhost/BLC_Counter/images/bym-logo.jpg"
                    />
                </p>
            </td>
            <td width="1200" valign="middle" >
                <p align="center" style="font-family:Arial Rounded MT Bold;font-size:35px;">
                    BLC COUNTER STOCK REPORT
                </p>
            </td>
            <td width="100" valign="center">
                <p> <a href="/BLC_Counter/index.htm">
                    <img
                        width="35"
                        height="30"
                        src="http://localhost/BLC_Counter/images/home.png"
                    />
                </p>
            </td>
        </tr>
        <tr bgcolor="#F33D18">
			<td colspan="3" style="height:10px"><p>.</p></td>
        </tr>	
    </tbody>
</table>  

<div class="w3-container">
<br>
<!--
<form action="#" method="post">
	<span style="padding-left:35em"></span>
	<select name=GodownName>
		<option Selected>BLC</option>
		<?php
		//include 'connect.php'; 
		$records = mysqli_query($conn, "SELECT godown_name From godown");  // Use select query here
        while($data = mysqli_fetch_array($records))
        {
        echo "<option value='". $data['godown_name'] ."'>" .$data['godown_name'] ."</option>";
        }	
		?>
	</select>  

	<span style="padding-left:2em"></span>
	<select name=GodownLoc  style="padding: 1px 30px;">
		<option Selected>Chennai</option>
		<?php
		//include 'connect.php';
        $records = mysqli_query($conn, "SELECT godown_location From godown");  // Use select query here
        while($data = mysqli_fetch_array($records))
        {
        echo "<option value='". $data['godown_location'] ."'>" .$data['godown_location'] ."</option>";
        }	
		?>
	</select> 

	<span style="padding-left:1em"></span>
	<input type="submit" name="submit" value="Submit" >
 </form>
-->
<table border="2">
	<tr>
	<th> Book ID </th>
	<th> Book Name </th>
	<th> Language</th>
	<th> Author</th>
	<th> Quantity</th>
	<th> Price</th>
	</tr>

<?php 
	
	$Gn = "Grace";  // Storing Selected Value In Variable
	//echo "<br>Name of the Godown :" .$Gn;  // Displaying Selected Value

	$Gl = "BLC COUNTER";  // Storing Selected Value In Variable
	//echo "<br>Name of the Godown Loc:" .$Gl;  // Displaying Selected Value

	$sql = "SELECT DISTINCT b.book_id,b.b_name,b.b_lang,b.author,q.quantity,p.s_price From books b,quantity q, price p where 
	b.book_id=q.book_id AND p.book_id=b.book_id AND q.gn_name='$Gn'";

	$result = $conn->query($sql);
	if (isset($result->num_rows) && $result->num_rows > 0){
	while ($row =$result->fetch_assoc()){
    echo "<tr><td>" . $row["book_id"]."</td><td>".$row["b_name"]."</td><td>" .$row["b_lang"]."</td><td>"
  .$row["author"]."</td><td>".$row["quantity"]."</td><td>" .$row["s_price"]."</td>";
	}
	
 
 /*SELECT SUM(p.s_price*q.quantity) From books b,quantity q, price p 
 WHERE b.book_id=q.book_id AND p.book_id=b.book_id AND q.gn_name='BLC' AND q.gn_location='Chennai'
 */
 
	$sql = "SELECT SUM(p.s_price*q.quantity) as Total From books b,quantity q, price p 
	WHERE b.book_id=q.book_id AND p.book_id=b.book_id AND q.gn_name='$Gn' AND q.gn_location='$Gl'";

	$result = $conn->query($sql);
	if (isset($result->num_rows) > 0){
	while ($row =$result->fetch_assoc()){
    echo "<tr><td>"."</td><td>"."</td><td>"."</td><td>"."</td><td><b>".'TOTAL'."</td></b><td><b>".$row["Total"]."</td></b></tr>";
	}
	} 
 }
$conn->close();
?>
<br>
</table>
<div class="noprint">
	<br>
	<span style="padding-right:40em"></span>
	<button onclick="window.print()">PRINT</button>
 </div>
</body>
</html> 