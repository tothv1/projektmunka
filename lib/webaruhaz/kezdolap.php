<!DOCTYPE html>


<html oncontextmenu="return false" lang="hu">

<head>

<meta charset="UTF-8">
<title>Juhász Balázs webáruháza</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
  document.onkeydown = function(e) {
  if(event.keyCode == 123) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
     return false;
  }
}
</script>
<link rel="stylesheet" href="style/webaruhaz.css">

</head>
<body>
<?php
  include('header.php');
?>
<nav class="mb-5 navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="kezdolap.php">Kezdőlap</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.php">Minden termék</a>
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
<div class="container mb-3">
		<h2 class="text-center" style="margin-bottom:20; margin-top:20px"> ÜDVÖZÖLLEK A WEBÁRUHÁZAMBAN!</h2>
	
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="assets/home_images/slide1.jpg" width="600" height="500" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="assets/home_images/slide2.jpg" width="600" height="500" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="assets/home_images/slide3.jpg" width="600" height="500" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

  </div>

<?php include("footer.php") ?>
</body>

<html>