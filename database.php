<?php

class Database {
  private static $instance = null;
  private $connection;

  // Database credentials
  private $host='localhost:3306';
  private $username='ccAdmin';
  private $password= 'ccAdmin';
  private $database ='crave_cakes_db';

  // Private constructor to prevent instantiation
  private function __construct() {
    $this->connection = new mysqli($this->host, $this->username, $this->password, $this->database);

    if ($this->connection->connect_error) {
        die("Database connection failed: " . $this->connection->connect_error);
    }
}
  
   // Get the singleton instance of the database connection
  public static function getDBInstance() {
    if(self::$instance == null) {
      self::$instance = new Database();
    }
    return self::$instance;
  }
  
  // Get the database connection
  public function getConnection(){
    return $this->connection;
  }

}

