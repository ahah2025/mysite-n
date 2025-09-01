/********************************
*guestbook / guestbook
********************************/
show databases;

use guestbook_db;

-- 테이블 생성
create table guestbook(
	no 			int 		   primary key	auto_increment,
    name 		varchar(80),
    password 	varchar(20),
    content     text,
    reg_date 	datetime
);
-- 데이터 넣기
insert into guestbook
values(null, '송지효','2222','송지효.방문합니다.',now())
;

insert into guestbook
values(null, '박명수','1111','박명수.방문합니다.',now())
;

-- 조회
select * 
from guestbook
;