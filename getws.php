<?php

// 严格开发模式
//ini_set('display_errors', 'On');
//ini_set('memory_limit', '64M');
//error_reporting(E_ALL);

include_once "./config.inc.php"; //连接数据库
include_once "./global/functions.php"; //公共函数

//计时开始
$time1 = microtime();

//设置初始str
$str = (isset($_POST['text']) ? filter_var(trim($_POST['text']),FILTER_SANITIZE_SPECIAL_CHARS) : ''); 
if ($str == "") exit;
$str_match = [];
preg_match('/(.+?)[\p{P}](.*)/u', $str, $str_match); //匹配到第一个标点符号
$str = isset($str_match[1]) ? $str_match[1] : $str;
$return['note'] = isset($str_match[2]) ? $str_match[2] : '';

//被字句flag
if (substr($str, 0, 3) == "被") {
    $return['isPassive'] = 1;
    $is_passive = 1;
    $str = substr($str, 3); //本地only 以防误判断
} else {
    $return['isPassive'] = 0;
    $is_passive = 0;
}
$str = str_replace("了","",$str); //本地only 以防误判断

//匹配中文数词
//匹配量词

//匹配动词
$possible_verb = mstrextract($str);
//搜索数据库
$possible_verb_search_where = "";
foreach ($possible_verb as $word) {
    $possible_verb_search_where .= "word = '".$word."' OR ";
}
$possible_verb_search_where = substr($possible_verb_search_where,0 ,-4);
$resultSelectDict = mysql_query("SELECT id,word FROM dict_verb WHERE $possible_verb_search_where"); 
$return['predicate'] = [];
while ($rowSelectDict = mysql_fetch_array($resultSelectDict)){
    array_push($return['predicate'], $rowSelectDict['word']);
}
//根据长度排序
usort($return['predicate'], "lensort");

//析出宾语
$object_array = [];
$return['object'] = [];

foreach ($return['predicate'] as $key => $word) {
    $object_array = explode($word, $str);
    if ($is_passive) $return['object'][$key] = isset($object_array[0]) ? $object_array[0] : "";
    else $return['object'][$key] = isset($object_array[1]) ? $object_array[1] : "";
}


//计时结束
$time2 = microtime();
if (isset($return['predicate'])) {
    $return['timeElapsed'] = $time2 - $time1;
    $return['success'] = 1;
} else {
    $return['success'] = 0;
    $return['error'] = "无结果";
}

echo json_encode($return); 

?>