<?php

include_once 'config/database.php';
include_once 'objects/product.php';

$total = 0.00;
$json_data = json_decode(file_get_contents('cart.json'), true);
for ($i = 0; $i < count($json_data); $i++) {
    $total += ($json_data[$i]["price"] * $json_data[$i]["quantity"]);
}
$database = new Database();
$db = $database->getConnection();

$product = new Product($db);
if (isset($_GET["rfid"]) && isset($_GET["action"])) {
    // get database connection
   

    $rfid = $_GET["rfid"];
    $action = $_GET["action"];


    if ($action == "1") {
        //if exists already increase the quantity by 1
        $exists = false;
        for ($i = 0; $i < count($json_data); $i++) {
            if ($json_data[$i]["rfid"] == $rfid) {
                $json_data[$i]["quantity"] = strval($json_data[$i]["quantity"] + 1);
                $fp = fopen('cart.json', 'w');
                fwrite($fp, json_encode($json_data));
                fclose($fp);
                $exists = true;
                http_response_code(200);
                echo json_encode(dataLCD());   
                break;
            }
        }
    
        //if does not exists add new product
        if (!$exists) {

            $stmt = $product->readByRfid($rfid);
            $num = $stmt->rowCount();
            if ($num == 1) {
                $row = $stmt->fetch(PDO::FETCH_ASSOC);
                extract($row);

                $json_data[count($json_data)] = array(
                    "rfid" => $rfid,  
                    "name" => $name,
                    "price" => $price,
                    "quantity" => "1"
                );

                $fp = fopen('cart.json', 'w');
                fwrite($fp, json_encode($json_data));
                fclose($fp);
                http_response_code(200);
                echo json_encode(dataLCD());
                return;
            } else {
                http_response_code(400);
                return;
            }
        }
    } else if ($action == "2") {
        //if quantity is more than 1 minus the quantity
        $exists = false;
        for ($i = 0; $i < count($json_data); $i++) {
            if ($json_data[$i]["rfid"] == $rfid) {
                if ($json_data[$i]["quantity"] > 1) {
                    $json_data[$i]["quantity"] = strval($json_data[$i]["quantity"] - 1);
                    $fp = fopen('cart.json', 'w');
                    fwrite($fp, json_encode($json_data));
                    fclose($fp);
                    http_response_code(200);
                    echo json_encode(dataLCD());
                    return;
                } else {
                    $exists = true;
                }
                break;
            }
        }

        //remove the item if quantity is 1
        if ($exists) {
            $json_new  = array();
            $index = 0;

            foreach ($json_data as $item) {
                if ($item["rfid"] == $rfid) {
                    continue;
                }
                $json_new[$index++] = $item;
            }

            $fp = fopen('cart.json', 'w');
            fwrite($fp, json_encode($json_new));
            fclose($fp);
            http_response_code(200);
            echo json_encode(dataLCD());
            return;
        }
        http_response_code(200);
        echo json_encode(dataLCD());
        return;
    } else {
        http_response_code(400);
        return;
    }
} else if (isset($_GET["total"])) {
    $json_total = array(
        "total" => $_GET["total"]
    );



    if($_GET["total"]=="0"){
        $fp = fopen('cart.json', 'w');
        fwrite($fp, json_encode([]));
        fclose($fp);    
    }

    $fp = fopen('total.json', 'w');
    fwrite($fp, json_encode($json_total));
    fclose($fp);
    http_response_code(200);
} else if (isset($_GET["getTotal"])) {
    
    $product->saveTotal($total);

    http_response_code(200);
    echo json_encode(array("total"=>$total));
    return;
}

function dataLCD()
{
    $database1 = new Database();
    $db1 = $database1->getConnection();

    $product1 = new Product($db1);

    $rfid1 = $_GET["rfid"];

    $total_products1 = 0;
    $total_amount1 = 0.00;
    $json_data1 = json_decode(file_get_contents('cart.json'), true);

    for ($i = 0; $i < count($json_data1); $i++) {
        $total_products1 += $json_data1[$i]["quantity"];
        $total_amount1 += ($json_data1[$i]["price"] * $json_data1[$i]["quantity"]);
    }

    $stmt1 = $product1->readByRfid($rfid1);
    $num1 = $stmt1->rowCount();
    if ($num1 == 1) {
        $row1 = $stmt1->fetch(PDO::FETCH_ASSOC);
        extract($row1);

        $json_data1 = array(
            "name" => $name,
            "price" => $price,
            "total_products" => $total_products1,
            "total_amount" => $total_amount1
        );
    } else {
        http_response_code(400);
        return;
    }

    return $json_data1;
}
  
