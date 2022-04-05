<?php

$con = mysqli_connect("localhost","mochi","12345678","developers");
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
?>