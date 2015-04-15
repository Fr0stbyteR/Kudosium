<?php

// 严格开发模式
//ini_set('display_errors', 'On');
//error_reporting(E_ALL);
//ini_set('display_errors', 'Off');

include_once "./config.inc.php"; //连接数据库
include_once "./global/functions.php"; //公共函数

session_start(); //会话开始

$action = isset($_GET['action']) ? $_GET['action'] : 0; //获得动作类型 login,check,register,logout

//必要信息
$ip = getIP();//IP

//注册
if ($action == "register"){

	//验证,缓存注册数据 email,username,remember
	if (isset($_POST['email'])){
		if (filter_var(trim($_POST['email']),FILTER_VALIDATE_EMAIL)){
			$return['success'] = 1;
			$email = $_POST['email']; //定义赋值
		} else {
			$return['success'] = 0;
			$return['error']['email'] = "邮箱格式错误";
		}
	} else {
		$return['success'] = 0; 
		$return['error']['email'] = "空缺"; 
	}

	if (isset($_POST['username'])){
		if (filter_var(trim($_POST['username']),FILTER_SANITIZE_SPECIAL_CHARS)){
			$return['success'] = 1;
			$username = $_POST['username']; //定义赋值
		} else {
			$return['success'] = 0;
			$return['error']['username'] = "含有非法字符";
		}
	} else {
		$return['success'] = 0; 
		$return['error']['username'] = "空缺"; 
	}

	if (isset($_POST['password'])){
		if (filter_var(trim($_POST['password']),FILTER_SANITIZE_SPECIAL_CHARS)){
			$return['success'] = 1;
			$password = md5($_POST['password']); //定义赋值,加密
		} else {
			$return['success'] = 0;
			$return['error']['password'] = "含有非法字符";
		}
	} else {
		$return['success'] = 0; 
		$return['error']['password'] = "未知错误"; 
	}

	$remember = isset($_POST['remember']) ? $_POST['remember'] : 0; //是否需要cookies

	//查找是否已存在
	if ($return['success']){
		$resultSelectUser = mysql_query("SELECT username,email FROM user_main WHERE username='$username' OR email='$email'"); 
		$rowSelectUser = mysql_fetch_array($resultSelectUser);
		if ($rowSelectUser['username']){
			if ($rowSelectUser['username'] == $username){
				$return['success'] = 0; 
				$return['error']['username'] = "用户名已被注册"; 
			}
			if ($rowSelectUser['email'] == $email){
				$return['success'] = 0; 
				$return['error']['email'] = "该邮箱已注册"; 
			}
		}
	}

	//写入数据库
	if ($return['success']){
		$resultInsertUser = mysql_query("INSERT INTO user_main (email,username,password,login_count,reg_time,last_login_time) VALUES ('$email','$username','$password',1,NOW(),NOW());");
		if ($resultInsertUser) {
			$resultSelectUser = mysql_query("SELECT id FROM user_main WHERE username='$username'"); //获得id
			$rowSelectUser = mysql_fetch_array($resultSelectUser);
			$userID = $rowSelectUser['id'];
			$resultInsertLog = mysql_query("INSERT INTO access_log (user_id,user_ip,time) VALUES ('$userID','$ip',NOW());"); //写入log
			$return['userID'] = $userID; //返回ID
			$return['success'] = 1;
		} else {
			$return['success'] = 0;
			$return['error']['database'] = "无法写入MySQL";
		}
	}

	//登录
	if ($return['success']){
		//设置session
		$_SESSION['user_id'] = $userID;
		$_SESSION['password'] = $password;
		//设置cookie
		if ($remember){
			setcookie("user_id", $userID, time()+3600*24*7);
			setcookie("password", $password, time()+3600*24*7);
		}
	}
}

echo json_encode($return); //输出json返回值

?>