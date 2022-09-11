<!DOCTYPE html>
<html lang="en">
<?php
$servername = "localhost";
$username = "root";
$password = "";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">

    <title>Regisztrációs oldal</title>

</head>
<body>
    <div class="register-title">
        <div class="register-title-text">Regisztráció</div>
    </div>
    <div class="register-container">
        <label for="email">E-mail-cím</label>
        <input type="email" id="email" name="emailaddress" placeholder="E-mail-címed.." required>
        <label for="password">Jelszó</label>
        <input type="password" id="password" name="password" placeholder="Jelszavad.." required>
        <label for="username">Felhasználónév</label>
        <input type="text" id="username" name="username" placeholder="Felhasználóneved.." required>

        <button class="submit-button" type="submit">Regisztráció</button>

    </div>
</body>
</html>