<html>
<head>
<meta name="author" content="Alexander Jesudasan">
</head>

<body>
<?php 

include 'connect.php'; 

 if(isset($_POST['addsubmit'])) {
$bkname= $_POST["bname"];
$bklang = $_POST["blang"];
$inDate =$_POST["iDate"];
$inQty=$_POST["iQty"];
$prcprice =$_POST["cprice"];
$prsprice=$_POST["sprice"];
$gorack =$_POST["grack"];
$innote=$_POST["inNote"];
 
 
$brname ="Grace";
$brlocation ="BLC COUNTER";
$prname ="Babuji Printers";
$prlocation ="Chennai";

$currQty =0;

/*Obtain the Book Id from Book name and Language */
//echo 'The values are :'. $bkname . '<br>'. $bklang .'<br>';

$result = mysqli_query($conn, "SELECT book_id From books  WHERE b_name='$bkname' AND b_lang='$bklang'");
if ($result->num_rows > 0){
	while ($row =$result->fetch_assoc()){
	$bkId = $row["book_id"];
//    echo "The book id is :" .$bkId. "<br>";
  }
}else{
//	echo "<br>The book id is not present in db ";
	echo "<script>
    alert('Book ID is not present in db');
	window.location.href='/BLC_Counter/Forms/add-book.php';
	</script>";
}

echo 'The values are :'. $bkId . '<br>'. $brname . '<br>' . $brlocation . '<br>'. $inDate . '<br>'. $inQty . '<br>';

$sql = "INSERT INTO inregister (book_id,gn_name,gn_location,in_date,in_quantity,in_note) VALUES ('$bkId','$brname','$brlocation','$inDate',$inQty,'$innote')";
if (!mysqli_query($conn,$sql)){
	echo "In Register Record not created <br>";
	echo("Error description: " . $conn -> error);
	echo "<script>
	alert('Incoming register record not created');
	exit(0);
	window.location.href='/BLC_Counter/Forms/add-book.php';
	</script>";
}else{
	echo "<script>alert('Incoming Register Record Created Successfully');
	</script>";
	
	/*Retrieve the current quantity in stock  using book id*/
	$result = mysqli_query($conn, "SELECT quantity From quantity  WHERE book_id='$bkId' AND gn_name='$brname'");
	if (isset($result->num_rows) && $result->num_rows > 0){
		while ($row =$result->fetch_assoc()){
		$currQty = $row["quantity"];
		echo "The Current Quantity is :" .$currQty. "<br>";
		echo "<br>The present balance is :". $currQty;
		echo "<br>The Book Id is :". $bkId;
		$currQty = $currQty + $inQty;
		$sql = "UPDATE quantity SET quantity ='$currQty' AND rack='$gorack' WHERE book_id='$bkId'";
		if (!mysqli_query($conn,$sql)){
//			echo "Record not updated <br>";
//			echo("Error description: " .$conn -> error);
			echo "<script>
			alert('Quantity Record not updated');
			window.location.href='/BLC_Counter/Forms/add-book.php';
			</script>";
		}else{
//			echo "<br>The quantity record is updated with:". $currQty;
			echo "<script>
			alert('Quantity Record too is updated successfully');
			window.location.href='/BLC_Counter/Forms/add-book.php';
			</script>";
		}
		}
	}else{
//		echo 'The values are :'. $bkId . '<br>'. $brname . '<br>' . $brlocation . '<br>'. $inQty . '<br>'. $gorack . '<br>';
		$sql1 = "INSERT INTO quantity (book_id,gn_name,gn_location,quantity,rack) VALUES ('$bkId','$brname','$brlocation',$inQty,'$gorack')";
		if (!mysqli_query($conn,$sql1)){
			echo "Quantity record not created <br>";
//			echo "<script>
//			alert('Quantity Record is not created successfully');
//			window.location.href='/BLSMS/fend/in-stock.php';
//			</script>";
			}else{
				echo "Quantity record created successfully<br>";
				echo "<script>
				alert('Quantity Record too is created successfully');
				</script>";
				$sql2 = "INSERT INTO price (book_id,p_name,p_location,c_price,s_price) VALUES ('$bkId','$prname','$prlocation',$prcprice,$prsprice)";
				if (!mysqli_query($conn,$sql2)){
				echo "Price Record not created <br>";
				echo "<script>
				alert('Price Record is not updated');
				window.location.href='/BLC_Counter/Forms/add-book.php';
				</script>";
				}else{
//				echo "Price record created successfully<br>";
				echo "<script>
				alert('Price Record is updated successfully');
				window.location.href='/BLC_Counter/Forms/add-book.php';
				</script>";
		}
	}
//			echo "The Current Quantity is :" .$inQty. "<br>";
		}
		
	}

 }	
$conn->close();
?> 

</body>
</html>