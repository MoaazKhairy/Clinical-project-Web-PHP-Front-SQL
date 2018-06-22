<?php

require 'db_conn.php';

$sql = "INSERT INTO project_data
(
	projectno,
	projectname,
	owner, 
	contractor, 
	date, 
	address
) VALUES (
	'" . $_POST['projectno'] . "', 
	'" . $_POST['projectname'] . "', 
	'" . $_POST['owner'] . "', 
	'" . $_POST['contractor'] . "', 
	'" . $_POST['date'] . "', 
	'" . $_POST['address'] . "'
)";


if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

// Redirect to homepage
header('Location: index.php');
