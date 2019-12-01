<?php
include('session.php');
if(!isset($_SESSION['login_user'])){
header("location: index.php"); // Redirecting To Home Page
}
?>

<html>

<head>
    <title>Cart | Cartigo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="vendor/jquery/jquery.js"></script>
    <script src="vendor/propper/js/propper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
    <?php 
        include_once 'config/database.php';
        include_once 'objects/product.php';
        
        // get database connection
        $database = new Database();
        $db = $database->getConnection();
        
        $product = new Product($db);
    ?>
    <div class="col-12 text-center my-2">
        <button class="btn btn-success" id="printButton">Print Bill</button>
        <button class="btn btn-success" onclick="location.reload();">Refresh Page</button>
    </div>
    <div class="container border">
        <div class="col-12 text-center">
            <br>
            <img class="img-fluid" src="images\logo.jpg" style="height:200;width: 1100" >
        </div>
        <div class="col-12">
            <br /><br />
            <span><b>STORE NAME: CARTIGO (SHOP & GO)</b></span><br />
            <span><b>Email:cartigo@gmail.com| Website:www.cartigo.com.pk </b></span><br />
            <span><b>NTN Number: 12V4-A67-89</b></span><br />
            <span><b>Address: Block D-13 gulshan e iqbal Karachi</b></span><br />
            <span><b>Phone: 0215047943</b></span><br />
            <span><b>Bill ID: </b><span id="billID"><?php echo $product->getBillID();?></span></span><br /><br />
        </div>
        <div class="col-12">
            <div id="data"></div>
            <table class="table table-bordered" >
                <thead>
                    <tr>
                        <th>S.No.</th>
                        <th>Product Name</th>
                        <th>Quantity*</th>
                        <th>Product Price</th>
                        <th>RFID Tag No.</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody id="products">

                </tbody>
            </table>
        </div>
        <div class="col-12 border">
            Total Amount: Rs <span id="total"></span>
        </div>
        <br />
        <div class="col-12 border">
            <span>Date & Time: <?php date_default_timezone_set("Asia/Karachi");
                                echo date("d-m-Y (h:i:s a)"); ?></span><br />
            <span></span>
        </div>
        <br />
        <div class="col-12 text-center"><span>*************** Thank you for Shopping ***************</span></div>
        <br />
    </div>

    <script>
        $(document).ready(function() {
            setInterval(function() {
                $.ajax({
                    type: 'GET',
                    url: 'total.json',
                    dataType: 'json',
                    success: function(data) {
                        console.log(data["total"]);
                        if (parseInt(data["total"]) == 1) {
                            $.ajax({
                                type: 'GET',
                                url: 'cart.json',
                                dataType: 'json',
                                success: function(data) {

                                    if (data.length > 0) {
                                        var sno = 1;
                                        var total = 0;
                                        $('#products').html('');
                                        $.each(data, function(index, item) {
                                            var totalAmount = parseFloat(item["price"]) * parseInt(item["quantity"]);
                                            $('#products').append(
                                                '<tr>' +
                                                '<td scope="row">' + (sno++) + '</td>' +
                                                '<td>' + item["name"] + '</td>' +
                                                '<td>' + item["quantity"] + '</td>' +
                                                '<td>' + item["price"] + '</td>' +
                                                '<td>' + item["rfid"] + '</td>' +
                                                '<td>' + totalAmount + '</td>' +
                                                '</tr>'
                                            );
                                            total += totalAmount;
                                        });
                                        $('#total').html(total);

                                    } else {
                                        $('#products').html('<tr scope="row"><td colspan="6">There are no items in the cart!</td></tr>');
                                    }
                                }
                            });
                        } else {
                            $('#products').html('');
                            $('#total').html('');
                        }
                    }
                });
            }, 1000);
        });

        $('#printButton').click(function() {
            window.print();
            $.ajax({
                type: 'GET',
                url: 'updateCart.php?total=0',
                dataType: 'json',
                success: function(data) {

                }
            });
            $('#billID').html((parseInt($('#billID').text())+1));
        });
    </script>
</body>