<html>

<head>
	  <title>Project Form</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

    h1 {
    	margin-top: 0px;
	    text-align: center;
	    background-color: lightgray ;
	}
    
    div.form-group {
	  	padding-left: 50px;
	}
	
	body {
	        border: 10px solid darkgrey;
	        border-radius: 5px;	        
      		padding-top: 70px;
      		padding-bottom: 30px;
	}

    input[type=submit] {
			background-color: #ccc;
			padding left: 200px;
			border-radius: 8px;
		    text-align: center;
	}
</style>

</head>

<body>
<?php require 'navbar.php'; ?>

<form action="add_project.php" method="post">

    <h1> <em> <font face="Algerian" style="font-size:100px;"> Project Form </font> </em> </h1>

	<div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="ProjectNumber" style="font-size:15px">Project No: </label>
				<input type="text" name="projectno"  class="form-control " required><br>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="ProjectName" style="font-size:15px">Project Name: </label>
				<input type="text" name="projectname"  class="form-control "  required><br>
		    </div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="ProjectOwner" style="font-size:15px">Owner: </label>
				<input type="text" name="owner"  class="form-control "  required><br>
		    </div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="ProjectContractor" style="font-size:15px">Contractor: </label>
				<input type="text" name="contractor"  class="form-control "  required><br>
		    </div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="ProjectDate" style="font-size:15px">Date: </label>
				<input type="date"  name="date"  class="form-control "  required><br>
		    </div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="ProjectAddress" style="font-size:15px">Address: </label>
				<input type="text" name="address"  class="form-control "  required><br>
		    </div>
		</div>
	</div>

    <div  style="float: right; padding-right: 100px; ">
		<input type="submit" class="submit" value="Go" style= "font-size: 50px; padding: 1px 70px; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); ">
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>

</form>

</body>
</html>