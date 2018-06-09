<?php

require_once __DIR__ . '/db_connect.php';

$db = new DB_CONNECT();

$response = array();

$response["food"] = mysqli_query($db->connect(), "SELECT Name, Description, Price FROM `food`");

echo json_encode($response["food"]);


?>