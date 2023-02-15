<!DOCTYPE html>
<html>
  <head>
    <title>Update Book Stock Form </title>
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
                    SALES
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

<div class="w3-container"> </div>
	<div class="w3-row">				
		<div class="testbox">  			
		<form action="../php/updatebookstock-action.php" method="post">		
			<div class="item">
				<div class="name-item"> 
				<div>
					<label for="Idt">Out Date</label>
					<input id="Date" type="date" name="oDate" />
				</div>
				<div>
					<label for="Idt">Out Transaction Id</label>
					<input id="Date" type="number" name="oTid" />
				</div>
				<div>
					<label for="language">Book Name</label>
					<select name=bName style="padding: 8px 30px;" id ="bookname">		
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
				<br>
				<div>
					<label for="nationality">Language</label>
					<select id="Lang" name="bLang" style="padding: 8px 70px;" REQUIRED>
					<option value="English">English</option>
					<option value="Tamil">Tamil</option>
					<option value="Telugu">Telugu</option>
					<option value="Hindi">Hindi</option>
					<option value="Assamese">Assam</option>
					<option value="Gujarathi">Gujarathi</option>
					<option value="Punjabi">Punjabi</option>
					</select>
				</div>
				</div>
			
			</div>
			<div class="name-item">
			    <div>
					<label for="OutQuantity">Quantity</label>
					<input id="OutQty" type="number" name="oQty" />
				</div>
					<label for="nationality">Narration</label> 	
					<textarea rows="3" cols="150" name="outNote" ></textarea>
			</div>
		</div>
		<div class="btn-block">
			<button type="submit" name="addsubmit" formaction= "../php/salebook-action.php" >ADD</button>
		</div>		
	</div>
	</div>	
	</form>
</body>
</html>