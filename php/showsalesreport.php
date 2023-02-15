<!DOCTYPE html>
<html>
<title>BYM BLC - Show Sales Report</title>
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
                    BLC Counter Sales Report
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
<form action="#" method="post">
	<span style="padding-left:20em"></span>
	From Date:<input type="date" name="fDate" Required>   

	<span style="padding-left:10em"></span>
	To Date:<input type="date" name="tDate" Required> 
  
  <!--
	<span style="padding-left:5em"></span>
	<select name=GodownName>
    <option Selected>  BLC  </option>
    <?php
		$records = mysqli_query($conn, "SELECT godown_name From godown");  // Use select query here
        while($data = mysqli_fetch_array($records))
        {
        echo "<option value='". $data['godown_name'] ."'>" .$data['godown_name'] ."</option>";
        }	
    ?>
	</select>  

	<span style="padding-left:2em"></span>
	<select name=GodownLoc style="padding: 1px 30px;">
    <option Selected> Chennai  </option>
    <?php
	
        $records = mysqli_query($conn, "SELECT godown_location From godown");  // Use select query here
        while($data = mysqli_fetch_array($records))
        {
        echo "<option value='". $data['godown_location'] ."'>" .$data['godown_location'] ."</option>";
        }	
    ?>
	</select>
-->	
	<span style="padding-left:5em"></span>
	<input type="submit" name="submit" value="Submit" >
</form>
<br><br>
<table border="2">
	<tr>
	<th> Out TrId </th>
	<th> Book Id</th>
	<th> Book Name</th>
	<th> Language</th>
	<th> Author</th>
	<th> Out Date</th>
	<th> Quantity</th>
	<th> Remarks</th>
	</tr>

	<?php
	if(isset($_POST['submit'])) {
		$From_Date = $_POST['fDate'];  
		$To_Date = $_POST['tDate']; 
		//echo "<br>From/To Date:" .$From_Date .$To_Date; // Displaying Selected Value
		
		$Godown_Name ="Grace";
        $Godown_Loc ="BLC COUNTER";

//		$Godown_Name =$_POST['GodownName'];
//		$Godown_Loc= $_POST['GodownLoc'];
	
/*
$sql="SELECT outregister.out_tid,books.*, price.p_name,price.p_location, outregister.out_date,outregister.out_quantity, 
quantity.rack FROM `outregister`,`books`,`price`,`quantity` WHERE books.book_id=outregister.book_id AND 
quantity.book_id=books.book_id AND quantity.gn_name=outregister.gn_name AND quantity.gn_location=outregister.gn_location 
AND books.book_id=price.book_id AND outregister.out_date BETWEEN '2020-05-15' AND '2020-05-19'";
*/

		$sql="SELECT outregister.out_tid,books.*, outregister.out_date,outregister.out_quantity,outregister.out_note FROM `outregister`,`books`,`price`,`quantity` WHERE books.book_id=outregister.book_id AND 
		quantity.book_id=books.book_id AND outregister.gn_name='$Godown_Name' AND outregister.gn_location='$Godown_Loc' 
		AND books.book_id=price.book_id AND outregister.out_date BETWEEN '$From_Date' AND '$To_Date'";

		$result = $conn->query($sql);
		if ($result->num_rows > 0){
		while ($row =$result->fetch_assoc()){
		echo "<tr><td>" . $row['out_tid']."</td><td>".$row['book_id']."</td><td>" .$row['b_name']."</td><td>" 
		.$row['b_lang']."</td><td>" . $row['author']."</td><td>".$row['out_date']."</td><td>".$row['out_quantity']."</td><td>".$row['out_note']."</td></tr>";
		}
		}
	}
	$conn->close();
?>
<br>
</table>

</div>

</body>
</html> 