create table notice(no int PRIMARY KEY, title VARCHAR2(200), content VARCHAR2(2000), resdate TIMESTAMP, VISITED int)

create sequence nseq increment by 1 start with 1 minvalue 1 maxvalue 9999 nocycle;

insert into notice values (nseq.nextval, '더미 제목1', '더미 내용1', sysdate, 0);
insert into notice values (nseq.nextval, '더미 제목2', '더미 내용2', sysdate, default);
select * from notice;