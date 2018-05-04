<!-- 
# SIGN UP PAGE
# OGUZ KAAN AGAC: 04/05/2018
# VER 1.0
?> -->  
<?php
?>

<!DOCTYPE html>
<html>
<head>  <!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="random.css">
	<title>Sign Up</title>
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
						<label for="exampleInputEmail1">Email address</label>
						<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="joe@myemail.com">
						<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-4 col-centered">
						<label for="inputUsername">Username</label>
						<input type="text" class="form-control" name="username" id="inputUsername" placeholder="joe123x">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-4 col-centered">
						<label for="exampleInputPassword1">Password</label>
						<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-4 col-centered">
						<label for="inputSelect1">Account Type</label>
						<select class="form-control" name="selectedFrom" id="inputSelect1">
							<option>Author</option>
							<option>Editor</option>
							<option>Subscriber	</option>
						</select>
						<small id="accountTypeHelp" class="form-text text-muted">Non-subscriber accounts require additional confirmation.</small>
						<div class="text-center">
							<br>
							<button type="submit" class="btn btn-success">Sign Up</button>
						</div>
					</div>
				</div>
				
			</form>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
</body>
</html>