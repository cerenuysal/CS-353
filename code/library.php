<!-- 
# LIBRARY PAGE
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
					<a class="nav-link" href="index.php">Library Home<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="publish.php">Publish</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="about.php">Logout</a>
				</li>
			</ul>
		</div>
	</nav>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-sm-9">
				<input class="form-control" type="text" placeholder="Search journal, paper, conference">
			</div>
			<div class="col-sm-1">
				<button type="submit" class="btn btn-primary">Search</button>
			</div>
			<div class="col-sm-2">
				<div class="btn-group">
					<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Sort By
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Relevance</a>
						<a class="dropdown-item" href="#">Date Ascending</a>
						<a class="dropdown-item" href="#">Date Descending</a>
						<a class="dropdown-item" href="#">Authors</a>
					</div>
				</div>
			</div>
		</div>
	</div>
		<br>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="table-responsive">
						<table class = 'table table-bordered table-hover'>
							<thead class = 'thead-dark'>
								<tr>
									<th scope='col'>#</th>
									<th scope='col'>ID</th>
									<th scope='col'>Title</th>
									<th scope='col'>Journal</th>
									<th scope='col'>Date</th>
									<th scope='col'>Authors</th>
								</tr>
							</thead>
							<tbody>
								<tr class='table'>
									<th scope='row'>1</th>
									<td> 007 </td>
									<td> adventures of joe</td>
									<td> journal of joes</td>
									<td> 04/05/2018</td>
									<td> joe </td>
								</tr>
								<tr class='table'>
									<th scope='row'>1</th>
									<td> 007 </td>
									<td> adventures of joe</td>
									<td> journal of joes</td>
									<td> 04/05/2018</td>
									<td> joe </td>
								</tr>
								<tr class='table'>
									<th scope='row'>1</th>
									<td> 007 </td>
									<td> adventures of joe</td>
									<td> journal of joes</td>
									<td> 04/05/2018</td>
									<td> joe </td>
								</tr>

							</tbody>
						</table>
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