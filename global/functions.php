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


//mb字符串分割
//$sourcestr 是要处理的字符串 
//$cutstart 为截取开始的长度(即字数) 
//$cutlength 为截取的长度(即字数) 
function msubstr($sourcestr, $cutstart, $cutlength) { 
	$returnstr = ''; 
	$i = 0; 
	$n = 0; 
	$str_length = strlen($sourcestr); //字符串的字节数 
	while (($n < $cutlength + $cutstart) && ($i <= $str_length))  //n=实际字符串指针 i=byte指针
	{ 
		$temp_str = substr($sourcestr, $i, 1); 
		$ascnum = ord($temp_str); //得到字符串中第$i位字符的ascii码 
		if ($ascnum >= 224) {//如果ASCII位高与224，
			if ($n >= $cutstart) $returnstr = $returnstr.substr($sourcestr, $i, 3); //根据UTF-8编码规范，将3个连续的字符计为单个字符         
			$i = $i + 3; //实际Byte计为3
			$n++;  //字串长度计1
		} elseif ($ascnum >= 192) { //如果ASCII位高与192，
			if ($n >= $cutstart) $returnstr = $returnstr.substr($sourcestr, $i, 2); //根据UTF-8编码规范，将2个连续的字符计为单个字符 
			$i = $i + 2;            //实际Byte计为2
			$n++;            //字串长度计1
		} else { //其他情况下，包括大小写字母和半角标点符号，
			if ($n >= $cutstart) $returnstr = $returnstr.substr($sourcestr, $i, 1); 
			$i = $i + 1; //实际的Byte数计1个
			$n++; //小写字母和半角标点等与半个高位字符宽...1个
		} 
	} 
	//if ($str_length > $cutlength){
		//$returnstr = $returnstr . "...";//超过长度时在尾处加上省略号
	//}
	return $returnstr; 
}

//生成所有字符串组合数组
//$sourcestr 是要处理的字符串 
//$array 是输出的数组
function mstrextract($sourcestr) { 
	$array = [];
	preg_match_all("/[\p{Han}]+/u", $sourcestr, $match_str);
	foreach ($match_str[0] as $str) {
		$str_length = strlen($str);
		for ($i = 0; $i < $str_length; $i = $i + 3) {
			for ($j = 3; $j <= $str_length - $i; $j = $j + 3) {
				array_push($array, substr($str, $i, $j));
			}
		}
	}
	return $array; 
}

//mb字符串长度
//$sourcestr 是要处理的字符串 
function mstrlen($sourcestr) {
	$i = 0; 
	$n = 0; 
	$str_length = strlen($sourcestr); //字符串的字节数 
	while ($i <= $str_length) 
	{ 
		$temp_str = substr($sourcestr, $i, 1); 
		$ascnum = ord($temp_str); //得到字符串中第$i位字符的ascii码 
		if ($ascnum >= 224) {//如果ASCII位高与224，
			$returnstr = $returnstr.substr($sourcestr, $i, 3); //根据UTF-8编码规范，将3个连续的字符计为单个字符         
			$i = $i + 3; //实际Byte计为3
			$n++;  //字串长度计1
		} elseif ($ascnum >= 192) { //如果ASCII位高与192，
			$returnstr = $returnstr.substr($sourcestr, $i, 2); //根据UTF-8编码规范，将2个连续的字符计为单个字符 
			$i = $i + 2;            //实际Byte计为2
			$n++;            //字串长度计1
		} else { //其他情况下，包括大小写字母和半角标点符号，
			$returnstr = $returnstr.substr($sourcestr, $i, 1); 
			$i = $i + 1; //实际的Byte数计1个
			$n++; //小写字母和半角标点等与半个高位字符宽...1个
		} 
	} 
	//if ($str_length > $cutlength){
		//$returnstr = $returnstr . "...";//超过长度时在尾处加上省略号
	//}
	return $n; 
}

//根据长度从长到短排序 用usort()调用
function lensort($a, $b) {
	if (strlen($a) == strlen($b)) {
		return 0;
	} else {
		return (strlen($a) > strlen($b)) ? -1 : 1;
	}
}

?>