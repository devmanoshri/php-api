<?php

class SendResponse {
  public static function send(int $statusCode, $data) {
    http_response_code($statusCode);
    header("Content-Type: application/json");
    echo json_encode($data);
  }
}