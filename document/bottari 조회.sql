-- web_db 사용
use bottari_db;

-- 테이블 목록 조회
show tables;

-- 사용자 테이블 조회 
select  user_no,
		id,
        name,
        password,
        email,
        phone,
        birth,
        date_format(Join_date,'%Y-%m-%d') as Join_date
from users
;

-- date_format(hire_date,'%Y-%m') as hire_date

-- 특정 user_no 삭제
DELETE FROM users 
WHERE user_no = 40
;

-- 1) 현재시간 및 Timezone 확인 방법
select now(), @@system_time_zone as Timezone;

-- 2) Timezone 시간 변경하는 방법
set global time_zone = '+9:00';
set time_zone = '+9:00';

-- 3) 적용 확인
select now(), @@system_time_zone as Timezone;


-- 캘린더
select * from calender
;

select * from cart
;

-- 장바구니옵션
select * from cart_option
;

select * from category
;

select * from detail_image
;

select * from funding_option
;

select * from funding_product
;

select * from invitation
;

select * from option_detail
;

-- 결제(구매내역) -- 08.27 PM 12:24 아무것도 조회안됨
select * from payment
;

-- 결제상품  -- 08.27 PM 12:24 아무것도 조회안됨
select * from payment_goods
;

-- 결제 상품옵션   -- 08.27 PM 12:24 아무것도 조회안됨
select * from payment_goods_option
;

-- 상품등록폼, 상품상세
select * from product
;

-- 상품옵션구분
select * from product_option
;

-- 백그라운드 컬러 1.red 2.green 3.red 4.blue
select * from theme
;

select * from wishlist
;

-- 위시옵션
select * from wishlist_option
;

-- cart 등록
-- 장바구니번호, 회원번호, 상품번호, 카테고리번호, 등록일, 수량
insert into cart
values(3,9,9,1,now(),1)
;

-- 이름,비밀번호, 핸드폰번호 수정
update users
set  name = '아름' , 
     password = '1000',
     phone = '01051001111' 
where user_no = 2
;

-- 특정 id 검색
select  user_no,
		id,
        name,
        email
from users
where id='rrrr'
;


-- 회원정보 중 user_no 로 찾는 방법
select 	user_no
	  , id
      , name
      , password
      , email
      , phone
      , birth
from users
where user_no = 2
;


SELECT * FROM users 
WHERE name = name
AND password = password 
LIMIT 6
;

-- 회원추가
insert into users 
values(null,'sujin','수진','0327','sujin@gmail.com','01077778888','0905',now())
;


-- 위시리스트 추가
insert into wishlist
values(2,2,3,now(),5)
;