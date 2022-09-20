<!DOCTYPE html>


<html lang="hu">

<head>

<meta charset="UTF-8">
<title>Kiss Gergő webáruháza</title>
<link rel="stylesheet" href="webaruhaz.css">

</head>

<body>

<table>

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
  echo "<tr>";
  
  echo "<td>ID</td>" .
  "<td>Termék neve</td> ".
   "<td>Kategória</td> " .
   "<td>Termék ára </td>" .
   "<td>Termék képe nagy</td> " .
   "<td>Termék képe kicsi </td>". 
   "<td>Mennyiség </td>";

   echo "</tr>";


  while($row = mysqli_fetch_assoc($result)) {

  
    echo "<tr>" ;

    echo "<td>" .$row["id"]. "</td>" .
    "<td>" .$row["termek_neve"]."</td>" .
     "<td>" .$row["kategoria"]."</td>" .
     "<td>" .$row["termek_ara"]."</td>" .
     "<td>" .$row["termek_kepe_nagy"]."</td>" .
     "<td>" .$row["termek_kepe_kicsi"]."</td>" .
     "<td>" .$row["mennyiseg"]."</td>" . "<br>";

     echo "</tr>" ;

  }
} else {
  echo "0 találat";
}

mysqli_close($conn);
?>

</table>

</body>

<html>