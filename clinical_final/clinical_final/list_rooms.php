<?php
require 'db_conn.php';
$sql = "SELECT * FROM `operational_data_room` JOIN `project_data` ON `PNO` = `projectNO`";
$rooms = $conn->query($sql);
?>
<html>

<head>

    <title>Rooms List</title>
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
        body {
		        border: 10px solid darkgrey;
		        border-radius: 5px;	        
		  		padding-top: 70px;
		  		padding-bottom: 30px;
			}
		table {
			    margin-top: 25px;
			    font-family: arial, sans-serif;
			    border-collapse: collapse;
			    width: 50%;
              }
            
        td, th {
			    border: 1px solid #dddddd;
			    text-align: left;
			    padding: 8px;
		    }

		tr:nth-child(even) {
			    background-color: #dddddd;
		    }
	</style>
</head>

<body>
<?php require 'navbar.php'; ?>

    <h1> <em> <font face="Algerian" style="font-size:100px"> Rooms List </font> </em> </h1>

	<table align="center" >
		<tr>
			<th style="color: brown" width="25%">ID</th>
			<th style="color: brown" width="25%">Project Name</th>
			<th style="color: brown" width="25%">Actions</th>

		</tr>
		<?php 
		while ($room = $rooms->fetch_assoc()) {
			echo '<tr>';
			
			echo '<td>' . $room['ID'] . '</td>';
			echo '<td><a href="view_project.php?projectno=' . $room['projectNO'] . '">' . $room['projectName'] . '</a></td>';
			echo '<td><a href="view_room.php?ID=' . $room['ID'] . '">View</a> - <a href="delete_room.php?ID=' . $room['ID'] . '">Delete</a></td>';
			echo '</tr>';
		}
		?>
	</table>

</body>
</html>