<?php
include('session.php');
if(!isset($_SESSION['login_user'])){
header("location: index.php"); // Redirecting To Home Page
}

?>
<style>

table th,td{
  color:black;
border: 4px solid ;
width:1000px;
text-align:center;
background-color:azure;
}
</style>
<!DOCTYPE html>
<html>
<head>
<title>CARTIGO MANAGEMENT SYSTEM(LOGIN)</title>

<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
  <br/>
  <div class="container" align="center" >
    <img src="images/logo.jpg"  height="200" width="1000" > 
<!--    <h2 align="center" style="font:100px; border:solid; background-color:lavender; "><b><u>CARTIGO MANAGEMENT SYSTEM </u></b></h2> -->
<br>
<!-- <div class="panel panel-default" >
<div class="panel-body"  style="border: solid;">
 -->  <br>
<form class="form_group">
   <nav class="navbar navbar-inverse" style="background-color:lavender">
  <div class="container-fluid" style="background-color:lightblue ">
    <div class="navbar-header">
     <!--  <a class="navbar-brand" href="#"><b style="color:#000000 ;font:20px"><i>CARTIGO MANAGEMENT SYSTEM(Shop & Go)</i></b></a> -->
    </div>
    <h2 align="center" style="font:100px;"><b><i>CARTIGO MANAGEMENT SYSTEM </i></b>
    </h2>
  <!--   <ul class="nav navbar-nav">
   -->   
       <a href="INDEX1.php" style="color:black">ADD PRDODUCTS</a>
       <a href="cart.php" style="color:blue">GET_BILL</a>
      <a href="Get_prd_info.php" style="color:black">SEARCH_PRODUCTS</a>
      <a href="searchbill.php" style="color:blue">SEARCH_BILLS</a>
    </ul>
  </div>
</nav>


 <div class="col md 9">
<!-- <div class="panel panel-default" style="background-color: transparent;">
<div class="panel-heading" style="background-color: transparent;" ><h2 style="border-style: solid;color: white"><b>Shopping Marts In Pakistan</b></h2>
<div class="panel-body2" style="height: 150px"><p>
<ul>
<em>  
</em></ul></p></div></div>
</div> -->
</div>

<html>

<head>
    <title>Products | Cartigo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="vendor/jquery/jquery.slim.min.js"></script>
    <script src="vendor/propper/js/propper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
        <body background="login.jpg" >
    <table border="1" width="200" cellspacing="1" cellpadding="1">

  <table  align="center" border="2px" style="width: 1150px">
    <tr><th style="color:black" colspan="12"><h3 align="center"><b>(PRODUCTS)=280 </b></h3></th>
         <tr>
                 <th><b>COOKING OILS</b></th>
                 <th><b>GHEE</b></th>
                 <th><b>CHOCOLATES</b></th>
                 <th><b>SPORTS</b></th>
                 <th><b>SOAPS</b></th>
                 <th><b>LAPTOPS</b></th>
                 <th><b>MOBILES</b></th>
                 <th><b>DETERGENTS</b></th>
                 <th><b>SNACKS</b></th>
                 <th><b>BISCUITS</b></th>

    </tr> 
  </tr>
  </table>
<hr>    

</body>
</html>
</html>
<br>

</form>
<footer>
<div id="profile" style="border-style: solid;">
<b id="welcome">Welcome : <i><?php echo $login_session; ?></i></b>
<b id="logout"><a href="logout.php" style="color: black;background-color:lavender "><b>LogOut</b></a></b>
</div>
</footer>
</body>
</html>