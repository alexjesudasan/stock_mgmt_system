<html>
<body>
<?php 

include 'connect.php'; 

 if(isset($_POST['addsubmit'])) { 

$outTid = $_POST["oTid"];
$bkname= $_POST["bName"];
$bklang = $_POST["bLang"];


$outDate =$_POST["oDate"];
$outQty=$_POST["oQty"];
$Remarks =$_POST["outNote"];

$brname ="Grace";
$brlocation ="BLC COUNTER";


$result = mysqli_query($conn, "SELECT DISTINCT book_id From books  WHERE b_name='$bkname' AND b_lang='$bklang'");
	
if (isset($result->num_rows) && $result->num_rows > 0){
	while ($row =$result->fetch_assoc()){
	$bkId = $row["book_id"];
//	echo "The book id is :" .$bkId. "<br>";
  }
} else{
	echo "<script>
    alert('The book is not added in the system for shipment');
	exit(0);
	</script>";
}

//echo 'The values are :'. $outTid . '<br>'. $bkId . '<br>'. $brname . '<br>' . $brlocation . '<br>'. $outDate . '<br>'. $outQty . '<br>';

$InQty =0;

$result = mysqli_query($conn, "SELECT quantity From quantity  WHERE book_id='$bkId'");
	
if (isset($result->num_rows) && $result->num_rows > 0){
	while ($row =$result->fetch_assoc()){
	$currQty = $row["quantity"];
//   echo "The Current Quantity is :" .$currQty. "<br>";
  }
}

// echo "Requested Quantity for shipment :" .$outQty. "<br>";

if ($currQty < $outQty){
//	echo "<br>Available stock is " .$currQty. " which is less than the requested quantity " .$outQty. "<br>";
	echo "<script>
    alert('Available stock is less than the requested quantity');
	exit(0);
	</script>";	
}

$sql = "INSERT INTO outregister (out_tid,book_id,gn_name,gn_location,out_date,out_quantity,out_note) VALUES ('$outTid','$bkId','$brname','$brlocation','$outDate',$outQty,'$Remarks')";
if (!mysqli_query($conn,$sql)){
	echo " OutRegister Record not created <br>";
	echo("Error description: " . $conn -> error);
	echo "<script>
	alert('Out Register is not updated');
	//window.location.href='/xampp/BLC_Counter/Forms/sale-book.php'; 
	</script>";
}else{
	echo "OutRegister record created successfully<br>";
	echo "<script>
		alert('Outgoing Register is updated successfully');
		</script>";
	
	$currQty = $currQty - $outQty;
    echo "<br>The present balance is :". $currQty;

	$sql = "UPDATE quantity SET quantity ='$currQty' WHERE book_id='$bkId'";
	if (!mysqli_query($conn,$sql)){
		echo "Record not updated <br>";
		echo("Error description: " .$conn -> error);
		echo "<script>
		alert('Quantity record is not updated');
		window.location.href='/BLC_Counter/Forms/sale-book.php'
		</script>";
	}else{
		echo "<script>
		alert('Quantity record is updated successfully');
		window.location.href='/BLC_Counter/Forms/sale-book.php'
		</script>";
		echo "<br>Quantity record updated successfully<br>";
	}	
 }
 
}

$conn->close();

?> 

</body>
</html>