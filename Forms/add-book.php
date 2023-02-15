<!DOCTYPE html>
<html>
  <head>
    <title>Add Book in the List </title>
  	<meta name="author" content="Alexander Jesudasan for BYM">
	<link rel="stylesheet" href="css/w3.css">
	<link rel="stylesheet" href="css/all.css">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, label {
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 13px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      line-height: 50px;
      font-size: 50px;
      color: #fff;
      z-index: 2;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 100px;
      }
      form {
      width: 90%;
      padding: 20px;
      border-radius: 10px;
      background: #fff;
      box-shadow: 0 0 20px 0  #004d00;
      }
      input {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:#004d00;
      }
      .item input:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 6px 0 #004d00;
      color:#004d00;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      }
      .item i {
      right: 2%;
      top: 30px;
      z-index: 1;
      }
      [type="date"]::-webkit-calendar-picker-indicator {
      right: 1%;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background: #004d00;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background: #008000;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: nowrap;
      justify-content: space-between;
      }
      .name-item input, .city-item input,.name-item div {
      width: calc(30% - 80px); 
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      }
	  .input-container input {
    border: none;
    box-sizing: border-box;
    outline: 0;
    padding: .75rem;
    position: relative;
    width: 100%;
}

input[type="date"]::-webkit-calendar-picker-indicator {
    background: transparent;
    bottom: 0;
    color: transparent;
    cursor: pointer;
    height: auto;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
    width: auto;
}
 </style>
 </head>
 <body>

<?php 
include "..\php\connect.php"; 
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
                    ADD BOOKS INTO BLC COUNTER
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

<!--<form action="../php/addbook-action.php" method="post">-->
<div class="w3-container"> </div>
	<div class="w3-row">
		<div class="testbox">  
			<form action="../php/addbookstock-action.php" method="post">
			<div class="item">
				<div class="name-item">
				<div>
					<label for="Idt">Stock In_Date</label>
					<input id="Date" type="date" name="iDate" > 			
				</div>
<!--
				<div>
					<label for="BranchName">Branch Name</label>
						<select name=brName style="padding: 8px 30px;" id ="branch name">		
						<option Selected>BLC</option>
						<?php		
						$records = mysqli_query($conn, "SELECT godown_name From godown");  // Use select query here
						while($data = mysqli_fetch_array($records))
						{
							echo "<option value='".$data['godown_name'] ."'>" .$data['godown_name'] ."</option>";								
						}	
						?>

						</select>
				</div>
				<div>
					<label for="BranchLocation">Branch Location</label>
						<select name=brLocation style="padding: 8px 18px;" id ="branch loc">		
						<option Selected>Chennai</option>
						<?php		
						$records = mysqli_query($conn, "SELECT godown_location From godown");  // Use select query here
						while($data = mysqli_fetch_array($records))
						{
							echo "<option value='".$data['godown_location'] ."'>" .$data['godown_location'] ."</option>";
								
						}	
						?>
						</select>
				</div>
				</div>
-->							
					<div>
						<label for="language">Book Name</label>
						<select name=bname style="padding: 8px 18px;" id ="bookname">		
						<option Selected>-- Book Name --</option>
						<?php		
						$records = mysqli_query($conn, "SELECT b_name From books");  // Use select query here
						while($data = mysqli_fetch_array($records))
						{
							echo "<option value='".$data['b_name'] ."'>" .$data['b_name'] ."</option>";
								
						}	
						?>
						</select>
					</div>	
					<div>	
						<label>Language</label>
						<select id="Lang" name="blang" style="padding: 8px 18px; width:200px"  REQUIRED>
						<option value="English">  English </option>
						<option value="Tamil">Tamil</option>
						<option value="Telugu">Telugu</option>
						<option value="Hindi">Hindi</option>
						<option value="Assamese">Assam</option>
						<option value="Gujarathi">Gujarathi</option>
						<option value="Punjabi">Punjabi</option>
						</select>
					</div>
				</div>
<!--					
					<div>
						<label for="nationality">Printer Name</label>
						<select name=pname style="padding: 8px 30px;" id ="printer">		
						<option Selected>Babuji Printers</option>
						<?php		
						$records = mysqli_query($conn, "SELECT printer_name From printer");  // Use select query here
						while($data = mysqli_fetch_array($records))
						{
							echo "<option value='".$data['printer_name'] ."'>" .$data['printer_name'] ."</option>";
								
						}	
						?>
						</select>
					</div>
					<div>
						<label for="nationality">Printer Location</label>
						<select name=plocation style="padding: 8px 20px;">
						<option Selected>Chennai</option>
						<?php
						$records = mysqli_query($conn, "SELECT DISTINCT printer_location From printer");  // Use select query here
						while($data = mysqli_fetch_array($records))
						{
							echo "<option value='".$data['printer_location'] ."'>" .$data['printer_location'] ."</option>";
						}	
						?>
						</select> 
					</div>
				</div> 
-->
				<div class="name-item">
					<div>
					<label for="Cost">Cost</label>
					<input id="cPrice" type="number" name="cprice" />
					</div>
					<div>
					<label for="Sale Price">Donation</label>
					<input id="sPrice" type="number" name="sprice" />
					</div>
					<div>
					<label for="InQuantity">Quantity</label>
					<input id="InQty" type="number" name="iQty" />
					</div>
					<div>
					<label for="Rack">Rack</label>
					<input id="gRack" type="number" name="grack" />
					</div>
				</div>
				<div class="name-item">
					<label for="nationality">Narration</label> 	
					<textarea rows="3" cols="150" name="inNote" ></textarea>
				</div>
			</div>
				<div class="btn-block">
					<button type="submit" name="addsubmit" formaction= "../php/addbookstock-action.php" >ADD</button>
				</div>		
		</div>
	</div>	
	</form>
</body>
</html>