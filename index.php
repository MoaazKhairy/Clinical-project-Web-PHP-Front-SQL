<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Clinical</title>
    <style type="text/css">
    body {
      padding-top: 70px;
      padding-bottom: 30px;
    }
    .carousel-inner>.item>a>img, .carousel-inner>.item>img {
      width: 100%;
      height: 480px;
    }
    </style>
</head>
<body>
<?php require 'navbar.php'; ?>

<div class="container">

  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Add project.jpg" alt="Add Project">
        <div class="carousel-caption" style="background-color: rgba(0,0,0,.5);">
          <h3><a style="color: #fff;" href="add_project_form.php">Add Project</a></h3>
        </div>
      </div>
      <div class="item">
        <img src="Add Room.jpg" alt="Add Room">
        <div class="carousel-caption" style="background-color: rgba(0,0,0,.5);">
          <h3><a style="color: #fff;" href="add_room_form.php">Add Room</a></h3>
        </div>
      </div>
      <div class="item">
        <img src="List projects.jpg" alt="List Projects">
        <div class="carousel-caption" style="background-color: rgba(0,0,0,.5);">
          <h3><a style="color: #fff;" href="list_projects.php">List Projects</a></h3>
        </div>
      </div>
      <div class="item">
        <img src="List Rooms.jpg" alt="List Rooms">
        <div class="carousel-caption" style="background-color: rgba(0,0,0,.5);">
          <h3><a style="color: #fff;" href="list_rooms.php">List Rooms</a></h3>
        </div>
      </div>
    </div>
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

</div> <!-- /container -->
</body>
</html> 
