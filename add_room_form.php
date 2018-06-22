<?php
require 'db_conn.php';
$sql = "SELECT `projectNO`, `projectName` FROM `project_data`";
$projects = $conn->query($sql);
?>
<html>
<head>
  <title>Room Data Sheet</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
	  h1 {
	    text-align: center;
	    background-color: lightgray ;
	  }

      hr {
	    border-style: inset;
        border-width: 1px;
	  }
	  div {
	  	padding-left: 50px;
	  }
	  body{
        border: 10px solid darkgrey;
        border-radius: 5px;
      }
      input[type=submit] {
      	background-color: #ccc;
      	padding left: 200px;
      	border-radius: 8px;
        text-align: center;
      }
     .checkboxes {
      text-align:left;
     }

    .checkboxes input{
      margin: 0px 0px 0px 40px;
     }

     .checkboxes label{
       margin: 0px 0px 0px 0px;
     }
     .radioboxes {
      text-align:left;
     }

    .radioboxes input{
      margin: 0px 0px 0px 40px;
     }

     .radioboxes label{
       margin: 0px 0px 0px 0px;
     }
  </style>
</head>
<body>

<form action="add_room.php" method="post">

	<h1> <em> <font face="Algerian"> Room Data Sheet </font> </em> </h1>

	<hr>

	<h2> <em> &#9658; OPERATIONAL DATA </em> </h2>
	
    <div>
    	<div class="form-group row">
			<div class="col-xs-4">
				<label for="id" style="font-size:15px">ID:</label>
				<input type="text" name="id" class="form-control " id="id" required>
			</div>
	    </div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="pno" style="font-size:15px">Project Name:</label>
				<select name="pno" class="form-control" id="pno" required>
				<?php 
				while ($project = $projects->fetch_assoc()) {
				echo '<option value="' . $project['projectNO'] . '">' . $project['projectName'] . '</option>';
				}
				?>
				</select>
		    </div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="area_in_m" style="font-size:15px">Area in m:</label>
				<input type="number" name="area_in_m" class="form-control" id="area_in_m" required>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="hours_of_use" style="font-size:15px">Hours of use:</label>
				<input type="number" name="hours_of_use" class="form-control" id="hours_of_use" required>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="days_of_use" style="font-size:15px">Days of use:</label>
				<input type="number" name="days_of_use" class="form-control" id="days_of_use" required>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="function" style="font-size:15px">Function:</label>
				<input type="text" name="function" class="form-control" id="function" required>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="occupancy_normal" style="font-size:15px">Occupancy normal:</label>
				<input type="number" name="occupancy_normal" class="form-control" id="occupancy_normal" required>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-xs-4">
				<label for="occupancy_max" style="font-size:15px">Occupancy max:</label>
				<input type="number" name="occupancy_max" class="form-control" id="occupancy_max" required>
			</div>
		</div>
	</div>
	<hr>

	<h2> <em> &#9658; ARCHITECTURE </em> </h2>

	<div>
		<b style="color: brown"> Door Width: </b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="DoorWidth" value="Standard" required> Standard
			</label>
			<label>
				<input type="radio" name="DoorWidth" value="Wheelchair" required> Wheelchair
			</label>
			<label>
				<input type="radio" name="DoorWidth" value="Stretcher" required> Stretcher
			</label>
			<label>
				<input type="radio" name="DoorWidth" value="Bed" required> Bed
			</label>
		</div>
	</div>


	<div>
		<b style="color: brown"> Windows: </b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="Windows" value="Exterior" required> Exterior
			</label>
			<label>
				<input type="radio" name="Windows" value="Interior" required> Interior
			</label>
			<label>
				<input type="radio" name="Windows" value="Operable" required> Operable
			</label>
		</div>
	</div>

    <div>
		<b style="color: brown"> CeilingHeight:</b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="CeilingHeight" value="Standard" required> Standard
			</label>
			<label>
				<input type="radio" name="CeilingHeight" value="Special" required> Special
			</label>
		</div>
	</div>

    <div>
		<b style="color: brown"> Racks: </b><br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="Racks" value="Glassware Draining" required> Glassware Draining
			</label>
			<label>
				<input type="radio" name="Racks" value="Case Notes" required> Case Notes
			</label>
			<label>
				<input type="radio" name="Racks" value="Stationary" required> Stationary
			</label>
			<label>
				<input type="radio" name="Racks" value="Gas Cylinder" required> Gas Cylinder
			</label>
			<label>
				<input type="radio" name="Racks" value="Mop/Broom" required> Mop/Broom
			</label>
			<label>
				<input type="radio" name="Racks" value="Bedpan" required> Bedpan
			</label>
		</div>
	</div>

    <div>
		<b style="color: brown"> Hooks:</b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="Hooks" value="Clothes" required> Clothes
			</label>
			<label>
				<input type="radio" name="Hooks" value="Equipment, ceiling mounted" required> Equipment, ceiling mounted
			</label>
			<label>
				<input type="radio" name="Hooks" value="Equipment, wall mounted Suspension Frames Ceiling mounted" required> Equipment, wall mounted Suspension Frames Ceiling mounted
			</label>
			<label>
				<input type="radio" name="Hooks" value="Equipment, wall mounted Suspension Frames Wall mounted" required> Equipment, wall mounted Suspension Frames Wall mounted
			</label>
		</div>
	</div>

    <div>
		<b style="color: brown"> Boards: </b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="Boards" value="Bulletin" required> Bulletin
			</label>
			<label>
				<input type="radio" name="Boards" value="Chalkboard" required> Chalkboard
			</label>
			<label>
				<input type="radio" name="Boards" value="Whiteboard" required> Whiteboard
			</label>
			<label>
				<input type="radio" name="Boards" value="Magnetic" required> Magnetic
			</label>
			<label>
				<input type="radio" name="Boards" value="Cork" required> Cork
			</label>
			<label>
				<input type="radio" name="Boards" value="Key" required> Key
			</label>
			<label>
				<input type="radio" name="Boards" value="Other: Wood Veneer Panels" required> Other: Wood Veneer Panels
			</label>
		</div>
	</div>

    <div>
		<b style="color: brown"> Tracks: </b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="Tracks" value="Curtain" required> Curtain
			</label>
			<label>
				<input type="radio" name="Tracks" value="Bed Cubicle" required> Bed Cubicle
			</label>
			<label>
				<input type="radio" name="Tracks" value="Shower" required> Shower
			</label>
			<label>
				<input type="radio" name="Tracks" value="I.V" required> I.V
			</label>
		</div>
	</div>

    <div>
		<b style="color: brown"> Rails: </b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="Rails" value="Grab" required> Grab
			</label>
			<label>
				<input type="radio" name="Rails" value="Towel" required> Towel
			</label>
		</div>
	</div>

    <div>
		<b style="color: brown"> Mirrors:</b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="Mirrors" value="Size" required> Size
			</label>
			<label>
				<input type="radio" name="Mirrors" value="Other" required> Other
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Ceiling Finishes: </b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="CeilingFinishes[]" value="Acoustic"> Acoustic
			</label>
			<label>
				<input type="checkbox" name="CeilingFinishes[]" value="Washable"> Washable
			</label>
			<label>
				<input type="checkbox" name="CeilingFinishes[]" value="Special"> Special
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Floor Finishes:</b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="FloorFinishes[]" value="Water Impervious"> Water Impervious
			</label>
			<label>
				<input type="checkbox" name="FloorFinishes[]" value="Resilient"> Resilient
			</label>
			<label>
				<input type="checkbox" name="FloorFinishes[]" value="Carpet"> Carpet
			</label>
			<label>
				<input type="checkbox" name="FloorFinishes[]" value="Chemical Resistant"> Chemical Resistant
			</label>
			<label>
				<input type="checkbox" name="FloorFinishes[]" value="Non-skid"> Non-skid
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Wall Finishes: </b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="WallFinishes[]" value="Standard"> Standard
			</label>
			<label>
				<input type="checkbox" name="WallFinishes[]" value="Washable"> Washable
			</label>
			<label>
				<input type="checkbox" name="WallFinishes[]" value="Water Impervious"> Water Impervious
			</label>
			<label>
				<input type="checkbox" name="WallFinishes[]" value="Special Protection"> Special Protection
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Special Considerations: </b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Noise (Insulate walls)"> Noise (Insulate walls)
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Vibration"> Vibration
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Radiation Shielding"> Radiation Shielding
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Magnetic Field"> Magnetic Field
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Noxious Gas/Vapour"> Noxious Gas/Vapour
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Corrosion"> Corrosion
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Static Electricity"> Static Electricity
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Natural Light/View Out"> Natural Light/View Out
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Special Floor Conditions"> Special Floor Conditions
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Special Ceiling Conditions"> Special Ceiling Conditions
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Local Scavenging System"> Local Scavenging System
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Speech Privacy Isolation"> Speech Privacy Isolation
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Glazed Partitions/Doors"> Glazed Partitions/Doors
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Laminar Flow Cabinet"> Laminar Flow Cabinet
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Fume Cabinet for Chemical"> Fume Cabinet for Chemical
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Fume Cabinet for Radioactive"> Fume Cabinet for Radioactive
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Fume Cabinet for Biohazard"> Fume Cabinet for Biohazard
			</label>
			<label>
				<input type="checkbox" name="SpecialConsiderations[]" value="Exhaust Canopy"> Exhaust Canopy
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Special Storage Requirements: </b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Equipment"> Equipment
			</label>
			<label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Refrigerated"> Refrigerated
			</label>
			<label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Wheelchairs/ Stretchers"> Wheelchairs/ Stretchers
			</label>
			<label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Medications"> Medications
			</label>
			<label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Narcotics"> Narcotics
			</label>
			<label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Photo Equipment"> Photo Equipment
			</label>
			<label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Radiology Cassettes"> Radiology Cassettes
			</label>
			<label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Solutions"> Solutions
			</label><label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Supplies"> Supplies
			</label>
			<label>
				<input type="checkbox" name="SpecialStorageRequirements[]" value="Warming Cabinet"> Warming Cabinet
			</label>
		</div>
	</div>

	<hr>

	<h2> <em> &#9658; COMMUNICATIONS DATA </em> </h2>

    <div  class="checkboxes">
		<label>
			<input type="checkbox" name="Communications[]" value="Bedhead Consoles"> Bedhead Consoles
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Closed Circuit TV (Educational)"> Closed Circuit TV (Educational)
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Computer Terminal"> Computer Terminal
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Computer Printer"> Computer Printer
		</label>
		 <h5> <b style="color: brown">Call System : </b> </h5>
		<label>
			<input type="checkbox" name="Communications[]" value="Emergency"> Emergency
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Audio"> Audio
		</label>
        <label>
			<input type="checkbox" name="Communications[]" value="Audio/ Visual"> Audio/ Visual
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Code Blue (Cardiac)"> Code Blue (Cardiac)
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Code White (Panic)"> Code White (Panic)
		</label>
		<br>
		<label>
			<input type="checkbox" name="Communications[]" value="Patient Monitoring "> Patient Monitoring
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Telephone"> Telephone
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Dictation"> Dictation
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Intercom"> Intercom
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Television"> Television
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Data"> Data
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Security TV"> Security TV
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Access Control"> Access Control
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Pocket Paging"> Pocket Paging
		</label>
		<label>
			<input type="checkbox" name="Communications[]" value="Public Address"> Public Address
		</label>
	</div>

	<hr>

	<h2> <em> &#9658; ELECTRICAL DATA </em> </h2>

	<div>
		<b style="color: brown"> Clock System: </b> <br>
		<div class="checkboxes">
			<label>
				<input type="radio" name="ClockSystem" value="Synchronized" required> Synchronized
			</label>
			<label>
				<input type="radio" name="ClockSystem" value="Stand Alone" required> Stand Alone
			</label>
			<label>
				<input type="radio" name="ClockSystem" value="24 Hour" required> 24 Hour
			</label>
			<label>
				<input type="radio" name="ClockSystem" value="12 Hour" required> 12 Hour
			</label>
			<label>
				<input type="radio" name="ClockSystem" value="Elapsed Time" required> Elapsed Time
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Imaging: </b> <br>
		<div class="checkboxes">
			<label>
				<input type="radio" name="Imaging" value="Film Reader" required> Film Reader
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Lighting: </b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="Lighting[]" value="Ambient"> Ambient
			</label>
			<label>
				<input type="checkbox" name="Lighting[]" value="Task"> Task
			</label>
			<label>
				<input type="checkbox" name="Lighting[]" value="Examining"> Examining
			</label>
			<label>
				<input type="checkbox" name="Lighting[]" value="Colour Corrected"> Colour Corrected
			</label>
		</div>
	</div>
	
	<div>
		<b style="color: brown"> Alarm and Detection:</b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="Alarm[]" value=" Fire Alarm System">  Fire Alarm System
			</label>
			<label>
				<input type="checkbox" name="Alarm[]" value="Intrusion Detector"> Intrusion Detector
			</label>
			<label>
				<input type="checkbox" name="Alarm[]" value="Heat Detector"> Heat Detector
			</label>
			<label>
				<input type="checkbox" name="Alarm[]" value="Smoke Detector"> Smoke Detector
			</label>
			<label>
				<input type="checkbox" name="Alarm[]" value="Gas Detector"> Gas Detector
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Lighting Control:</b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="LightingControl[]" value="Wall Switch"> Wall Switch
			</label>
			<label>
				<input type="checkbox" name="LightingControl[]" value="Occupancy Sensor"> Occupancy Sensor
			</label>
			<label>
				<input type="checkbox" name="LightingControl[]" value="Daylight Sensor"> Daylight Sensor
			</label>
			<label>
				<input type="checkbox" name="LightingControl[]" value="Dimmer"> Dimmer
			</label>
			<label>
				<input type="checkbox" name="LightingControl[]" value="Bedhead"> Bedhead
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Door:</b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="Doors[]" value="Magnetic Door Position Switch"> Magnetic Door Position Switch
			</label>
			<label>
				<input type="checkbox" name="Doors[]" value="Electronic Door Locking Hardware"> Electronic Door Locking Hardware
			</label>
			<label>
				<input type="checkbox" name="Doors[]" value="Automatic Door Opener"> Automatic Door Opener
			</label>
			<label>
				<input type="checkbox" name="Doors[]" value="Request-to-exit for Door Shunt"> Request-to-exit for Door Shunt
			</label>
		</div>
	</div>

	<hr>

	<h2> <em> &#9658; MECHANICAL DATA </em> </h2>

	<div>
		<b style="color: brown"> Temperature:</b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="Temperature" value="Standard (23ºC)" required> Standard (23ºC)
			</label>
			<label>
				<input type="radio" name="Temperature" value="Special" required> Special
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Humidity: </b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="Humidity" value="Standard (35% min)" required> Standard (35% min)
			</label>
			<label>
				<input type="radio" name="Humidity" value="Special" required> Special
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Room Pressurization: </b> <br>
		<div class="radioboxes">
			<label>
				<input type="radio" name="RoomPressurization" value="Equal" required> Equal
			</label>
			<label>
				<input type="radio" name="RoomPressurization" value="Negative" required> Negative
			</label>
			<label>
				<input type="radio" name="RoomPressurization" value="Positive" required> Positive
			</label>
			<label>
				<input type="radio" name="RoomPressurization" value="Reversible" required> Reversible
			</label>
		</div>
	</div>


    <hr>
    <h2> <em>  &#9658; PLUMBING DATA </em> </h2>

    <div>
		<b style="color: brown"> Drainage: </b> <br>
		<div class="checkboxes">
			<label>
				<input type="checkbox" name="Drainage[]" value="Sanitary"> Sanitary
			</label>
			<label>
				<input type="checkbox" name="Drainage[]" value="Grease"> Grease
			</label>
			<label>
				<input type="checkbox" name="Drainage[]" value="Plaster"> Plaster
			</label>
			<label>
				<input type="checkbox" name="Drainage[]" value="Acid"> Acid
			</label>
			<label>
				<input type="checkbox" name="Drainage[]" value="Oil"> Oil
			</label>
			<label>
				<input type="checkbox" name="Drainage[]" value="Floor Drain"> Floor Drain
			</label>
			<label>
				<input type="checkbox" name="Drainage[]" value="Radioisotopes"> Radioisotopes
			</label>
			<label>
				<input type="checkbox" name="Drainage[]" value="Solvents"> Solvents
			</label>
			<label>
				<input type="checkbox" name="Drainage[]" value="Housekeeping Vacuum"> Housekeeping Vacuum
			</label>
		</div>
	</div>

	<div>
		<b style="color: brown"> Fixtures and Fittings: </b> <br>
		<div class = "checkboxes">
			<label>
				<input type="checkbox" name="Fixtures[]" value="With Garburator"> With Garburator
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Plaster Sink"> Plaster Sink
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Cup or Drip Sink"> Cup or Drip Sink
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Urinal"> Urinal
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Eye Wash"> Eye Wash
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Standard Bath Tub"> Standard Bath Tub
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Special Bath Tub (specify)"> Special Bath Tub (specify)
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Wheelchair Sink"> Wheelchair Sink
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Flushing Rim Sink"> Flushing Rim Sink
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Toilet"> Toilet
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Bidet"> Bidet
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Standard Shower"> Standard Shower
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Floor Drainage Point"> Floor Drainage Point
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Floor Sink"> Floor Sink
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Pediatric Toilet"> Pediatric Toilet
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Safety Shower "> Safety Shower
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Wheelchair Shower"> Wheelchair Shower
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Whirlpool Bath Tub"> Whirlpool Bath Tub
			</label>
			<label>
				<input type="checkbox" name="Fixtures[]" value="Baby Bath"> Baby Bath
			</label>
		</div>
	</div>

    <div>
		<b style="color: brown"> Gases: </b> <br>
        <div class = "checkboxes">
			<label>
				<input type="checkbox" name="Gases[]" value="Medical Vacuum"> Medical Vacuum
			</label>
			<label>
				<input type="checkbox" name="Gases[]" value="Medical Air"> Medical Air
			</label>
			<label>
				<input type="checkbox" name="Gases[]" value="Medical Nitrogen"> Medical Nitrogen
			</label>
			<label>
				<input type="checkbox" name="Gases[]" value="Medical Oxygen"> Medical Oxygen
			</label>
			<label>
				<input type="checkbox" name="Gases[]" value="Medical Nitrous Oxide"> Medical Nitrous Oxide
			</label>
			<label>
				<input type="checkbox" name="Gases[]" value="Natural Gas"> Natural Gas
			</label>
			<label>
				<input type="checkbox" name="Gases[]" value="Laboratory Vacuum"> Laboratory Vacuum
			</label>
			<label>
				<input type="checkbox" name="Gases[]" value="Laboratory Compressed Air"> Laboratory Compressed Air
			</label>
			<label>
				<input type="checkbox" name="Gases[]" value="Shop Compressed Air"> Shop Compressed Air
			</label>
		</div>
	</div>

    <div>
		<b style="color: brown"> Accessories: </b> <br>
		<div class = "checkboxes">
			<label>
				<input type="checkbox" name="Accessories[]" value="Bed Pan Sprayer"> Bed Pan Sprayer
			</label>
			<label>
				<input type="checkbox" name="Accessories[]" value="Hand Shower Attachment"> Hand Shower Attachment
			</label>
			<label>
				<input type="checkbox" name="Accessories[]" value="Foot Operated"> Foot Operated
			</label>
			<label>
				<input type="checkbox" name="Accessories[]" value="Hands Free Operation (eg. Infra-red control)"> Hands Free Operation (eg. Infra-red control)
			</label>
		</div>
	</div>


    <div  style="float: right; padding-right: 100px; ">
		<input type="submit" class="submit" value="Go" style= "font-size: 50px; padding: 1px 40px; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); ">
    </div>
    <br>
    <br>
    <br>
    <br>
</form>
</body>
</html>
