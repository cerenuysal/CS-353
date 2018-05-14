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
        <title>Publish a Paper</title>
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="about.php">CynicalApe Library</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <u2 class="navbar-nav">
                                <li class="nav-item">
                                        <a class="nav-link" href="publish.php">Publish</a>
                                </li>
								<li class="nav-item">
                                        <a class="nav-link" href="library.php">Library</a>
                                </li>                               
                                <li class="nav-item">
                                        <a class="nav-link" href="about.php">About</a>
                                </li>
                                <li class="nav-item">
                                        <a class="nav-link" href="assign.php">Assign</a>
                                </li>
                                  <li class="nav-item active">
                                        <a class="nav-link" href="review.php">Review</a>
                                </li>
                                 <li class="nav-item">
                                        <a class="nav-link" href="endorsement.php">Endorsement</a>
                                </li>
                                <li class="nav-item">
                                        <a class="nav-link" href="advancedSearchPageConf.php">Advanced Search</a>
                                </li>
								<li class="nav-item">
                                        <a class="nav-link" href="index.php">Logout</a>
                                </li>
                        </u2>
                </div>
        </nav>

        <br>
        <div class="container">
                <div class="jumbotron">
                        <h1 class="display-4">Send your review</h1>
                        <p class="lead">Post your review assigned by your editor!</p>
                        <hr class="my-4">
                        <p> Review paper page is designed for reviewers exclusively, allowing them to post the review of assigned paper.
                        </p>
                </div>
                <div class="container">
                        <form action="login_post.php" method="post">
                        		<div class="row">
                                        <div class="form-group col-sm-4 col-centered">
                                                <label><b>Paper:</b> Origins of the species</label> <br>
                                                <label><b>Assigned by editor:</b> Chris</label>
                                        </div>
                                </div>

                            <div class="form-group">
                                <label for="comment">Comment:</label>
                                <textarea class="form-control" rows="5" id="comment"></textarea>
                            </div>

                            <div class="row">
                                        <div class="form-group col-sm-4 col-centered">
                                                <br>
                                                <label for="exampleInputPassword1">Confirm your password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required />                                               
												<br>
												<button type="submit" onclick="return myFunction();" class="btn btn-success">Post review</button>
												<script>
												function myFunction() {
													var url = window.location.href;
													if (confirm("Are you sure ?")) {
															txt = "You pressed OK!";
													} else {
															return false;
													}
												}
												</script>                                               
                                        </div>
                                </div>
                        </form>
                </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
</body>
</html>