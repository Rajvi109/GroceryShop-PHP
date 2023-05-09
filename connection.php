<?php

function Connect()
{
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "gro_shop";

	//Create Connection
	$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname) or die($conn->connect_error);

	return $conn;
}
?>