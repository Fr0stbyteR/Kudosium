<?php
function getIP(){ //获取IP
	/* 过时的获取方式
	if ($_SERVER["HTTP_X_FORWARDED_FOR"]) 
		return $_SERVER["HTTP_X_FORWARDED_FOR"];
	elseif ($_SERVER["HTTP_CLIENT_IP"])
		return $_SERVER["HTTP_CLIENT_IP"];
	elseif ($_SERVER["REMOTE_ADDR"])
		return $_SERVER["REMOTE_ADDR"];
	elseif (getenv("HTTP_X_FORWARDED_FOR"))
		return getenv("HTTP_X_FORWARDED_FOR");
	elseif (getenv("HTTP_CLIENT_IP"))
		return getenv("HTTP_CLIENT_IP");
	elseif (getenv("REMOTE_ADDR"))
		return getenv("REMOTE_ADDR");
	else
		return "Unknown";
	*/
	if ($_SERVER["REMOTE_ADDR"])
		return $_SERVER["REMOTE_ADDR"];
	elseif (getenv("HTTP_X_FORWARDED_FOR"))
		return getenv("HTTP_X_FORWARDED_FOR");
	elseif (getenv("HTTP_CLIENT_IP"))
		return getenv("HTTP_CLIENT_IP");
	elseif (getenv("REMOTE_ADDR"))
		return getenv("REMOTE_ADDR");
	else
		return "Unknown";
}
?>