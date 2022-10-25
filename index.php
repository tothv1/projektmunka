<!DOCTYPE html>


<html lang="hu">

<head>

<meta charset="UTF-8">
<title>Tóth Viktor webáruháza</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="webaruhaz.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.css" />
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/cookieconsent@3/build/cookieconsent.min.js" data-cfasync="false"></script>
<script>
window.cookieconsent.initialise({
  "palette": {
    "popup": {
      "background": "#237afc"
    },
    "button": {
      "background": "#fff",
      "text": "#237afc"
    }
  },
  "type": "opt-in",
  "content": {
    "message": "Az oldal sütiket használ, fogadd el vagy taka...",
    "dismiss": "Elutasítás",
    "allow": "Sütik engedélyezése",
    "link": "Szabályzat",
    "href": "https://www.google.com"
  }
});
</script>
<?php
  include('header.php');
?>
  
<nav class="mb-5 navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="kezdolap.php">Kezdőlap</a>
      </li>
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
        <a class="nav-link" href="tv.php">TV</a>
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
<div class="container-fluid">
<?php
include("mysql.php");

$sql = "SELECT * FROM termek, kategoria WHERE kategoria.id = termek.kategoria_id";
$result = mysqli_query($conn, $sql);
$sorszam = 1;
if (mysqli_num_rows($result) > 0) {
  // output data of each row
  echo "<table class='table table-striped p-0 m-0'>";
  echo "<tr>";
  
  echo 
   "<th>Sorszám</th>" .
   "<th>Termék neve</th> ".
   "<th>Kategória</th> " .
   "<th>Termék ára </th>" .
   "<th>Fotó</th>". 
   "<th>Mennyiség </th>";

   echo "</tr>";


  while($row = mysqli_fetch_assoc($result)) {
  
    echo "<tr>" ;

    echo 
     "<td>" .$sorszam. "</td>" .
     "<td>" .$row["termek_neve"]."</td>" .
     "<td>" .$row["kategoria_neve"]."</td>" .
     "<td>" .$row["termek_ara"]." Ft</td>".
     "<td><img src=\"fotok/$row[termek_kepe_kicsi]\" class=\"img-fluid\"></td>";
	 
    echo "<td>" .$row["mennyiseg"]."</td>" ;
    echo "</tr>" ;
    $sorszam++;

  }
} else {
  echo "0 találat";
}
echo "</table>";

mysqli_close($conn);
?>
</div>

<?php include("footer.php") ?>
</body>

<html>