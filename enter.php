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
	<link type="text/css" rel="stylesheet" href="./css/enter.css" />
	<script type="text/javascript" charset="utf-8" src="./js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="./js/bootstrap.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="./js/enter.js?v=0.04"></script>
</head>
<body>
	<div role="tabpanel" class="well" id="loginPanel">
		<ul id="loginTab" class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active">
				<a href="#login" id="tabLoginA" role="tab" data-toggle="tab" aria-controls="login" aria-expanded="false">登录</a>
			</li>
			<li role="presentation">
				<a href="#register" id="tabRegisterA" role="tab" data-toggle="tab" aria-controls="register" aria-expanded="true">注册</a>
			</li>
	    </ul>
	    <div class="tab-content">
			<div class="tab-pane fade in active" id="login">
				<form action="javascript:;">
					<div class="form-group input-group" data-toggle="tooltip" data-placement="left" data-trigger="manual">
						<span class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></span>
						<input name="email" type="email" class="form-control" id="inputLoginEmail" placeholder="Email地址" />
					</div>
					<div class="form-group input-group" data-toggle="tooltip" data-placement="left" data-trigger="manual">
						<span class="input-group-addon"><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span></span>
						<input name="password" type="password" class="form-control" id="inputLoginPassword" placeholder="密码" />
					</div>
					<div class="checkbox pull-left">
						<label>
							<input name="remember" type="checkbox" id="inputLoginRemember"/>记住我
						</label>
					</div>
					<button type="submit" class="btn btn-primary pull-right" id="postLoginForm">登录</button>
				</form>
			</div>
			<div class="tab-pane fade" id="register">
				<form action="javascript:;">
					<div class="form-group input-group" data-toggle="tooltip" data-placement="left" data-trigger="manual">
						<span class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></span>
						<input name="email" type="email" class="form-control" id="inputRegisterEmail" placeholder="Email地址" />
					</div>
					<div class="form-group input-group" data-toggle="tooltip" data-placement="left" data-trigger="manual">
						<span class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
						<input name="username" type="text" class="form-control" id="inputRegisterUsername" placeholder="用户名" />
					</div>
					<div class="form-group input-group" data-toggle="tooltip" data-placement="left" data-trigger="manual">
						<span class="input-group-addon"><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span></span>
						<input name="password" type="password" class="form-control" id="inputRegisterPassword" placeholder="密码" />
					</div>
					<div class="checkbox pull-left">
						<label>
							<input name="remember" type="checkbox" id="inputRegisterRemember"/>记住我
						</label>
					</div>
					<button type="submit" class="btn btn-primary pull-right" id="postRegisterForm">注册</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>