<?php

//严格开发模式
ini_set('display_errors', 'On');
error_reporting(E_ALL);

//公共函数
include_once "./global/functions.php";
$pageTitle = "test";
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>'.$pageTitle.' - Kudos</title>
	<link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css" />
	<script type="text/javascript" src="./js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./js/_demo_nlp.js?v=0.1"></script>
</head>
<body>
	<input name="source" class="form-control" type="text" id="test">

</body>
</html>