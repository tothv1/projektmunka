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
<nav class="mb-5 navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <div class="dropdown">
          <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
            Ciklusok
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">For ciklus</a></li>
            <li><a class="dropdown-item" href="#">While ciklus</a></li>
            <li><a class="dropdown-item" href="#">Do-while ciklus</a></li>
          </ul>
        </div>
      </li>
      <li class="nav-item">
        <div class="dropdown">
          <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
            Fájl kezelés
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Fájl olvasás</a></li>
            <li><a class="dropdown-item" href="#">Fájl írás</a></li>
          </ul>
        </div>
      </li>
      <li class="nav-item">
        <div class="dropdown">
          <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">
            Függvények
          </button>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Létrhozás, meghívás</a></li>
            <li><a class="dropdown-item" href="#">Visszatérő függvény</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</nav>

<?php include("footer.php") ?>
</body>

<html>