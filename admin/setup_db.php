<?php
include_once "config.inc.php";
$sql = "CREATE TABLE event_main
(
id int,
main_verb text,
main_noun text,
place text,
note text,
start_time datetime,
end_time datetime,
duration bigint,
estimated_start_time datetime,
estimated_duration bigint,
repetition bigint,
count bigint,
other_amount text,
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
);
;
CREATE TABLE user_main
(
id int NOT NULL AUTO_INCREMENT,
is_social tinyint(1) DEFAULT 0,
title text,
main_verb text,
main_noun text
PRIMARY KEY (id)
)";
mysql_query($sql,$con);


?>