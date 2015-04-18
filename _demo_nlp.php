<?php

// 严格开发模式
//ini_set('display_errors', 'On');
//error_reporting(E_ALL);
//ini_set('display_errors', 'Off');

$pageTitle = "test";
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html"; charset="utf-8" />
	<meta name="keywords" content="Kudos" />
	<title><?php echo $pageTitle; ?> - Kudos</title>
	<link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="./css/_demo_nlp.css?v=0.4" />
	<script type="text/javascript" src="./js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./js/_demo_nlp.js?v=0.4"></script>
</head>
<body>
	<form class="form-inline">
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon inputElementSpan inputSubjectSpan" id="inputSubject">
					<span class="glyphicon glyphicon-user inputWordTypeIcon" aria-hidden="true"></span>
					<span>我</span>
					<input class="inputHidden" />
					<button class="btn btn-primary btn-xs btnPlusAt">@</button>
				</span>
				<span class="input-group-addon inputElementSpan inputPredicateSpan" id="inputPredicate">
					<span class="glyphicon glyphicon-console inputWordTypeIcon" aria-hidden="true"></span>
					<span class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" ><span id="textPredicate">something</span><span class="caret"></span></span>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Other</a></li>
					</ul>
				</span>
				<span class="input-group-addon inputElementSpan inputObjectSpan" id="inputObject">
					<span class="glyphicon glyphicon-triangle-right inputWordTypeIcon" aria-hidden="true"></span>
					<span id="textObject"></span>
					<input class="inputHidden" />
					<button class="btn btn-primary btn-xs btnPlusAt">@</button>
				</span>
				<span class="glyphicon glyphicon-pencil inputWordTypeIcon" aria-hidden="true"></span>
				<input name="source" class="form-control inputNoteInput" type="text" id="test" />
				<span class="input-group-btn">
					<button class="btn btn-primary" type="button">发布</button>
				</span>
			</div>
		</div>
	</form>
</body>
</html>