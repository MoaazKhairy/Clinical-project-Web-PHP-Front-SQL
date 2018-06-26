<?php
require 'db_conn.php';

$sql = "DELETE FROM `operational_data_room` where ID = '" . $_GET['ID'] . "'";

if ($conn->query($sql) === TRUE) {

	$conn->close();

	// Redirect back
	header('Location: list_rooms.php');

} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
