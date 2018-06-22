<?php
require 'db_conn.php';
$sql = "SELECT * FROM `operational_data_room` where ID = '" . $_GET['ID'] . "'";
$room = $conn->query($sql);
$room = $room->fetch_assoc();
?>
<html>
<body>

	<h1>Rooms</h1>

	<table>
		<tr>
			<th>ID</th>
			<th>Project NO</th>
			<th>area_in_m</th>
			<th>hours_of_use</th>
			<th>function</th>
			<th>occupancy_normal</th>
			<th>occupancy_max</th>			
			<th>Actions</th>
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
