--------------------------------------------------------
--  File created - Monday-November-26-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence DD_PROJID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USERDD"."DD_PROJID_SEQ"  MINVALUE 530 MAXVALUE 9999 INCREMENT BY 1 START WITH 533 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table DD_DONOR
--------------------------------------------------------

  CREATE TABLE "USERDD"."DD_DONOR" 
   (	"IDDONOR" NUMBER(4,0), 
	"FIRSTNAME" VARCHAR2(15 BYTE), 
	"LASTNAME" VARCHAR2(30 BYTE), 
	"TYPECODE" CHAR(1 BYTE), 
	"STREET" VARCHAR2(40 BYTE), 
	"CITY" VARCHAR2(20 BYTE), 
	"STATE" CHAR(2 BYTE), 
	"ZIP" VARCHAR2(9 BYTE), 
	"PHONE" VARCHAR2(10 BYTE), 
	"FAX" VARCHAR2(10 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE), 
	"NEWS" CHAR(1 BYTE), 
	"DTENTERED" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DD_PAYMENT
--------------------------------------------------------

  CREATE TABLE "USERDD"."DD_PAYMENT" 
   (	"IDPAY" NUMBER(6,0), 
	"IDPLEDGE" NUMBER(5,0), 
	"PAYAMT" NUMBER(8,2), 
	"PAYDATE" DATE, 
	"PAYMETHOD" CHAR(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DD_PLEDGE
--------------------------------------------------------

  CREATE TABLE "USERDD"."DD_PLEDGE" 
   (	"IDPLEDGE" NUMBER(5,0), 
	"IDDONOR" NUMBER(4,0), 
	"PLEDGEDATE" DATE, 
	"PLEDGEAMT" NUMBER(8,2), 
	"IDPROJ" NUMBER(5,0), 
	"IDSTATUS" NUMBER(2,0), 
	"WRITEOFF" NUMBER(8,2), 
	"PAYMONTHS" NUMBER(3,0), 
	"CAMPAIGN" NUMBER(4,0), 
	"FIRSTPLEDGE" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DD_PROJECT
--------------------------------------------------------

  CREATE TABLE "USERDD"."DD_PROJECT" 
   (	"IDPROJ" NUMBER(6,0), 
	"PROJNAME" VARCHAR2(60 BYTE), 
	"PROJSTARTDATE" DATE, 
	"PROJENDDATE" DATE, 
	"PROJFUNDGOAL" NUMBER(12,2), 
	"PROJCOORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DD_STATUS
--------------------------------------------------------

  CREATE TABLE "USERDD"."DD_STATUS" 
   (	"IDSTATUS" NUMBER(2,0), 
	"STATUSDESC" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into USERDD.DD_DONOR
SET DEFINE OFF;
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (301,'Mary','Treanor','I','243 main St.','Norfolk','VA','23510',null,null,'mtrea492@mdv.com','Y',to_date('01-SEP-12','DD-MON-RR'));
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (302,'Patrick','Lee','I','11 Hooper St.','Norfolk','VA','23510','7572115445',null,'pleeNorf@gmail.com','N',to_date('09-SEP-12','DD-MON-RR'));
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (303,'Terry','Venor','I','556 Loop Lane.','Chesapeake','VA','23320',null,null,'tervenr@drw.edu','Y',to_date('18-SEP-12','DD-MON-RR'));
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (304,'Sherry','Pane','I','Center Blvd.','Virginia Beach','VA','23455',null,null,'toppane@yahoo.com','Y',to_date('21-SEP-12','DD-MON-RR'));
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (305,'Thomas','Sheer','I','66 Train St.','Chesapeake','VA','23322','7579390022',null,'tls3488@sheer.com','Y',to_date('01-MAR-13','DD-MON-RR'));
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (306,null,'Coastal Developers','B','3667 Shore Dr.','Virginia Beach','VA','23450','8889220004',null,'coastVA@cdev.com','Y',to_date('30-SEP-12','DD-MON-RR'));
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (307,null,'VA Community Org','G','689 Bush Dr.','Norfolk','VA','23513','7578337467','7578337468','vacmorg@biz.com','Y',to_date('03-OCT-12','DD-MON-RR'));
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (308,'Betty','Konklin','I','11 Shark Ln.','Virginia Beach','VA','23455','7574550087',null,'shark11@cox.net','N',to_date('04-OCT-12','DD-MON-RR'));
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (309,'Jim','Tapp','I','200 Pine Tree Blvd.','Chesapeake','VA','23320',null,null,null,'N',to_date('08-OCT-12','DD-MON-RR'));
Insert into USERDD.DD_DONOR (IDDONOR,FIRSTNAME,LASTNAME,TYPECODE,STREET,CITY,STATE,ZIP,PHONE,FAX,EMAIL,NEWS,DTENTERED) values (310,null,'Unique Dezigns','B','Connect Circle Unit 12','Chesapeake','VA','23320','7574442121',null,'UDezigns@cox.net','Y',to_date('11-SEP-12','DD-MON-RR'));
REM INSERTING into USERDD.DD_PAYMENT
SET DEFINE OFF;
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1425,100,80,to_date('18-SEP-12','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1426,101,35,to_date('21-SEP-12','DD-MON-RR'),'DC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1427,102,500,to_date('01-OCT-12','DD-MON-RR'),'CH');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1428,103,2000,to_date('03-OCT-12','DD-MON-RR'),'CH');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1429,106,75,to_date('12-OCT-12','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1430,104,20,to_date('01-NOV-12','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1431,105,10,to_date('01-NOV-12','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1432,107,50,to_date('01-NOV-12','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1433,104,20,to_date('01-DEC-12','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1434,105,10,to_date('01-DEC-12','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1435,107,50,to_date('01-DEC-12','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1436,104,20,to_date('01-JAN-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1437,105,10,to_date('01-JAN-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1438,107,50,to_date('01-JAN-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1439,104,20,to_date('01-FEB-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1440,105,10,to_date('01-FEB-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1441,107,50,to_date('01-FEB-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1442,108,20,to_date('01-FEB-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1443,109,30,to_date('01-FEB-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1444,104,20,to_date('01-MAR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1445,105,10,to_date('01-MAR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1446,107,50,to_date('01-MAR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1447,108,20,to_date('01-MAR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1448,109,30,to_date('01-MAR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1449,110,25,to_date('01-MAR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1450,111,1500,to_date('01-MAR-13','DD-MON-RR'),'CH');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1451,104,20,to_date('01-APR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1452,105,10,to_date('01-APR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1453,107,50,to_date('01-APR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1454,108,20,to_date('01-APR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1455,109,30,to_date('01-APR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1456,110,25,to_date('01-APR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1457,112,20,to_date('01-APR-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1458,104,20,to_date('01-MAY-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1459,105,10,to_date('01-MAY-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1460,107,50,to_date('01-MAY-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1461,108,20,to_date('01-MAY-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1462,109,30,to_date('01-MAY-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1463,110,25,to_date('01-MAY-13','DD-MON-RR'),'CC');
Insert into USERDD.DD_PAYMENT (IDPAY,IDPLEDGE,PAYAMT,PAYDATE,PAYMETHOD) values (1464,112,20,to_date('01-MAY-13','DD-MON-RR'),'CC');
REM INSERTING into USERDD.DD_PLEDGE
SET DEFINE OFF;
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (100,303,to_date('18-SEP-12','DD-MON-RR'),80,500,20,null,0,738,'Y');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (101,304,to_date('21-SEP-12','DD-MON-RR'),35,500,20,null,0,738,'Y');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (102,310,to_date('01-OCT-12','DD-MON-RR'),500,501,20,null,0,749,'Y');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (103,307,to_date('03-OCT-12','DD-MON-RR'),2000,501,20,null,0,749,'N');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (104,308,to_date('04-OCT-12','DD-MON-RR'),240,501,10,null,12,749,'Y');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (105,309,to_date('08-OCT-12','DD-MON-RR'),120,501,10,null,12,749,'Y');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (106,301,to_date('12-OCT-12','DD-MON-RR'),75,500,20,null,0,738,'N');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (107,302,to_date('15-OCT-12','DD-MON-RR'),1200,501,10,null,24,749,'Y');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (108,308,to_date('20-JAN-13','DD-MON-RR'),480,503,10,null,24,790,'N');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (109,301,to_date('01-FEB-13','DD-MON-RR'),360,503,10,null,12,790,'N');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (110,303,to_date('01-MAR-13','DD-MON-RR'),300,504,10,null,12,756,'N');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (111,306,to_date('01-MAR-13','DD-MON-RR'),1500,504,20,null,0,756,'Y');
Insert into USERDD.DD_PLEDGE (IDPLEDGE,IDDONOR,PLEDGEDATE,PLEDGEAMT,IDPROJ,IDSTATUS,WRITEOFF,PAYMONTHS,CAMPAIGN,FIRSTPLEDGE) values (112,309,to_date('16-MAR-13','DD-MON-RR'),240,504,10,null,12,756,'N');
REM INSERTING into USERDD.DD_PROJECT
SET DEFINE OFF;
Insert into USERDD.DD_PROJECT (IDPROJ,PROJNAME,PROJSTARTDATE,PROJENDDATE,PROJFUNDGOAL,PROJCOORD) values (530,'HK Animal Shelter Extension',to_date('01-SEP-16','DD-MON-RR'),to_date('31-OCT-16','DD-MON-RR'),65000,'Shawn Hasee');
Insert into USERDD.DD_PROJECT (IDPROJ,PROJNAME,PROJSTARTDATE,PROJENDDATE,PROJFUNDGOAL,PROJCOORD) values (500,'Elders Assistance League',to_date('01-SEP-12','DD-MON-RR'),to_date('31-OCT-12','DD-MON-RR'),15000,'Shawn Hasee');
Insert into USERDD.DD_PROJECT (IDPROJ,PROJNAME,PROJSTARTDATE,PROJENDDATE,PROJFUNDGOAL,PROJCOORD) values (501,'Community food pantry #21 freezer equipment',to_date('01-OCT-12','DD-MON-RR'),to_date('31-DEC-12','DD-MON-RR'),65000,'Shawn Hasee');
Insert into USERDD.DD_PROJECT (IDPROJ,PROJNAME,PROJSTARTDATE,PROJENDDATE,PROJFUNDGOAL,PROJCOORD) values (502,'Lang Scholarship Fund',to_date('01-JAN-13','DD-MON-RR'),to_date('01-NOV-13','DD-MON-RR'),100000,'Traci Brown');
Insert into USERDD.DD_PROJECT (IDPROJ,PROJNAME,PROJSTARTDATE,PROJENDDATE,PROJFUNDGOAL,PROJCOORD) values (503,'Animal shelter Vet Connect Program',to_date('01-DEC-12','DD-MON-RR'),to_date('30-MAR-13','DD-MON-RR'),25000,'Traci Brown');
Insert into USERDD.DD_PROJECT (IDPROJ,PROJNAME,PROJSTARTDATE,PROJENDDATE,PROJFUNDGOAL,PROJCOORD) values (504,'Shelter Share Project 2013',to_date('01-FEB-13','DD-MON-RR'),to_date('31-JUL-13','DD-MON-RR'),35000,'Traci Brown');
REM INSERTING into USERDD.DD_STATUS
SET DEFINE OFF;
Insert into USERDD.DD_STATUS (IDSTATUS,STATUSDESC) values (10,'Open');
Insert into USERDD.DD_STATUS (IDSTATUS,STATUSDESC) values (20,'Complete');
Insert into USERDD.DD_STATUS (IDSTATUS,STATUSDESC) values (30,'Overdue');
Insert into USERDD.DD_STATUS (IDSTATUS,STATUSDESC) values (40,'Closed');
Insert into USERDD.DD_STATUS (IDSTATUS,STATUSDESC) values (50,'Hold');
--------------------------------------------------------
--  DDL for Index PROJECT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERDD"."PROJECT_ID_PK" ON "USERDD"."DD_PROJECT" ("IDPROJ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DONOR_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERDD"."DONOR_ID_PK" ON "USERDD"."DD_DONOR" ("IDDONOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PLEDGE_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERDD"."PLEDGE_ID_PK" ON "USERDD"."DD_PLEDGE" ("IDPLEDGE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PAYMENT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERDD"."PAYMENT_ID_PK" ON "USERDD"."DD_PAYMENT" ("IDPAY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROJECT_NAME_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERDD"."PROJECT_NAME_UK" ON "USERDD"."DD_PROJECT" ("PROJNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STATUS_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERDD"."STATUS_ID_PK" ON "USERDD"."DD_STATUS" ("IDSTATUS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table DD_DONOR
--------------------------------------------------------

  ALTER TABLE "USERDD"."DD_DONOR" ADD CONSTRAINT "DONOR_ID_PK" PRIMARY KEY ("IDDONOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DD_PROJECT
--------------------------------------------------------

  ALTER TABLE "USERDD"."DD_PROJECT" ADD CONSTRAINT "PROJECT_ID_PK" PRIMARY KEY ("IDPROJ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "USERDD"."DD_PROJECT" ADD CONSTRAINT "PROJECT_NAME_UK" UNIQUE ("PROJNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DD_STATUS
--------------------------------------------------------

  ALTER TABLE "USERDD"."DD_STATUS" ADD CONSTRAINT "STATUS_ID_PK" PRIMARY KEY ("IDSTATUS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DD_PAYMENT
--------------------------------------------------------

  ALTER TABLE "USERDD"."DD_PAYMENT" ADD CONSTRAINT "PAYMENT_ID_PK" PRIMARY KEY ("IDPAY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DD_PLEDGE
--------------------------------------------------------

  ALTER TABLE "USERDD"."DD_PLEDGE" ADD CONSTRAINT "PLEDGE_ID_PK" PRIMARY KEY ("IDPLEDGE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DD_PAYMENT
--------------------------------------------------------

  ALTER TABLE "USERDD"."DD_PAYMENT" ADD CONSTRAINT "PAY_IDPLEDGE_FK" FOREIGN KEY ("IDPLEDGE")
	  REFERENCES "USERDD"."DD_PLEDGE" ("IDPLEDGE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DD_PLEDGE
--------------------------------------------------------

  ALTER TABLE "USERDD"."DD_PLEDGE" ADD CONSTRAINT "PLEDGE_IDDONOR_FK" FOREIGN KEY ("IDDONOR")
	  REFERENCES "USERDD"."DD_DONOR" ("IDDONOR") ENABLE;
 
  ALTER TABLE "USERDD"."DD_PLEDGE" ADD CONSTRAINT "PLEDGE_IDPROJ_FK" FOREIGN KEY ("IDPROJ")
	  REFERENCES "USERDD"."DD_PROJECT" ("IDPROJ") ENABLE;
 
  ALTER TABLE "USERDD"."DD_PLEDGE" ADD CONSTRAINT "PLEDGE_IDSTATUS_FK" FOREIGN KEY ("IDSTATUS")
	  REFERENCES "USERDD"."DD_STATUS" ("IDSTATUS") ENABLE;
