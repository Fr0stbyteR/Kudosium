<?php

// 严格开发模式
//ini_set('display_errors', 'On');
//ini_set('memory_limit', '64M');
//error_reporting(E_ALL);

$str = (isset($_POST['source']) ? trim($_POST['source']) : ''); //设置初始str

//被字句flag
if (substr($str, 0, 3) == "被") {
    $return['isPassive'] = 1;
    $is_passive = 1;
}

//去除"了"
$str = str_replace("了","",$str);

//库内原文
$t1 = $ntime = microtime(true);

$endtime = '未执行任何操作，不统计！';
function print_memory($rc, &$infostr)
{
    global $ntime;
    $cutime = microtime(true);
    $etime = sprintf('%0.4f', $cutime - $ntime);
    $m = sprintf('%0.2f', memory_get_usage()/1024/1024);
    $infostr .= "{$rc}: &nbsp;{$m} MB 用时：{$etime} 秒<br />\n";
    $ntime = $cutime;
}

$memory_info = '';
print_memory('没任何操作', $memory_info);

require_once './nlp/phpanalysis.class.php';


$loadtime = $endtime1  = $endtime2 = $slen = 0;

$do_fork = $do_unit = true;
$do_multi = $do_prop = $pri_dict = false;

if($str != '')
{
    //岐义处理
    $do_fork = empty($_POST['do_fork']) ? false : true;
    //新词识别
    $do_unit = empty($_POST['do_unit']) ? false : true;
    //多元切分
    $do_multi = empty($_POST['do_multi']) ? false : true;
    //词性标注
    $do_prop = true;//empty($_POST['do_prop']) ? false : true;
    //是否预载全部词条
    $pri_dict = empty($_POST['pri_dict']) ? false : true;
    
    $tall = microtime(true);
    
    //初始化类
    PhpAnalysis::$loadInit = false;
    $pa = new PhpAnalysis('utf-8', 'utf-8', $pri_dict);

    print_memory('初始化对象', $memory_info);
    
    //载入词典
    $pa->LoadDict();
    print_memory('载入基本词典', $memory_info);    
        
    //执行分词
    $pa->SetSource($str);
    $pa->differMax = $do_multi;
    $pa->unitWord = $do_unit;
    
    $pa->StartAnalysis( $do_fork );
    print_memory('执行分词', $memory_info);
    
    $okresult = $pa->GetFinallyResult(' ', $do_prop);
    print_memory('输出分词结果', $memory_info);
    
    $pa_foundWordStr = $pa->foundWordStr;
    
    $t2 = microtime(true);
    $endtime = sprintf('%0.4f', $t2 - $t1);
    
    $slen = strlen($str);
    $slen = sprintf('%0.2f', $slen/1024);
    
    $pa = '';
    
}

//end of 原文


if (isset($okresult)) {
    //获取第一个动词 谓语
    preg_match_all("/\s(.*?)\/v/", $okresult, $verb);
    //输出json数据 
    $return['verb'] = $verb[1];
    $return['result'] = $okresult;
    $return['endtime'] = $endtime;
} else {
    $return['error'] = "无结果";
}

echo json_encode($return); 

?>