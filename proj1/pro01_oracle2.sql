create table notice(no int PRIMARY KEY, title VARCHAR2(200), content VARCHAR2(2000), resdate TIMESTAMP, VISITED int)

create sequence nseq increment by 1 start with 1 minvalue 1 maxvalue 9999 nocycle;

insert into notice values (nseq.nextval, '더미 제목1', '더미 내용1', sysdate, 0);
insert into notice values (nseq.nextval, '더미 제목2', '더미 내용2', sysdate, default);
select * from notice;

create table member(
    id varchar2(20),
    pw varchar2(30),
    name varchar2(30),
    email varchar2(100),
    tel varchar2(20)
    );
 alter table member RENAME COLUMN addr TO email;
 select * from MEMBER;
 insert into member values('dbpark','1234', '박동빈', 'imagine9977@naver.com','010-1234-5678');
  insert into member values('admin','1234', '박동빈', 'imagine9977@naver.com','010-1234-5678');
  
  
  create table qna(
    no int,
	plevel int,
	parno int,
    title varchar2(200),
	content varchar2(2000),
	resdate TIMESTAMP,
	visited int,
	aid varchar2(20)
    );
    
    