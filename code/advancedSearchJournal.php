<?php
?>
<!DOCTYPE html>
<html>
<head>  <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="random.css">
        <title>Publish a Paper</title>
  		<style>
          body {margin:0;}       
                  ul {
              list-style-type: none;
              margin: 0;
              padding: 0;
              overflow: hidden;
              background-color: #333;
              position: fixed;
              bottom: 0;
              width: 100%;
          }

          li {
              float: left;
          }

          li a {
              display: block;
              color: white;
              text-align: center;
              padding: 14px 16px;
              text-decoration: none;
          }

        </style>
        
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="index.php">CynicalApe Library</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <u2 class="navbar-nav">
                                <lx class="nav-item">
                                        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                                </lx>
                                <lx class="nav-item">
                                        <a class="nav-link" href="publish.php">Publish</a>
                                </lx>
                                <lx class="nav-item">
                                        <a class="nav-link" href="about.php">About</a>
                                </lx>
                                <lx class="nav-item">
                                        <a class="nav-link" href="assign.php">Assign</a>
                                </lx>
                                  <lx class="nav-item">
                                        <a class="nav-link" href="review.php">Review</a>
                                </lx>
                                 <lx class="nav-item">
                                        <a class="nav-link" href="endorsement.php">Endorsement</a>
                                </lx>
                                <lx class="nav-item active">
                                        <a class="nav-link" href="advancedSearch.php">Advanced Search</a>
                                </lx>
                                <lx class="nav-item">
                                        <div class="dropdown">               
                                          <div id="myDropdown" class="dropdown-content">
                                            <form>
                                            <input type="text" placeholder="Enter Publication Name" id="myInput" onkeyup="filterFunction()"><br>
                                            <button onclick="myFunction()" class="dropbtn">List Publication Citations</button>
                                            </form>
                                          </div>                    
                                        </div>
                                </lx>
                        </u2>
                </div>
        </nav>

<body>

<ul>
  <li><a href="#conferance">Conferance</a></li>
  <li><a class="active" href="#journal">Journal</a></li>
  <li><a href="#institution">Institution</a></li>
  <li><a href="#user">User</a></li>
  <li><a href="#publication">Publication</a></li>
  <li><a href="#author">Author</a></li>
</ul>

<div align="center"> <br><br><br>
 <label>Advanced Search for journal<br><br></label>
  <form class="example" action="/action_page.php" style="margin:auto;max-width:300px;height:50%" align="center">
    <input type="text" placeholder="Journal ID" name="search1"><br>
  	<br>
    <input type="text" placeholder="Journal Date" name="search2"><br>
    <br>
    <button type = "submit"style="font-size:18px">Search </button>
  </form>
</div>
        
        

       


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
</body>
</html>