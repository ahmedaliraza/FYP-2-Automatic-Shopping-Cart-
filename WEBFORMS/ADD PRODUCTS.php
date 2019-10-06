<?php  include("conn_db.php");

$PRODUCT_NAME="";
$PRODUCT_PRICE="";
$WEIGHT="";
$QUANTITY="";
$RFID_TAG="";
$PRODUCT_ID="";
$PRODUCT_TYPE="";
$PRODUCT_DESCRIPTION="";
$message = "";




if (isset($_POST['save'])) {
	$PRODUCT_NAME=$_POST['PRODUCT_NAME'];
    $PRODUCT_PRICE=$_POST['PRODUCT_PRICE'];
    $WEIGHT=$_POST['WEIGHT'];
    $QUANTITY=$_POST['QUANTITY'];
    $RFID_TAG=$_POST['RFID_TAG'];
    $PRODUCT_ID=$_POST['PRODUCT_ID'];
    $PRODUCT_TYPE=$_POST['PRODUCT_TYPE'];
    $PRODUCT_DESCRIPTION=$_POST['PRODUCT_DESCRIPTION'];

if($PRODUCT_NAME!=="" && $PRODUCT_PRICE!=="" && $WEIGHT!=="" &&$QUANTITY!=="" && $RFID_TAG!=="" && $PRODUCT_ID!=="" &&  $PRODUCT_TYPE!=="" && $PRODUCT_DESCRIPTION!==""){

  $query = "INSERT INTO products (PRODUCT_NAME,PRODUCT_PRICE,WEIGHT,QUANTITY,RFID_TAG,PRODUCT_ID,PRODUCT_TYPE,PRODUCT_DESCRIPTION) VALUES ('$PRODUCT_NAME', '$PRODUCT_PRICE', '$WEIGHT', '$QUANTITY', '$RFID_TAG', '$PRODUCT_ID', 
  '$PRODUCT_TYPE', '$PRODUCT_DESCRIPTION')";

 

  $data =mysqli_query($conn,$query);
  
  if($data){
    $message = "";
     }
}
}
?>



<!DOCTYPE html>
<html>
<head>
	<title>CARTIGO Management System(Add Products)</title>
      <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <script>

$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel10").slideToggle("slow");
        
    });
});

</script>
<style>
#flip, #panel{
    padding: 5px;
    text-align:center;
    background-color: #e5eecc;
    border: solid 10px #c3c3c3;
}

#panel{
    padding: 50px;
    display:none;
}

</style>

</head>
<body>

<body background="images/Homepage.jpg"><br />
  <div class="container">
   <h2 align="center" style="font:100px; border: dotted;background-color: lightblue"><b>CARTIGO MANAGEMENT SYSTEM </b>
    <img src="images/logo.jpg" width="600" height="100"></h2>
   <br />
<!-- <div id="flip"><h2>ADD PRODUCTS:</h2></div>
 -->
<div id="flip" class="panel-heading"  style="color: black;border:solid;background-color:lightblue"><label><h3><ul><b><u>ADD PRODUCTS:</u></h3></label>
</div>
<br>   

<div class="panel panel-default" style="border:;background: transparent;" >
<div class="panel-body"  style="border: solid;">
<form id="panel10"  method="POST">
      <?php echo $message; ?>
       <div class="input_panel" style="border:solid;background: transparent;background-color: lightblue">
       <label><ul><b>PRODUCT_NAME:</b></label>
       <input type="text" name="PRODUCT_NAME" class="form-control" value="" required , placeholder="ENTER PRODUCT-NAME" />
        </div>
<br>
       <div class="input_panel" style="border:solid;background: transparent;background-color: lightblue">
         <label><ul><b>PRODUCT_PRICE :</b></label>
         <input type="number" name="PRODUCT_PRICE" class="form-control" value="" required placeholder="ENTER PRODUCT-PRICE" />
       </div>
<br>
       <div class="input_panel" style="border:solid;background: transparent;background-color: lightblue">
         <label><ul><b>WEIGHT :</b></label>
         <input type="text" name="WEIGHT" class="form-control" value=""  placeholder="ENTER WEIGHT" />
       </div>
<br>      
       <div class="input_panel" style="border:solid;background: transparent;background-color: lightblue">
         <label><ul><b>QUANTITY :</b></label>
         <input type="text" name="QUANTITY" class="form-control" value="" required placeholder="ENTER QUANTITY" />
       </div>
<br>
       <div class="input_panel" style="border:solid;background: transparent;background-color: lightblue">
       <label><ul><b>RFID_TAG:</b></label>
       <input type="number" name="RFID_TAG" class="form-control" value="" required placeholder="ENTER RFID-TAG" />
       </div>
<br>
       <div class="input_panel" style="border:solid;background: transparent;background-color: lightblue">
       <label><ul><b>PRODUCT_ID:</b></label>
       <input type="number" name="PRODUCT_ID" class="form-control" value="" required placeholder="ENTER PRODUCT-ID" />
       </div>
<br>
       <div class="input_panel" style="border:solid;background: transparent;background-color: lightblue">
       <label><ul><b>PRODUCT_TYPE :</b></label>
       <input type="text" name="PRODUCT_TYPE" class="form-control" value="" required placeholder="ENTER PRODUCT-TYPE"/>
        <!-- <select id="PRODUCT_TYPE" name="PRODUCT_TYPE" required="">
         <option value="--">--</option>
         <option value="SPORTS">SPORTS</option>
         <option value="STATIONARIES">STATIONARIES</option>
         <option value="COOKING OIL">COOKING OIL</option>
         <option value="GHEE">GHEE</option> 
         <option value="SNACKS(CHIPS)">SNACKS(CHIPS)</option> 
         <option value="BISCUITS">BISCUITS</option>
         <option value="CHOCOLATE">CHOCOLATE</option>
         </select>
 -->
       </div>
<br>
       <div class="input_panel" style="border:solid;background: transparent;background-color: lightblue">
       <label><ul><b>PRODUCT_DESCRIPTION :</b></label>
       <input type="text" name="PRODUCT_DESCRIPTION" class="form-control" value="" required placeholder="ENTER PRODUCT-DESCRIPTION" />
      </div>

      	<hr>

      	<input type="submit" name="save" value="ADD PRODUCT">

  <!-- <button action="conn_db.php" type="Save" class="btn" name="Save" value="Save"><b>Save:</b></button> -->
  
</form>
<hr>

    </div>
   </div>
  </div>
 </body>
</body>
</html>
