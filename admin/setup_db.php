<?php
include_once "config.inc.php";
$sql = "CREATE TABLE event_main
(
id int,
title text,
main_verb text,
main_noun text,
place text,
with text,
note text,
is_whole_day tinyint(1) DEFAULT 0,
is_instantaneous tinyint(1) DEFAULT 0,
start_time datetime,
end_time datetime,
duration bigint,
estimated_start_time datetime,
estimated_duration bigint,
repetition bigint,
repetition_end_time datetime,
notification_time_before int,
other_amount text,
rate longtext,
skill_node text,
PRIMARY KEY (id)
) ENGINE = MyISAM;

CREATE TABLE ach_main
(
id int NOT NULL AUTO_INCREMENT,
is_social tinyint(1) DEFAULT 0,
title text,
main_verb text,
main_noun text
PRIMARY KEY (id)
) ENGINE = MyISAM;

CREATE TABLE user_main
(
id int NOT NULL AUTO_INCREMENT,
email varchar(64),
password char(64)
name varchar(15),
gender tinyint(2) UNSIGNED DEFAULT 0,
birthday datetime,
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
sns_notification longtext,
login_count int UNSIGNED,
other text,
following longtext,
follower longtext,
private_ach_points int UNSIGNED,
social_ach_points int UNSIGNED,
skill_points int UNSIGNED,
todo_list text,
reg_time datetime,
last_login_time datetime,
PRIMARY KEY (id)
) ENGINE = MyISAM;

CREATE TABLE access_log
(
id int NOT NULL AUTO_INCREMENT,
user_id int,
user_ip varchar(64),
) ENGINE = MyISAM";
mysql_query($sql,$con);


?>