<?php
require 'db_conn.php';
$sql = "SELECT * FROM `operational_data_room` where ID = '" . $_GET['ID'] . "'";
$room = $conn->query($sql);
$room = $room->fetch_assoc();
?>
<html>

<head>

      <title>Room Data</title>
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
			    width: 100%;
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

	<h1> <em> <font face="Algerian" style="font-size:100px"> Room data </font> </em> </h1>

	<table>
		<tr>
			<th style="color: brown">ID</th>
			<th style="color: brown">Project NO</th>
			<th style="color: brown">area_in_m</th>
			<th style="color: brown">hours_of_use</th>
			<th style="color: brown">function</th>
			<th style="color: brown">occupancy_normal</th>
			<th style="color: brown">occupancy_max</th>			
			<th style="color: brown">Actions</th>
		</tr>
		<?php 
		echo '<tr>';
		echo '<td>' . $room['ID'] . '</td>';
		echo '<td>' . $room['PNO'] . '</td>';
		echo '<td>' . $room['area_in_m'] . '</td>';
		echo '<td>' . $room['hours_of_use'] . '</td>';
		echo '<td>' . $room['function'] . '</td>';
		echo '<td>' . $room['occupancy_normal'] . '</td>';
		echo '<td>' . $room['occupancy_max'] . '</td>';		
		echo '<td><a href="delete_room.php?ID=' . $room['ID'] . '">Delete</a></td>';
		echo '</tr>';
		?>
	</table>

</body>
</html>
