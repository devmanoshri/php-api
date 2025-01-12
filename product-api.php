<?php

require_once 'database.php';
require_once 'send-response.php';

class ProductAPI{
private $db;
  public function __construct() {
    $this->db = Database::getDBInstance()->getConnection();    
  }

  public function getProducts(){
    $sql= "SELECT * FROM product";
    $result = $this->db->query($sql);

    if($result->num_rows > 0){
      $products=[];
      while($row = $result->fetch_assoc()){
        $products[]=$row;
      }
      return SendResponse::send(200, $products);
    }else{
      return SendResponse::send(200,'No products');
    }
  }

  public function getProductDetails(int $id){
    $id = intval($id);
    $sql= "SELECT * FROM product WHERE id = $id";
    $result = $this->db->query($sql);

    if($result->num_rows > 0){
      $productDetails = $result->fetch_assoc();
      return SendResponse::send(200, $productDetails);
      }else{
      return SendResponse::send(200,'No products');
    }
  }


}