<?php 
include_once 'config/database.php';
include_once 'objects/product.php';
$id=$_POST['id'];
//exit();
if (isset($_POST['delete'])) {
$query="DELETE FROM products where `id`=$id";
$data=mysqli_query($conn,$query);
if ($data)
{
	echo header("location:DELETE(new).php");
}
else {
	echo "Data not Deleted!!!!!!!";
}
}
mysqli_close($conn);
?>