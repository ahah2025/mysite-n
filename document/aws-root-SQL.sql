/********************************
*root
********************************/
show databases;

use mysql;

-- table 조회 
show tables;

-- guestbook 계정 만들기
create user 'guestbook'@'%' identified by 'guestbook';

-- guestbook 권한 주기
grant all privileges on guestbook_db.* to 'guestbook'@'%';

-- guestbook_db 만들기
create database guestbook_db   
	default character set utf8mb4
    collate utf8mb4_general_ci
    default encryption='n'
;
