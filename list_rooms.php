<?php
require 'db_conn.php';
$sql = "SELECT * FROM `operational_data_room`";
$rooms = $conn->query($sql);
?>
<html>
<body>

	<h1>Rooms</h1>

	<table>
		<tr>
			<th>ID</th>
			<th>Actions</th>
		</tr>
		<?php 
		while ($room = $rooms->fetch_assoc()) {
			echo '<tr>';
			
			echo '<td>' . $room['ID'] . '</td>';
			echo '<td><a href="view_room.php?ID=' . $room['ID'] . '">View</a> - <a href="delete_room.php?ID=' . $room['ID'] . '">Delete</a></td>';
			echo '</tr>';
		}
		?>
	</table>

</body>
</html>