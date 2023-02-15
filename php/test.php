
<!--<table border="2"> <tr> 
  <th> Book ID </th> 
  <th> Book Name </th> 
  <th> Language</th>
  <th> Author</th>
  <th> Quantity</th>
  <th> Price</th></tr>
-->
<?php
  $html = '<table border="2">
  <tr> 
  <th> Book ID </th> 
  <th> Book Name </th> 
  <th> Language</th>
  <th> Author</th>
  <th> Quantity</th>
  <th> Price</th></tr>';


	
	include 'connect.php'; 
	$Gn = "Grace";  // Storing Selected Value In Variable
	//echo "<br>Name of the Godown :" .$Gn;  // Displaying Selected Value

	$Gl = "BLC COUNTER";  // Storing Selected Value In Variable
	//echo "<br>Name of the Godown Loc:" .$Gl;  // Displaying Selected Value

	$sql = "SELECT DISTINCT b.book_id,b.b_name,b.b_lang,b.author,q.quantity,p.s_price From books b,quantity q, price p where 
	b.book_id=q.book_id AND p.book_id=b.book_id AND q.gn_name='$Gn'";

	$result = $conn->query($sql);
	if (isset($result->num_rows) && $result->num_rows > 0){
	while ($row =$result->fetch_assoc()){
  //  echo "<tr><td>" . $row["book_id"]."</td><td>".$row["b_name"]."</td><td>" .$row["b_lang"]."</td><td>".$row["author"]."</td><td>".$row["quantity"]."</td><td>" .$row["s_price"]."</td>";
   
    $html.="<tr><td>" . $row["book_id"]."</td><td>".$row["b_name"]."</td><td>" .$row["b_lang"]."</td><td>"
   .$row["author"]."</td><td>".$row["quantity"]."</td><td>" .$row["s_price"]."</td><br />";
	}
//echo $html;
 
 /*SELECT SUM(p.s_price*q.quantity) From books b,quantity q, price p 
 WHERE b.book_id=q.book_id AND p.book_id=b.book_id AND q.gn_name='BLC' AND q.gn_location='Chennai'
 */
	
	$sql = "SELECT SUM(p.s_price*q.quantity) as Total From books b,quantity q, price p 
	WHERE b.book_id=q.book_id AND p.book_id=b.book_id AND q.gn_name='$Gn' AND q.gn_location='$Gl'";

	$result = $conn->query($sql);
	if (isset($result->num_rows) > 0){
	while ($row =$result->fetch_assoc()){
   // echo "<tr><td>"."</td><td>"."</td><td>"."</td><td>"."</td><td><b>".'TOTAL'."</td></b><td><b>".$row["Total"]."</td></b></tr>";
	$html.="<tr><td>"."</td><td>"."</td><td>"."</td><td>"."</td><td><b>".'TOTAL'."</td></b><td><b>".$row["Total"]."</td></b></tr>";
	
	}
	} 
//  $html = '</table>';

} 
$conn->close();
 //echo "The table in the buffer is";
 echo $html;
?>
 <!--
<script>  mytable = "<?php echo $html; ?>";
var win = window.open(); // We create the window
win.document.open();
win.document.write("How are you");
win.print();
win.close();
</script>
-->
<div class="text-center">
  <button onclick="window.print()">PRINT</button>
 </div>

<!--
<script type="text/javascript">
  mytable = "<?php echo $html; ?>";
  var win = window.open(); // We create the window
  win.document.open(); // We open the window (popup-warning!) 
  win.document.write(mytable); // Insert table here <--
  win.print(); // Print the content
  win.close(); // Close down the page
</script>
-->