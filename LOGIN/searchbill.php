<?php
include('session.php');
if(!isset($_SESSION['login_user'])){
header("location: index.php"); // Redirecting To Home Page
}
?>
<!DOCTYPE html>
<html>
 <head>
  <title>SEARCH(BILL)-CARTIGO Management System </title>  
  <script src="js/jquery-1.10.2.min.js"></script>
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <script src="js/bootstrap.min.js"></script>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
table th,td{
  color:black;
border: 4px solid black;
width:1000px;
text-align:center;
background-color:lavender;
}
</style>
  </head>
 <body background="login.jpg">
  <div class="container" align="center">
    <br>
 <!--            <img class="img-fluid" src="images\logo.jpg"> -->
            <img src="images/logo.jpg"  height="200" width="1000" >
   <!-- <h2 align="center" style="font:100px; border:solid;background-color:lavender"><b><i>CARTIGO MANAGEMENT SYSTEM </i></b>
    </h2> -->
  <br />

   <br />
<div id="flip" style="border:solid;background-color:lightblue" style="width:7in">
  <!-- <nav class="navbar navbar-inverse"> -->
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><b><i>CARTIGO MANAGEMENT SYSTEM(Shop & Go)</i></b></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="profile.php" style="color:black">HOMEPAGE</a></li>
      <li ><a href="cart.php" style="color:blue">GET_BILL</a></li>
      <li ><a href="INDEX1.php" style="color:black">ADD PRODUCTS</a></li>
      <li><a href="Get_prd_info.php" style="color:blue">SEARCH_PRODUCTS</a></li>
      <!-- <li class="active"><a href="searchbill.php" style="color:black">SEARCH_BILLS</a></li> -->
    </ul>
  </div>
</nav></div>
  

   <br>

      <form id="panel10" action="" method="POST">
        <div class="form-group">
          <div class="container" align="center" style="border: solid;background-color:transparent;">
              
       <div class="form-group" >
     
       <br><label style="color: black; border: solid;background-color:lightblue"><b>BILL_ID:</b></label>
       <ul><input type="number" name="id" id="id" value="" class="form-control" required="" placeholder="ENTER ID" style="width:4in">
                

       </div>
       <table border="1" width="200" cellspacing="1" cellpadding="1">
<hr>
 
 <?php 
include("conn_db.php");
// include("login.php");
 // include_once 'config/database.php';

 if (isset($_POST['SEARCH'])) {
  
  $id=$_POST['id'];

$sql = "SELECT * FROM bills WHERE  `id`=$id && CONCAT( `id`, `amount`)";
$results=mysqli_query($conn,$sql);



    if(mysqli_num_rows($results) >0){
        echo "<table>";
            echo "<tr>";

                echo "<th>id</th>";
                echo "<th>amount</th>";
                
                
            echo "</tr>";
        while($row = mysqli_fetch_array($results)){
            echo "<tr>";
                echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['amount'] . "</td>";
                              
            echo "</tr>";
        }
        echo "</table>";
}}
?>
<hr>
<br><br>
  <button type="submit" class="btn" name="SEARCH" value="SEARCH"><b>SEARCH BY</b></button>
  



                </ul>
            </nav>

       
      </div>

</div>
</div>
</div>
      <div class="form-group" align="center">

      </div>

     </form>


    </div>
   </div>
  </div>
       


    </div>
     

 </body>
     <footer >
      <div id="profile" align="center">
      <b id="logout"><a href="logout.php" style="color:black;background-color:lavender;border:solid;padding:5px"><b>LogOut</b></a></b>
       </div>
   </footer>

 </html>
