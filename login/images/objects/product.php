<?php
class Product{
 
    // database connection and table name
    private $conn;
    private $table_name = "products";
        
    // object properties
    public $rfid;
    public $name;
    public $price;
 
    public function __construct($db){
        $this->conn = $db;
    }
 
    // create product
    public function create(){
 
        //write query
        $query = "INSERT INTO
                    " . $this->table_name . "
                SET
                    rfid=:rfid, name=:name, price=:price";
 
        $stmt = $this->conn->prepare($query);
 
        // posted values
        $this->rfid=htmlspecialchars(strip_tags($this->rfid));
        $this->name=htmlspecialchars(strip_tags($this->name));
        $this->price=htmlspecialchars(strip_tags($this->price));
 
        // bind values 
        $stmt->bindParam(":rfid", $this->rfid);
        $stmt->bindParam(":name", $this->name);
        $stmt->bindParam(":price", $this->price);
 
        if($stmt->execute()){
            return true;
        }else{
            return false;
        }
 
    }

    // create product
    public function update($id){
 
        //write query
        $query = "UPDATE
                    " . $this->table_name . "
                SET
                    rfid=:rfid, name=:name, price=:price 
                WHERE id=$id;
                    ";
 
        $stmt = $this->conn->prepare($query);
 
        // posted values
        $this->rfid=htmlspecialchars(strip_tags($this->rfid));
        $this->name=htmlspecialchars(strip_tags($this->name));
        $this->price=htmlspecialchars(strip_tags($this->price));
 
        // bind values 
        $stmt->bindParam(":rfid", $this->rfid);
        $stmt->bindParam(":name", $this->name);
        $stmt->bindParam(":price", $this->price);
 
        if($stmt->execute()){
            return true;
        }else{
            return false;
        }
 
    }

    public function readByRfid($id){
 
        $query = "SELECT
                    *
                FROM
                    " . $this->table_name . "
                WHERE rfid='$id';
                ";
     
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
     
        return $stmt;
    }

    public function read($id){
 
        $query = "SELECT
                    *
                FROM
                    " . $this->table_name . "
                WHERE id=$id;
                ";
     
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
     
        return $stmt;
    }

    public function readAll($from_record_num, $records_per_page){
 
        $query = "SELECT
                    id, rfid, name, price
                FROM
                    " . $this->table_name . "
                ORDER BY
                    name ASC
                LIMIT
                    {$from_record_num}, {$records_per_page}";
     
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
     
        return $stmt;
    }

    public function countAll(){
    
        $query = "SELECT id FROM " . $this->table_name . "";
    
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
    
        $num = $stmt->rowCount();
    
        return $num;
    }

    public function getBillID(){
    
        $query = "SELECT id FROM bills order by id desc LIMIT 1";
    
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        extract($row);
        $num = $id+1;
        return $num;
    }

    public function delete($id){
        $query = "DELETE FROM ".$this->table_name." WHERE id=$id";
        $stmt = $this->conn->prepare( $query );
        if($stmt->execute()){
            return true;
        }else{
            return false;
        }
    }
    // public function getcartID(){
    
    //     $query = "SELECT cartID FROM bills order by id asc LIMIT 1";
    
    //     $stmt = $this->conn->prepare( $query );
    //     $stmt->execute();
    //     $row = $stmt->fetch(PDO::FETCH_ASSOC);
    //     extract($row);
    //     $id = $cartID+1;
    //     return $cartID;
    // }


    public function saveTotal($amount,$products){
        $query = "INSERT INTO bills
                SET
                    amount=:amount;
                    -- cartID=:cartID
                    products=:products"; 
        $stmt = $this->conn->prepare($query);
 
        // posted values
        $this->rfid=htmlspecialchars(strip_tags($amount,$products));
        
        // bind values 
        $stmt->bindParam(":amount,:products",$amount,$products);
        
        if($stmt->execute()){
            return true;
        }else{
            return false;
        }
    }
}
