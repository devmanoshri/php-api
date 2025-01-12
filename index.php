<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);

require_once 'database.php';
require_once 'send-response.php';
require_once 'product-api.php';

$productApi = new ProductAPI();

$requestMethod =$_SERVER['REQUEST_METHOD'];
$requestUri = $_SERVER['REQUEST_URI'];

if($requestMethod === 'GET'){
  if(strpos($requestUri,'/ok') !== false) {
    SendResponse::send(200, 'api is running okay');
  }else if(strpos($requestUri,'/products') !== false) {
    $productApi->getProducts();
  }else if(strpos($requestUri,'/productDetails') !== false) {
    if (preg_match('/\/productDetails\/(\d+)/', $requestUri, $matches)) {
      $productId = $matches[1];
      $productApi->getProductDetails($productId);
    }
    
  }else{
    http_response_code(404);
    echo json_encode(['message'=>'Endpoint not found!']);
  }

}else{
  http_response_code(405);
  echo json_encode(['message'=> 'Method not allowed.']);
}


