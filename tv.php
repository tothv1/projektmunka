<!DOCTYPE html>


<html lang="hu">

<head>

<meta charset="UTF-8">
<title>Tóth Viktor webáruháza</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<?php
  include('header.php');
?>
<nav class="mt-0 navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="index.php">Minden termék</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="videokamera.php">Videókamera</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="telefon.php">Telefon</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="tv.php">TV</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="laptop.php">Laptop</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="okosora.php">Okosóra</a>
      </li>
    </ul>
  </div>
</nav>

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
  echo "<table class='table table-striped p-0 m-0'>";
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
echo "</table>";

mysqli_close($conn);
?>

<?php include("footer.php") ?>
</body>

<html>