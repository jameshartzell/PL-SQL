--------------------------------------------------------
--  File created - Monday-November-26-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table JOBS
--------------------------------------------------------

  CREATE TABLE "LABUSER"."JOBS" 
   (	"JOB_ID" NUMBER(2,0), 
	"JOB_TITLE" VARCHAR2(20 BYTE), 
	"MIN_SALARY" NUMBER(7,2), 
	"MAX_SALARY" NUMBER(7,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JOB_HISTORY
--------------------------------------------------------

  CREATE TABLE "LABUSER"."JOB_HISTORY" 
   (	"EMPLOYEE_ID" NUMBER(2,0), 
	"START_DATE" DATE, 
	"JOB_ID" NUMBER(2,0), 
	"DEPARTMENT_ID" NUMBER(1,0), 
	"END_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------

  CREATE TABLE "LABUSER"."REGIONS" 
   (	"REGION_ID" NUMBER(1,0), 
	"REGION_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View TOTAL_WAGES_2018
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "LABUSER"."TOTAL_WAGES_2018" ("MIN_SALARY") AS 
  SELECT sum(MIN_SALARY)
FROM JOBS
;
REM INSERTING into LABUSER.JOBS
SET DEFINE OFF;
Insert into LABUSER.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values (1,'RECEPTIONIST',20000,25000);
Insert into LABUSER.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values (2,'SAFETY_OFFICER',35000,55000);
Insert into LABUSER.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values (3,'HELP_DESK_TECH',25000,35000);
Insert into LABUSER.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values (4,'CUSTODIAN',20000,30000);
Insert into LABUSER.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values (5,'HR',35000,45000);
Insert into LABUSER.JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) values (6,'PROGRAMMER',25000,85000);
REM INSERTING into LABUSER.JOB_HISTORY
SET DEFINE OFF;
Insert into LABUSER.JOB_HISTORY (EMPLOYEE_ID,START_DATE,JOB_ID,DEPARTMENT_ID,END_DATE) values (1,to_date('01-APR-18','DD-MON-RR'),1,1,null);
Insert into LABUSER.JOB_HISTORY (EMPLOYEE_ID,START_DATE,JOB_ID,DEPARTMENT_ID,END_DATE) values (2,to_date('01-APR-18','DD-MON-RR'),2,2,null);
Insert into LABUSER.JOB_HISTORY (EMPLOYEE_ID,START_DATE,JOB_ID,DEPARTMENT_ID,END_DATE) values (3,to_date('01-APR-18','DD-MON-RR'),3,3,null);
Insert into LABUSER.JOB_HISTORY (EMPLOYEE_ID,START_DATE,JOB_ID,DEPARTMENT_ID,END_DATE) values (4,to_date('01-APR-18','DD-MON-RR'),4,4,null);
Insert into LABUSER.JOB_HISTORY (EMPLOYEE_ID,START_DATE,JOB_ID,DEPARTMENT_ID,END_DATE) values (5,to_date('01-APR-18','DD-MON-RR'),5,5,null);
Insert into LABUSER.JOB_HISTORY (EMPLOYEE_ID,START_DATE,JOB_ID,DEPARTMENT_ID,END_DATE) values (6,to_date('01-APR-18','DD-MON-RR'),6,6,null);
REM INSERTING into LABUSER.REGIONS
SET DEFINE OFF;
Insert into LABUSER.REGIONS (REGION_ID,REGION_NAME) values (1,'NORTH_AMERICA');
Insert into LABUSER.REGIONS (REGION_ID,REGION_NAME) values (2,'SOUTH_AMERICA');
Insert into LABUSER.REGIONS (REGION_ID,REGION_NAME) values (3,'EUROPE');
Insert into LABUSER.REGIONS (REGION_ID,REGION_NAME) values (4,'ASIA');
Insert into LABUSER.REGIONS (REGION_ID,REGION_NAME) values (5,'AFRICA');
Insert into LABUSER.REGIONS (REGION_ID,REGION_NAME) values (6,'MIDDLE_EAST');
--------------------------------------------------------
--  DDL for Index REGIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LABUSER"."REGIONS_PK" ON "LABUSER"."REGIONS" ("REGION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JOBS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LABUSER"."JOBS_PK" ON "LABUSER"."JOBS" ("JOB_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "LABUSER"."JOB_HISTORY" MODIFY ("EMPLOYEE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "LABUSER"."JOB_HISTORY" MODIFY ("START_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "LABUSER"."JOB_HISTORY" MODIFY ("JOB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "LABUSER"."JOB_HISTORY" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JOBS
--------------------------------------------------------

  ALTER TABLE "LABUSER"."JOBS" ADD CONSTRAINT "JOBS_PK" PRIMARY KEY ("JOB_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "LABUSER"."JOBS" MODIFY ("JOB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "LABUSER"."JOBS" MODIFY ("JOB_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "LABUSER"."JOBS" MODIFY ("MIN_SALARY" NOT NULL ENABLE);
 
  ALTER TABLE "LABUSER"."JOBS" MODIFY ("MAX_SALARY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REGIONS
--------------------------------------------------------

  ALTER TABLE "LABUSER"."REGIONS" ADD CONSTRAINT "REGIONS_PK" PRIMARY KEY ("REGION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "LABUSER"."REGIONS" MODIFY ("REGION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "LABUSER"."REGIONS" MODIFY ("REGION_NAME" NOT NULL ENABLE);