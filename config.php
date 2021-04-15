<?php

$servername = "localhost";
$username = "id16609657_sftbanushka";
$password = "Trin12345678!";
$database = "id16609657_sftb";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>