<?php

require_once __DIR__ . '/db_connect.php';

$db = new DB_CONNECT();

$response = array();

$name = $_POST["name"];
$address = $_POST["address"];
$phone = $_POST["phone"];
$region = $_POST["reg"];
if($region == "Rassul") {
	$response["error"] = "Error!!! You must choose your region";
	echo json_encode($response["error"]);
	echo "<br />";
	echo "<a href=http://localhost:3000/mydb_connect/index.html>Go back</a>";
	die();
	//exit("Error!!! You must choose your region");
}
//($region != 1) or exit("Error!!! You must choose your region");

date_default_timezone_set('Asia/Almaty');
$date = date('Y/m/d');
$time = date('H:i:s');

mysqli_query($db->connect(), "INSERT INTO `clients` (`CName`, `Address`, `phone`, `Region`) VALUES ('$name', '$address', '$phone', '$region')");


	$c1 = $_POST["chx1"];
	$c2 = $_POST["chx2"];
	$c3 = $_POST["chx3"];
	$c4 = $_POST["chx4"];	
	$c5 = $_POST["chx5"];
	$c6 = $_POST["chx6"];
	$c7 = $_POST["chx7"];
	$c8 = $_POST["chx8"];
	$c9 = $_POST["chx9"];
	$c10 = $_POST["chx10"];
	$c11 = $_POST["chx11"];
	$c12 = $_POST["chx12"];

$total_cost = $_POST["cost"];

mysqli_query($db->connect(), "INSERT INTO `order` (`Total_cost`, `DD.MM.YYYY`, `Time`, `Clients_ClientID`, `Clients_Region`) VALUES ('$total_cost', '$date', '$time', (SELECT max(ClientID) FROM clients), '$region')");

	if ($c1 != 0){
	mysqli_query($db->connect(), 
		"INSERT INTO `order_contains_food` 
			(`Order_OrderID`, `Food_FoodID`, `Amount`) 
		VALUES ((SELECT max(OrderID) FROM `order`),'1', '$c1')");
	}
	if ($c2 != 0){
		$c2 = $_POST["chx2"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'2', '$c2')");
	}
	if ($c3 != 0){
		$c3 = $_POST["chx3"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'3', '$c3')");
	}
	if ($c4 != 0){
		$c4 = $_POST["chx4"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'4', '$c4')");
	}
	if ($c5 != 0){
		$c5 = $_POST["chx5"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'5', '$c5')");
	}
	if ($c6 != 0){
		$c6 = $_POST["chx6"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'6', '$c6')");
	}
	if ($c7 != 0){
		$c7 = $_POST["chx7"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'7', '$c7')");
	}
	if ($c8 != 0){
		$c8 = $_POST["chx8"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'8', '$c8')");
	}
	if ($c9 != 0){
		$c9 = $_POST["chx9"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'9', '$c9')");
	}
	if ($c10 != 0){
		$c10 = $_POST["chx10"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'10', '$c10')");
	}
	if ($c11 != 0){
		$c11 = $_POST["chx11"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'11', '$c11')");
	}
	if ($c12 != 0){	
		$c12 = $_POST["chx12"];	
		mysqli_query($db->connect(), "INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES ((SELECT max(OrderID) FROM `order`),'12', '$c12')");
	}


	mysqli_query($db->connect(), "INSERT INTO `deliveryboy_delivers_order`
		VALUES((SELECT DeliveryBoyID FROM `deliveryboy`, `order` WHERE Region = Clients_Region AND OrderID = (SELECT MAX(OrderID) FROM `order`)),
				(SELECT max(OrderID) FROM `order`),
				'$phone')");


$response["confirm"] = "Your order confirmed";
header( "refresh:2;url=http://localhost:3000/mydb_connect/index.html" );
echo json_encode($response["confirm"]);
echo "<br />";
echo "<a href=http://localhost:3000/mydb_connect/index.html>Go back</a>";

?>