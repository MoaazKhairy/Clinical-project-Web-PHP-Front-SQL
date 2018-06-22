<?php
require 'db_conn.php';
$sql = "SELECT * FROM `project_data`";
$projects = $conn->query($sql);
?>
<html>
<body>

	<h1>Projects</h1>

	<table>
		<tr>
			<th>projectname</th>
			<th>Actions</th>
		</tr>
		<?php 
		while ($project = $projects->fetch_assoc()) {
			echo '<tr>';
			
			echo '<td>' . $project['projectName'] . '</td>';
			echo '<td><a href="view_project.php?projectno=' . $project['projectNO'] . '">View</a> - <a href="delete_project.php?projectno=' . $project['projectNO'] . '">Delete</a></td>';
			echo '</tr>';
		}
		?>
	</table>

</body>
</html>