<!-- 
# INDEX PAGE
# OGUZ KAAN AGAC: 04/05/2018
# VER 1.0
?> -->  
<?php
?>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="random.css">
  <title>CynicalApe Lib</title>
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.php">CynicalApe Library</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="library.php">Library</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.php">About</a>
      </li>
    </ul>
  </div>
</nav>
<div class="container">
  <div class="container">
    <form action="login_post.php" method="post">
      <div class="row">
        <div class="form-group col-sm-4 col-centered">
          <label for="inputUsername">Username</label>
          <input type="text" class="form-control" name="username" id="inputUsername" placeholder="Enter Username">
        </div>
      </div>
      <div class="row">
        <div class="form-group col-sm-4 col-centered">
          <label for="inputPassword">Password</label>
          <input type="password" class="form-control" name="customerID" id="inputPassword" placeholder="Enter Password">
          <div class="text-center">
            <br>
            <button type="submit" class="btn btn-dark">Login</button>
          </div>
        </div>
      </div>
    </form>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-sm-4 col-centered">
        <div class="text-center">
          <a class="btn btn-success" href="signup.php" role="button">Sign Up</a>
          <small id="signupHelp" class="form-text text-muted text-center">Don't have an account? Sign up here.</small>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
