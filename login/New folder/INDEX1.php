<?php
include_once 'config/database.php';
include_once 'objects/product.php';

// get database connection
$database = new Database();
$db = $database->getConnection();

$product = new Product($db);

if (isset($_GET['delete-id'])) {
    if ($product->delete($_GET['delete-id'])) {
        echo "<div class='alert alert-success'>Product was deleted.</div>";
    } else {
        echo "<div class='alert alert-danger'>Unable to delete product.</div>";
    }
}

if ($_POST) {
    if (isset($_POST['update'])) {
        $product->rfid = $_POST['rfid'];
        $product->name = $_POST['name'];
        $product->price = $_POST['price'];

        if ($product->update($_POST['id'])) {
            echo "<div class='alert alert-success'>Product was updated.</div>";
        }else {
            echo "<div class='alert alert-danger'>Unable to update product.</div>";
        }
    } else {
        // set product property values
        $product->rfid = $_POST['rfid'];
        $product->name = $_POST['name'];
        $product->price = $_POST['price'];

        // create the product
        if ($product->create()) {
            echo "<div class='alert alert-success'>Product was created.</div>";
        }

        // if unable to create the product, tell the user
        else {
            echo "<div class='alert alert-danger'>Unable to create product.</div>";
        }
    }
}

// page given in URL parameter, default page is one
$page = isset($_GET['page']) ? $_GET['page'] : 1;

// set number of records per page
$records_per_page = 10;

// calculate for the query LIMIT clause
$from_record_num = ($records_per_page * $page) - $records_per_page;

// query products
$stmt = $product->readAll($from_record_num, $records_per_page);
$num = $stmt->rowCount();
?>

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
    <div class="container">

        <div class="row">
            <div class="col-lg-12 text-left">
                <img src="images/logo.jpg">
                <h1 class="mt-5  border-bottom">Products</h1>
                <br />
            </div>

            <div class="col-lg-12 text-right">
                <?php if (isset($_GET['update-id'])) {?>
                <a class="btn btn-light border" href="?">Add new product</a>
                <?php }else{?>
                <button class="btn btn-light border" type="button" data-toggle="collapse" data-target="#addProductContainer" aria-expanded="false" aria-controls="addCourseContainer">
                    Add new product
                </button>
                <?php } ?>
            </div>
            <?php
            if (isset($_GET['update-id'])) {
                $stmt2 = $product->read($_GET['update-id']);
                $num2 = $stmt2->rowCount();
                if ($num2 == 1) {
                    $row2 = $stmt2->fetch(PDO::FETCH_ASSOC);
                    extract($row2);
                }
            }
            ?>
            <div class="col-lg-12 text-right <?php if (!isset($_GET['update-id'])) echo "collapse"; ?>" id="addProductContainer">
                <div class="card card-body align-items-center bg-light py-5 mt-3">
                    <form action="" method="POST">
                        <table class='table table-hover table-responsive table-bordered'>
                            <tr>
                                <td style="text-align:right">RFID UID:</td>
                                <td>
                                    <input class="form-control" name="rfid" type="text" value="<?php if (isset($_GET['update-id'])) if ($num2 == 1) echo $rfid; ?>" required>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right">Product Name:</td>
                                <td>
                                    <input class="form-control" name="name" type="text" value="<?php if (isset($_GET['update-id'])) if ($num2 == 1) echo $name; ?>" required>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right">Product Price:</td>
                                <td>
                                    <input class="form-control" name="price" type="number" value="<?php if (isset($_GET['update-id'])) if ($num2 == 1) echo $price; ?>" required>
                                </td>
                            </tr>
                            <input type="hidden" name="id" value="<?php if (isset($_GET['update-id'])) if ($num2 == 1) echo $id; ?>">
                            <tr>
                                <td></td>
                                <td class="text-left">
                                    <input id="submit_button" type="submit" style="width:100%" class="btn btn-primary mt-1" value="<?php echo (isset($_GET['update-id']) ? "Update" : "Add"); ?>" name="<?php echo (isset($_GET['update-id']) ? "update" : "add"); ?>">
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>

            <div class="col-lg-12">
                <br>
                <table class="table table-striped  table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>RFID UID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="">
                        <?php
                        if ($num > 0) {
                            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

                                extract($row);

                                echo "<tr>";
                                echo "<td>{$rfid}</td>";
                                echo "<td>{$name}</td>";
                                echo "<td>{$price}</td>";
                                echo "<td>";
                                // read one, edit and delete button will be here
                                echo "<a href='?update-id={$id}' class='btn btn-info left-margin'>
                                            <span class='glyphicon glyphicon-edit'></span> Edit
                                        </a>
                                        
                                        <a href='?delete-id={$id}' class='btn btn-danger delete-object'>
                                            <span class='glyphicon glyphicon-remove'></span> Delete
                                        </a>";
                                echo "</td>";
                                echo "</tr>";
                            }
                        } else {
                            echo "<tr>
                            <td  colspan='4' style='text-align:center'>No records found!</td>
                        </tr>";
                        }
                        ?>
                    <tbody>
                </table>
                <?php
                // the page where this paging is used
                $page_url = "index.php?";

                // count all products in the database to calculate total pages
                $total_rows = $product->countAll();

                // paging buttons here
                include_once 'paging.php';
                ?>

            </div>
        </div>
    </div>


</body>

</html>