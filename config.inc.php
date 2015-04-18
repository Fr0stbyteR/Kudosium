<?php
	set_time_limit(30);
	$config_host = "localhost";
	$config_username = "admin";
	$config_password = "admin";
	$config_db = "kudos";
	date_default_timezone_set("Etc/GMT-8");
	$con = mysql_connect($config_host, $config_username, $config_password);
	if (!$con) {
		die('Could not connect: ' . mysql_error());
	}
	mysql_select_db($config_db,$con);
	mysql_query("SET NAMES UTF8");
	mysql_query("SET time_zone = '+8:00';");
?>
