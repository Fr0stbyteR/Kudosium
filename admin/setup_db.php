<?php
include_once "../config.inc.php";
//事件表
$sql = "CREATE TABLE event_main
(
//ID和主体
id int,
title text,
main_verb text,
main_noun text,
place text,
with_user text,
note text,
//bool属性
is_social tinyint(1),
is_whole_day tinyint(1) DEFAULT 0,
is_instantaneous tinyint(1) DEFAULT 0,
//社交事件属性
publisher text,
permission text,
//日历属性
start_time datetime,
end_time datetime,
duration bigint,
estimated_start_time datetime,
estimated_duration bigint,
repetition bigint,
repetition_end_time datetime,
notification_time_before int,
other_amount text,
//后期属性
rate longtext,
skill_node text,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;

//成就表
$sql = "CREATE TABLE ach_main
(
id int NOT NULL AUTO_INCREMENT,
is_social tinyint(1) DEFAULT 0,
title text,
main_verb text,
main_noun text,
amount text,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;

//用户表
$sql = "CREATE TABLE user_main
(
id int NOT NULL AUTO_INCREMENT,
//必要信息
email varchar(64),
password char(32),
username varchar(15),
//个人信息
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
//SNS
sns_notification longtext,
following longtext,
follower longtext,
private_ach_points int UNSIGNED DEFAULT 0,
social_ach_points int UNSIGNED DEFAULT 0,
skill_points int UNSIGNED DEFAULT 0,
todo_list text,
//内部
permission int UNSIGNED DEFAULT 0, //用户组
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
id int NOT NULL AUTO_INCREMENT,
user_id int,
user_ip varchar(64),
time datetime,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;

//技能表
$sql = "CREATE TABLE skill_node
(
id int NOT NULL AUTO_INCREMENT,
PRIMARY KEY (id)
)";

//邀请码表
$sql = "CREATE TABLE invitation_code
(
id int NOT NULL AUTO_INCREMENT,
code char(32),
user_id int,
to_user_id int,
generated_time datetime,
used_time datetime,
PRIMARY KEY (id)
)";
$result = mysql_query($sql);
echo $result;



?>
