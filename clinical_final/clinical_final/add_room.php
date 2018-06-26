<?php

require 'db_conn.php';

$sql = "INSERT INTO operational_data_room
(
	id,
	pno,
	area_in_m, 
	hours_of_use, 
	days_of_use, 
	function,
	occupancy_normal,
	occupancy_max
) VALUES (
	'" . $_POST['id'] . "', 
	'" . $_POST['pno'] . "', 
	'" . $_POST['area_in_m'] . "', 
	'" . $_POST['hours_of_use'] . "', 
	'" . $_POST['days_of_use'] . "', 
	'" . $_POST['function'] . "',
	'" . $_POST['occupancy_normal'] . "',
	'" . $_POST['occupancy_max'] . "'
)";


if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


// architecture
$sql = "INSERT INTO architecture
(
	room_id,
	DoorWidth,
	Windows,
	CeilingHeight,
	Racks,
	Hooks,
	Boards,
	Tracks,
	Rails,
	Mirrors
) VALUES (
	'" . $_POST['id'] . "',
	'" . $_POST['DoorWidth'] . "', 
	'" . $_POST['Windows'] . "', 
	'" . $_POST['CeilingHeight'] . "', 
	'" . $_POST['Racks'] . "', 
	'" . $_POST['Hooks'] . "', 
	'" . $_POST['Boards'] . "',
	'" . $_POST['Tracks'] . "',
	'" . $_POST['Rails'] . "',
	'" . $_POST['Mirrors'] . "'
)";


if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


// arch_ceilingfinishes
foreach ($_POST['CeilingFinishes'] as $CeilingFinish) {

	$sql = "INSERT INTO arch_ceilingfinishes
	(
		room_id,
		CeilingFinishes
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $CeilingFinish . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// arch_floorfinishes
foreach ($_POST['FloorFinishes'] as $FloorFinish) {

	$sql = "INSERT INTO arch_floorfinishes
	(
		room_id,
		FloorFinishes
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $FloorFinish . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// arch_wallfinishes
foreach ($_POST['WallFinishes'] as $WallFinish) {

	$sql = "INSERT INTO arch_wallfinishes
	(
		room_id,
		WallFinishes
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $WallFinish . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// arch_specialconsiderations
foreach ($_POST['SpecialConsiderations'] as $SpecialConsideration) {

	$sql = "INSERT INTO arch_specialconsiderations
	(
		room_id,
		SpecialConsiderations
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $SpecialConsideration . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// arch_specialstoragerequirements
foreach ($_POST['SpecialStorageRequirements'] as $SpecialStorageRequirement) {

	$sql = "INSERT INTO arch_specialstoragerequirements
	(
		room_id,
		SpecialStorageRequirements
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $SpecialStorageRequirement . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// communications
foreach ($_POST['Communications'] as $Communication) {

	$sql = "INSERT INTO communications
	(
		room_id,
		Communications
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $Communication . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// electrical
$sql = "INSERT INTO electrical
(
	room_id,
	ClockSystem,
	Imaging
) VALUES (
	'" . $_POST['id'] . "',
	'" . $_POST['ClockSystem'] . "', 
	'" . $_POST['Imaging'] . "'
)";


if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


// electrical_lighting
foreach ($_POST['Lighting'] as $Lightings) {

	$sql = "INSERT INTO electrical_lighting
	(
		room_id,
		Lighting
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $Lightings . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// electrical_alarm
foreach ($_POST['Alarm'] as $Alarm) {

	$sql = "INSERT INTO electrical_alarm
	(
		room_id,
		Alarm
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $Alarm . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// electrical_lightingcontrol
foreach ($_POST['LightingControl'] as $LightingControls) {

	$sql = "INSERT INTO electrical_lightingcontrol
	(
		room_id,
		LightingControl
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $LightingControls . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// electrical_doors
foreach ($_POST['Doors'] as $Door) {

	$sql = "INSERT INTO electrical_doors
	(
		room_id,
		Doors
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $Door . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// mechanical
$sql = "INSERT INTO mechanical
(
	room_id,
	Temperature,
	Humidity,
	RoomPressurization
) VALUES (
	'" . $_POST['id'] . "',
	'" . $_POST['Temperature'] . "', 
	'" . $_POST['Humidity'] . "',
	'" . $_POST['RoomPressurization'] . "'
)";


if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


// plumbing_drainage
foreach ($_POST['Drainage'] as $Drainage) {

	$sql = "INSERT INTO plumbing_drainage
	(
		room_id,
		Drainage
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $Drainage . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// plumbing_water
foreach ($_POST['Water'] as $Water) {

	$sql = "INSERT INTO plumbing_water
	(
		room_id,
		Water
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $Water . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}


// plumbing_fixtures
foreach ($_POST['Fixtures'] as $Fixture) {

	$sql = "INSERT INTO plumbing_fixtures
	(
		room_id,
		Fixtures
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $Fixture . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}

// plumbing_gases
foreach ($_POST['Gases'] as $Gas) {

	$sql = "INSERT INTO plumbing_gases
	(
		room_id,
		Gases
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $Gas . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}

// plumbing_accessories
foreach ($_POST['Accessories'] as $Accessory) {

	$sql = "INSERT INTO plumbing_accessories
	(
		room_id,
		Accessories
	) VALUES (
		'" . $_POST['id'] . "',
		'" . $Accessory . "'
	)";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

}



$conn->close();

// Redirect to homepage
header('Location: index.php');
