<?php
require 'db_conn.php';

$sql = "DELETE FROM `project_data` where projectno = '" . $_GET['projectno'] . "'";

if ($conn->query($sql) === TRUE) {

	$conn->close();

	// Redirect back
	header('Location: list_projects.php');

} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
