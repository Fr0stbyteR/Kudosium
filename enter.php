<?php

// 严格开发模式
//ini_set('display_errors', 'On');
//error_reporting(E_ALL);
//ini_set('display_errors', 'Off');

$pageTitle = "入口";
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html"; charset="utf-8" />
	<meta name="keywords" content="Kudos" />
	<title><?php echo $pageTitle; ?> - Kudos</title>
	<link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css" />
	<script type="text/javascript" charset="utf-8" src="./js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="./js/bootstrap.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="./js/enter.js?v=0.04"></script>
</head>
<body>
	<div id="register">
		<form action="javascript:;">
			<div class="form-group">
				<label for="inputEmail">Email</label>
				<input name="email" class="form-control input-medium" type="email" id="inputRegisterEmail" placeholder="输入Email">
			</div>
				<div class="form-group">
				<label for="inputUsername">用户名</label>
				<input name="username" class="form-control input-medium" type="text" id="inputRegisterUsername" placeholder="输入用户名">
			</div>
				<div class="form-group">
				<label for="inputPassword">密码</label>
				<input name="password" class="form-control input-medium" type="password" id="inputRegisterPassword" placeholder="输入密码">
			</div>
			<button type="submit" class="btn btn-default" id="postRegisterForm">注册</button>
		</form>
	</div>
</body>
</html>