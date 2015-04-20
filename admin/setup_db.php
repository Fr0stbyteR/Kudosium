<?php

// 严格开发模式
//ini_set('display_errors', 'On');
//error_reporting(E_ALL);
//ini_set('display_errors', 'Off');

include_once "../config.inc.php"; //连接数据库

//事件表
$sql = "CREATE TABLE event_main
(
#ID和主体
id bigint UNSIGNED AUTO_INCREMENT,
title text,
subject text, #json主语
predicate text, #谓语
object text, #json宾语
is_passive tinyint(1) DEFAULT 0,
result tinyint(1),
place text,
with_user text,
note text,
amount text, #json量词，量
#其他bool属性
is_social tinyint(1) DEFAULT 0,
is_whole_day tinyint(1) DEFAULT 0,
is_instantaneous tinyint(1) DEFAULT 0,
#社交事件属性
referer text, #转发链
publisher text,
permission text, #该事件被查看的权限
#日历属性
start_time datetime,
end_time datetime,
duration bigint UNSIGNED,
estimated_start_time datetime,
estimated_duration bigint UNSIGNED,
repetition bigint UNSIGNED,
repetition_end_time datetime,
notification_time_before int UNSIGNED,
#后期属性
rate longtext,
skill_node text,
#优化
acc_amount text, #累积量
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;

//事件-成就链接表 无json
$sql = "CREATE TABLE event_ach
(
id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
event_id bigint UNSIGNED NOT NULL,
ach_id bigint UNSIGNED NOT NULL,
is_social tinyint(1) DEFAULT 0,
subject int UNSIGNED, #用户
place text,
with_user text,
amount bigint, #量，量词继承成就表id
referer text, #转发链
is_instantaneous tinyint(1) DEFAULT 0,
duration bigint UNSIGNED,
time datetime, #时间
ach_points int UNSIGNED DEFAULT 0, #基础分数 恒定
#社交事件属性
publisher text,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;

//成就表
$sql = "CREATE TABLE ach_main
(
id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
title text,
predicate text, #谓语
object text, #宾语
result tinyint(1),
is_passive tinyint(1) DEFAULT 0,
place text, #仅当publisher需要时创建
amount_unit text, #单位，量词
acc_amount bigint UNSIGNED, #php计算出的单累积量
estimated_duration bigint UNSIGNED, #平均持续时间
estimated_repetition bigint UNSIGNED, #平均重复时间
#社交事件属性
publisher text,
permission int UNSIGNED DEFAULT 0, #获得该成就的权限
#关系
synonym text, #同义成就
parent bigint UNSIGNED, #自动完成的父级成就
#统计
acc_point bigint UNSIGNED DEFAULT 0, #累积分数
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;

//用户表
$sql = "CREATE TABLE user_main
(
id int UNSIGNED NOT NULL AUTO_INCREMENT,
#必要信息
email varchar(64),
password char(32),
username varchar(15),
#个人信息
gender tinyint(2) UNSIGNED DEFAULT 0,
birthday datetime DEFAULT '1994-01-01 00:00',
lastname varchar(32),
firstname varchar(32),
mobile varchar(20),
residence varchar(64),
relationship_status tinyint(4) UNSIGNED DEFAULT 0,
profile text,
sns_profile text,
blog varchar(128),
tag text,
has_avatar tinyint(1),
avatar varchar(128),
other text,
#SNS
sns_notification longtext,
following longtext,
follower longtext,
private_ach_points int UNSIGNED DEFAULT 0,
social_ach_points int UNSIGNED DEFAULT 0,
skill_points int UNSIGNED DEFAULT 0,
todo_list text,
#内部
permission int UNSIGNED DEFAULT 0, #用户组
login_count int UNSIGNED,
reg_time datetime,
last_login_time datetime,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;

//登录记录
$sql = "CREATE TABLE access_log
(
id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
user_id int UNSIGNED,
user_ip varchar(64),
time datetime,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;

//技能表
$sql = "CREATE TABLE skill_node
(
id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;

//邀请码表
$sql = "CREATE TABLE invitation_code
(
id int UNSIGNED NOT NULL AUTO_INCREMENT,
code char(32),
user_id int UNSIGNED,
to_user_id int UNSIGNED,
generated_time datetime,
used_time datetime,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;


//动词表
$sql = "CREATE TABLE dict_verb
(
id int UNSIGNED NOT NULL AUTO_INCREMENT,
word text,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;



?>
