<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webaruhaz";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Kapcsolódási hiba: " . mysqli_connect_error());
}

$sql = "SELECT * FROM termek";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    echo "ID: " .$row["id"]. 
    ", Termék neve: " .$row["termek_neve"].
     ",  Kategória: " .$row["kategoria"].
     ",  Termék ára: " .$row["termek_ara"].
     ",  Termék képe nagy: " .$row["termek_kepe_nagy"].
     ",  Termék képe kicsi: " .$row["termek_kepe_kicsi"].
     ",  Mennyiség: " .$row["mennyiseg"]. "<br><br>";
  }
} else {
  echo "0 találat";
}

mysqli_close($conn);
?>
