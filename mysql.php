<?php 
$servername = "localhost";
$username = "vitya0717";
$password = "123456789";
$dbname = "vitya0717";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Kapcsolódási hiba: " . mysqli_connect_error());
}
?>