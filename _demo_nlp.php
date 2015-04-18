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
	<div class="well well-sm inputAch">
		<form class="form-inline form-group">
			<div class="input-group inputAchMain">
				<span class="input-group-addon inputElementSpan inputSubjectSpan inputSubject">
					<span class="glyphicon glyphicon-user inputWordTypeIcon" aria-hidden="true"></span>
					<span class="inputSubjectText">我</span>
					<input class="inputHidden" />
					<button class="btn btn-primary btn-xs btnPlusAt">@</button>
				</span>
				<span class="input-group-addon inputElementSpan inputPredicateSpan hasDurableDropdown inputPredicate hidden">
					<span class="glyphicon glyphicon-triangle-right inputWordTypeIcon" aria-hidden="true"></span>
					<span class="dropdown-toggle inputDropdownToggle inputPredicateDropdownToggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="inputPredicateText">干</span><span class="caret"></span></span>
					<ul class="dropdown-menu" role="menu">
						<li class="dropdownInput"><input /><button class="btn btn-primary btn-xs dropdownInputButton"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></button></li>
					</ul>
				</span>
				<span class="input-group-addon inputElementSpan inputObjectSpan inputObject hidden">
					<span class="glyphicon glyphicon-option-horizontal inputWordTypeIcon" aria-hidden="true"></span>
					<span class="inputObjectText">什么</span>
					<input class="inputHidden" />
					<button class="btn btn-primary btn-xs btnPlusAt">@</button>
				</span>
				<span class="glyphicon glyphicon-pencil inputWordTypeIcon" aria-hidden="true"></span>
				<input name="source" class="form-control inputSourceInput" type="text" />
				<span class="input-group-btn inputReadySpan">
					<button class="btn btn-info inputReadyButton" type="button">准备</button>
				</span>
				<span class="input-group-btn inputSubmitSpan hidden">
					<button class="btn btn-primary inputSubmitButton" type="button">发布</button>
				</span>
			</div>
		</form>
	</div>
</body>
</html>