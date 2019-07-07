--------------------------------------------------------
--  颇老捞 积己凳 - 老夸老-7岿-07-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table IDLIKE
--------------------------------------------------------

  CREATE TABLE "SAM"."IDLIKE" 
   (	"ID" VARCHAR2(50 BYTE), 
	"IMGID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table IMAGES
--------------------------------------------------------

  CREATE TABLE "SAM"."IMAGES" 
   (	"IMGID" VARCHAR2(30 BYTE), 
	"ID" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(50 BYTE), 
	"IMGPATH" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER(38,0), 
	"IMGTYPE" VARCHAR2(5 BYTE), 
	"LIKECOUNT" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0), 
	"COMMENTS" VARCHAR2(500 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERINFO
--------------------------------------------------------

  CREATE TABLE "SAM"."USERINFO" 
   (	"ID" VARCHAR2(40 BYTE), 
	"PW" VARCHAR2(40 BYTE), 
	"BIRTHDAY" DATE, 
	"POINT" NUMBER, 
	"EMAIL" VARCHAR2(40 BYTE), 
	"PROFILE" VARCHAR2(50 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SAM.IDLIKE
SET DEFINE OFF;
REM INSERTING into SAM.IMAGES
SET DEFINE OFF;
Insert into SAM.IMAGES (IMGID,ID,TITLE,IMGPATH,PRICE,IMGTYPE,LIKECOUNT,VIEWCOUNT,COMMENTS,REGDATE) values ('D1','sam193','BEACH','image/Desktop/1.jpg',100,'D',null,null,null,null);
Insert into SAM.IMAGES (IMGID,ID,TITLE,IMGPATH,PRICE,IMGTYPE,LIKECOUNT,VIEWCOUNT,COMMENTS,REGDATE) values ('D2','sam193','BEACH2','image/Desktop/2.jpg',100,'D',null,null,null,null);
Insert into SAM.IMAGES (IMGID,ID,TITLE,IMGPATH,PRICE,IMGTYPE,LIKECOUNT,VIEWCOUNT,COMMENTS,REGDATE) values ('D3','sam193','BEACH3','image/Desktop/3.jpg',100,'D',null,null,null,null);
Insert into SAM.IMAGES (IMGID,ID,TITLE,IMGPATH,PRICE,IMGTYPE,LIKECOUNT,VIEWCOUNT,COMMENTS,REGDATE) values ('D4','sam193','BEACH4','image/Desktop/4.jpg',100,'D',null,null,null,null);
Insert into SAM.IMAGES (IMGID,ID,TITLE,IMGPATH,PRICE,IMGTYPE,LIKECOUNT,VIEWCOUNT,COMMENTS,REGDATE) values ('D5','sam193','BEACH5','image/Desktop/5.jpg',100,'D',null,null,null,null);
Insert into SAM.IMAGES (IMGID,ID,TITLE,IMGPATH,PRICE,IMGTYPE,LIKECOUNT,VIEWCOUNT,COMMENTS,REGDATE) values ('D6','sam193','BEACH6','image/Desktop/6.jpg',100,'D',null,null,null,null);
Insert into SAM.IMAGES (IMGID,ID,TITLE,IMGPATH,PRICE,IMGTYPE,LIKECOUNT,VIEWCOUNT,COMMENTS,REGDATE) values ('D7','sam193','BEACH7','image/Desktop/7.jpg',100,'D',null,null,null,null);
Insert into SAM.IMAGES (IMGID,ID,TITLE,IMGPATH,PRICE,IMGTYPE,LIKECOUNT,VIEWCOUNT,COMMENTS,REGDATE) values ('D8','sam193','BEACH8','image/Desktop/8.jpg',100,'D',null,null,null,null);
REM INSERTING into SAM.USERINFO
SET DEFINE OFF;
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ea123123','123',to_date('19/06/04','RR/MM/DD'),0,'ea@fe.com',null,to_date('19/06/17','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam193','123',to_date('12/12/12','RR/MM/DD'),0,'email@email.com',null,to_date('19/06/12','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('eafaefa','123',to_date('19/06/14','RR/MM/DD'),0,'ea@fe.com',null,to_date('19/06/24','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('eafeafeafaefewg','123',to_date('19/06/07','RR/MM/DD'),0,'ea@fe.com',null,to_date('19/06/24','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam19333','123',to_date('19/06/06','RR/MM/DD'),0,'ea@fe.com',null,to_date('19/06/24','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('efaewefaea','123',to_date('19/06/12','RR/MM/DD'),0,'ea@fe.com',null,to_date('19/06/26','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam19323123','123',to_date('19/06/05','RR/MM/DD'),0,'ea@fe.com',null,to_date('19/06/26','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam1933r3reqar','123',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('vragverag','333',to_date('19/07/19','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ggrsghr','123',to_date('19/07/15','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('abrehbarh','123',to_date('19/07/09','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ntansns','123',to_date('19/07/16','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('bnarbaerbrea','123',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('aegagahe','123',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('nnnn','123',to_date('19/08/01','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('arbnet','123',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('babbab','123',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('hhnnx','123',to_date('19/07/02','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam193gg','123',to_date('19/07/15','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('bxvbxbvx','123',to_date('19/07/08','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('eafzcvz','123',to_date('19/07/23','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('fadvzcvzv','123',to_date('19/07/07','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('bzbzbfbfab','123',to_date('19/07/24','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('bzcz','123',to_date('19/07/20','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('zvcczvvccv','123',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('czvzvcvzcvcvz','123',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('bzxb','123',to_date('19/07/16','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('cvzzcvvvv','123',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ffffffffffffff','123',to_date('19/07/10','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('xcvxx','123',to_date('19/07/24','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('cvzxcvvcv','123',to_date('19/07/10','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ffdsssssssssssss','123',to_date('19/07/17','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('zvcvcccccccc','123',to_date('19/07/08','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('vdzv','123',to_date('19/07/03','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('fdfs','123',to_date('19/07/10','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('vczzzzzzzzzzzz','123',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('fafdzc','123',to_date('19/07/05','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('zzzzzzzzzzzzzzzzzzzzzzzzz','123',to_date('19/07/10','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam19322222222','123',to_date('19/07/17','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('xzcccccccccc','123',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('xcvvvvvvvvvvvv','1233',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam193ffffffffffff','123',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ddddddddddddddd','123',to_date('19/07/08','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ffffffffff','123',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('eeeeeeeeeeeeeeeeeee','2222',to_date('19/07/24','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('zxcvc','123',to_date('19/07/08','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('fffffffffffffffffffffffffffffffff','123',to_date('19/07/10','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam193vvvvvvvv','123',to_date('19/07/17','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam193gggggggggggg','123',to_date('19/07/17','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('feaaaaaaaaaaa','123',to_date('19/07/10','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ffffffffffffffffz','123',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ccccccccccccccccccccccccccccccccc','123',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('fzzzzzzzzzz3333333','123',to_date('19/07/23','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('vvvvvvvvvvvvvvvvvvv','123',to_date('19/07/09','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('dddddddddddddddddddddddddd','123',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('vczzzzzzzzccc','123',to_date('19/08/01','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam1933r3reqarff','123',to_date('19/07/18','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ccccccccccx','123',to_date('19/06/30','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('bfgrg','22',to_date('19/07/10','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam193222221','2',to_date('19/07/09','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('vragveragvvx','123',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('fxzzzzzzzzzzzzzzzzzzzzc','123',to_date('19/07/15','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('ddddddddddddddddddddddddddddd','123',to_date('19/07/04','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('fdaccccccccc','2',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam1932222222','123',to_date('19/07/02','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam1932222222sd','123',to_date('19/07/02','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam193231245','123',to_date('19/07/11','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('cvvvvvvvxx','123',to_date('19/07/19','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
Insert into SAM.USERINFO (ID,PW,BIRTHDAY,POINT,EMAIL,PROFILE,REGDATE) values ('sam193332','123',to_date('19/07/31','RR/MM/DD'),0,'sam@gmail.com',null,to_date('19/07/04','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index PK_USER
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAM"."PK_USER" ON "SAM"."IMAGES" ("IMGID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERINFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SAM"."USERINFO_PK" ON "SAM"."USERINFO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table IMAGES
--------------------------------------------------------

  ALTER TABLE "SAM"."IMAGES" MODIFY ("IMGTYPE" NOT NULL ENABLE);
  ALTER TABLE "SAM"."IMAGES" MODIFY ("IMGPATH" NOT NULL ENABLE);
  ALTER TABLE "SAM"."IMAGES" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SAM"."IMAGES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SAM"."IMAGES" ADD CONSTRAINT "PK_USER" PRIMARY KEY ("IMGID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERINFO
--------------------------------------------------------

  ALTER TABLE "SAM"."USERINFO" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "SAM"."USERINFO" ADD CONSTRAINT "USERINFO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SAM"."USERINFO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SAM"."USERINFO" MODIFY ("BIRTHDAY" NOT NULL ENABLE);
  ALTER TABLE "SAM"."USERINFO" MODIFY ("PW" NOT NULL ENABLE);
  ALTER TABLE "SAM"."USERINFO" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table IDLIKE
--------------------------------------------------------

  ALTER TABLE "SAM"."IDLIKE" ADD FOREIGN KEY ("ID")
	  REFERENCES "SAM"."USERINFO" ("ID") ENABLE;
  ALTER TABLE "SAM"."IDLIKE" ADD FOREIGN KEY ("ID")
	  REFERENCES "SAM"."IMAGES" ("IMGID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IMAGES
--------------------------------------------------------

  ALTER TABLE "SAM"."IMAGES" ADD FOREIGN KEY ("ID")
	  REFERENCES "SAM"."USERINFO" ("ID") ENABLE;
