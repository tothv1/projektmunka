<!DOCTYPE html>


<html lang="hu">

<head>

<meta charset="UTF-8">
<title>Tóth Viktor webáruháza</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
  table, td, th, tr{
    border-collapse: collapse;
    border:1px solid black;
    text-align: left;
    margin-left: auto;
    margin-right: auto;
}
</style>
</head>
<body>
<div class="p-5 bg-primary text-white text-center">
  <h1>Tóth Viktor</h1>
  <p>Vásárolj anti bc eszközöket ;)</p> 
</div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link"  href="index.php">Minden termék</a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="videokamera.php">Videókamera</a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="telefon.php">Telefon</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active"  href="tv.php">TV</a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="laptop.php">Laptop</a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="okosora.php">Okosóra</a>
      </li>
    </ul>
  </div>
</nav>

<table>
<br>
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

$sql = "SELECT * FROM termek WHERE kategoria = 'TV'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  echo "<tr>";
  
  echo 
   "<th>ID</th>" .
   "<th>Termék neve</th> ".
   "<th>Kategória</th> " .
   "<th>Termék ára </th>" .
   "<th>Fotó</th>". 
   "<th>Mennyiség </th>";

   echo "</tr>";


  while($row = mysqli_fetch_assoc($result)) {
  
    echo "<tr>" ;

    echo 
     "<td>" .$row["id"]. "</td>" .
     "<td>" .$row["termek_neve"]."</td>" .
     "<td>" .$row["kategoria"]."</td>" .
     "<td>" .$row["termek_ara"]."</td>".
     "<td><img src=\"fotok/$row[termek_kepe_kicsi]\" alt=\"\" height=\"200\" widht=\"300\" class=\"img-fluid\" style=\"max-width=\"300\"\"></td>";
	 
    echo "<td>" .$row["mennyiseg"]."</td>" ;
    echo "</tr>" ;

  }
} else {
  echo "0 találat";
}

mysqli_close($conn);
?>

</table>
<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>
</body>

<html>