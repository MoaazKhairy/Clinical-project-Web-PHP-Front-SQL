<?php
require 'db_conn.php';
$tables_columns = [
	'architecture' => [
		'DoorWidth',
		'Windows',
		'CeilingHeight',
		'Racks',
		'Hooks', 
		'Boards',
		'Tracks',
		'Rails',
		'Mirrors'
	],
	'arch_ceilingfinishes' => [
		'CeilingFinishes'
	],
	'arch_floorfinishes' => [
		'FloorFinishes'
	],
	'arch_wallfinishes' => [
		'WallFinishes'
	],
	'arch_specialconsiderations' => [
		'SpecialConsiderations'
	],
	'arch_specialstoragerequirements' => [
		'SpecialStorageRequirements'
	],
	'communications' => [
		'Communications'
	],
	'electrical' => [
		'ClockSystem',
		'Imaging'
	],
	'electrical_lighting' => [
		'Lighting'
	],
	'electrical_alarm' => [
		'Alarm'
	],
	'electrical_lightingcontrol' => [
		'LightingControl'
	],
	'electrical_doors' => [
		'Doors'
	],
	'mechanical' => [
		'Temperature',
		'Humidity',
	'RoomPressurization'
	],
	'plumbing_drainage' => [
		'Drainage'
	],
	'plumbing_water' => [
		'Water'
	],
	'plumbing_fixtures' => [
		'Fixtures'
	],
	'plumbing_gases' => [
		'Gases'
	],
	'plumbing_accessories' => [
		'Accessories'
	]
];
foreach ($tables_columns as $table => $columns) {
	foreach ($columns as $column) {
		$sql = "SELECT " . $column . ", COUNT(`" . $column . "`) FROM `" . $table . "` JOIN `operational_data_room` on `room_id` = ID WHERE PNO = '" . $_GET['projectno'] . "' GROUP BY `" . $column . "`";
		$results[$column] = $conn->query($sql);
	}
}
?>
<html>

<head>

    <title>Retrieval System</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
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
			    width: 75%;
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

    <h1> <em> <font face="Algerian" style="font-size:100px"> Retrieval System </font> </em> </h1>
<div class="container">
<?php
foreach ($tables_columns as $table => $columns) {
	foreach ($columns as $column) {
?>
  <div class="row">
    <div class="col-xs-6">
		<table align="center">
			<tr>
				<th style="color: brown" width="25%"><?php echo $column; ?></th>
				<th style="color: brown" width="25%">Count</th>
			</tr>
			<?php
			$data = [];
			$labels = [];
			$colors = [];
			while ($result = $results[$column]->fetch_assoc()) {
				$data[] = $result['COUNT(`'.$column.'`)'];
				$labels[] = $result[$column];
				$colors[] = "rgb(" . mt_rand(0, 255) . "," . mt_rand(0, 255) . "," . mt_rand(0, 255) . ")";
				echo '<tr>';
				echo '<td>' . $result[$column] . '</td>';
				echo '<td>' . $result['COUNT(`'.$column.'`)'] . '</td>';
				echo '</tr>';
			}
			?>
		</table>
    </div>
    <div class="col-xs-6">
		<canvas id="chart-area-<?php echo $column; ?>"></canvas>
    </div>
  </div>
<?php
		echo "<script>window." . $column  . "_name = '" . $column . "';</script>";
		echo "<script>window." . $column  . "_data = [";
		foreach ($data as $data_item) { echo $data_item . ","; }
		echo "];</script>";
		echo "<script>window." . $column  . "_labels = [";
		foreach ($labels as $labels_item) { echo "'" . $labels_item . "',"; }
		echo "];</script>";
		echo "<script>window." . $column  . "_colors = [";
		foreach ($colors as $colors_item) { echo "'" . $colors_item . "',"; }
		echo "];</script>";
	}
}
?>
</div>
	<script>
	window.onload = function() {
<?php
foreach ($tables_columns as $table => $columns) {
	foreach ($columns as $column) {
?>
		var config_<?php echo $column; ?> = {
			type: 'pie',
			data: {
				datasets: [{
					data: window.<?php echo $column; ?>_data,
					backgroundColor: window.<?php echo $column; ?>_colors,
					label: window.<?php echo $column; ?>_name,
				}],
				labels: window.<?php echo $column; ?>_labels,
			},
			options: {
				responsive: true
			}
		};

		
			var ctx_<?php echo $column; ?> = document.getElementById('chart-area-<?php echo $column; ?>').getContext('2d');
			window.myPie_<?php echo $column; ?> = new Chart(ctx_<?php echo $column; ?>, config_<?php echo $column; ?>);
<?php
	}
}
?>
	};
	</script>
</body>
</html>