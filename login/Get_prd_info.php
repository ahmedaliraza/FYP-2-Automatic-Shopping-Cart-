
<!DOCTYPE html>
<html>
 <head>
  <title>CARTIGO Management System </title>  
  <!-- <script src="js/jquery-1.10.2.min.js"></script>
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <script src="js/bootstrap.min.js"></script>
 -->
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
 <body>
<body background="login.jpg">


  <div class="container" align="center">
 <!--            <img class="img-fluid" src="images\logo.jpg"> -->
            <img src="images/logo.jpg"  height="200" width="1000" >
   <!-- <h2 align="center" style="font:100px; border:solid;background-color:lavender"><b><i>CARTIGO MANAGEMENT SYSTEM </i></b>
    </h2> -->
  <br />

   <br />
<div id="flip" style="border:solid;background-color:lightblue" style="width:7in">
  
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" ><b><i>CARTIGO MANAGEMENT SYSTEM(Shop & Go)</i></b></a>
    <ul class="nav navbar-nav" >
      <li><a href="profile.php" style="color:black">HOMEPAGE</a></li>
      <li ><a href="cart.php" style="color:blue">GET_BILL</a></li>
      <li ><a href="INDEX1.php" style="color:black">ADD PRODUCTS</a></li>
      <li class="active"><a href="Get_prd_info.php" style="color:blue">SEARCH_PRODUCTS</a></li>
      <li ><a href="searchbill.php" style="color:black">SEARCH_BILLS</a></li>
    </ul>
  </div>
</div>
</nav></div>
  

   <br>

      <form id="panel10" action="" method="POST">
        <div class="form-group">
          <div class="container" align="center" style="border: solid;background-color:transparent;">
              
       <div class="form-group" >
     
       <br><label style="color: black; border: solid;background-color:lightblue"><b>PRODUCT_ID:</b></label>
       <ul><input type="text" name="id" id="id" value="" class="form-control" required="" placeholder="ENTER ID" style="width:4in">
                

       </div>
       <table border="1" width="200" cellspacing="1" cellpadding="1">

  <table  align="center" border="2px" style="width: 1000px">
    <tr><th style="color:black" colspan="12"><h3 align="center"><b>PRODUCTS</b></h3></th>
         <tr>
                 <th><b>COOKING OILS(20)</b></th>
                 <th><b>GHEE(17)</b></th>
                 <th><b>CHOCOLATES(32)</b></th>
                 <th><b>SPORTS(15)</b></th>
                 <th><b>SOAPS(3)</b></th>
                 <th><b>LAPTOPS(2)</b></th>
                 <th><b>MOBILES(1)</b></th>
                 <th><b>DETERGENTS(1)</b></th>
                 <th><b>SNACKS(105)</b></th>
                 <th><b>BISCUITS(32)</b></th>

    </tr> 
  </tr>
  </table>
<hr>
 <!--       <div class="input_panel" style="background: transparent;background-color:lavender ">
       <ul><h4><b>PRODUCT_TYPE :</b></h4>

        <select id="PRODUCT_TYPE" name="PRODUCT_TYPE" required="" style="width: 10in;height: 0.25IN">
         <option value="--">--</option>
         <option value="SPORTS">SPORTS</option>
         <option value="STATIONARIES">STATIONARIES</option>
         <option value="COOKING OIL">COOKING OIL</option>
         <option value="GHEE">GHEE</option> 
         <option value="SNACKS(CHIPS)">SNACKS(CHIPS)</option> 
         <option value="BISCUITS">BISCUITS</option>
         <option value="CHOCOLATE">CHOCOLATE</option>
         </select>

       </div> -->
 
 <?php 
include("conn_db.php");
// include("login.php");
 // include_once 'config/database.php';

 if (isset($_POST['SEARCH'])) {
  
  $id=$_POST['id'];

$sql = "SELECT * FROM products WHERE  `id`=$id && CONCAT(`id`, `name`,`rfid`, `price`,`category`)";
$results=mysqli_query($conn,$sql);


// while($row = mysqli_fetch_array($results)){
//   echo "<table>";
//             echo "<tr>";
//                 echo "<th>PRODUCT_ID</th>";
//                 echo "<th>PRODUCT_NAME</th>";
//                 echo "<th>PRODUCT_PRICE</th>";
//                 echo "<th>RFID_TAG</th>";
//             echo "</tr>";

//             echo "<tr>";
//                 echo "<th>" . $row['PRODUCT_ID'] . "</th>";
//                 echo "<th>" . $row['PRODUCT_NAME'] . "</th> ";
//                 echo "<th>" . $row['PRODUCT_PRICE'] . "</th>";
//                 echo "<th>" . $row['RFID_TAG'] . "</th>";
//             echo "</tr>";
        
//   }
// }

    if(mysqli_num_rows($results) >0){
        echo "<table>";
            echo "<tr>";
                echo "<th>id</th>";
                echo "<th>name</th>";
                echo "<th>rfid</th>";
                echo "<th>price</th>";
                echo "<th>category</th>";
                
            echo "</tr>";
        while($row = mysqli_fetch_array($results)){
            echo "<tr>";
               echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['name'] . "</td>";
                echo "<td>" . $row['rfid'] . "</td>";
                echo "<td>" . $row['price'] . "</td>";
                echo "<td>" . $row['category'] . "</td>";
               

               
            echo "</tr>";
        }
        echo "</table>";
}}
?>

        <hr>    
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
     <footer >
      <div id="profile" align="center">
      <b id="logout"><a href="logout.php" style="color:black;background-color:lavender;border:solid;padding:5px"><b>LogOut</b></a></b>
       </div>
       </footer>
    
    </div>
   </div>
  </div>
       


    </div>
     

 </body>
 </html>