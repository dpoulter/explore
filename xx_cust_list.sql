--------------------------------------------------------
--  File created - Wednesday-March-05-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table XX_CUST_LIST
--------------------------------------------------------
  drop table "XX_CUST_LIST" ;

  CREATE TABLE "XX_CUST_LIST" 
   (	"CUST_LIST_ID" NUMBER, 
	"NAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(1000 BYTE), 
	"APPLICATION_ID" NUMBER, 
	"ASSESSMENT" VARCHAR2(2000 BYTE), 
	"USED" VARCHAR2(20 BYTE), 
	"R12_OBSOLETE" VARCHAR2(20 BYTE), 
	"R12_MIGRATE" VARCHAR2(20 BYTE), 
	"TEAM_OWNER" VARCHAR2(20 BYTE), 
	"CUSTOMISATION_NUMBER" NUMBER(38,0), 
	"PROCESS_NUMBER" VARCHAR2(30 BYTE), 
	"UAT_SCRIPT_NUMBER" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index XX_CUST_LIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "XX_CUST_LIST_PK" ON "XX_CUST_LIST" ("CUST_LIST_ID") 
   ;
--------------------------------------------------------
--  Constraints for Table XX_CUST_LIST
--------------------------------------------------------

  ALTER TABLE "XX_CUST_LIST" ADD CONSTRAINT "XX_CUST_LIST_PK" PRIMARY KEY ("CUST_LIST_ID")
  USING INDEX ENABLE;
  ALTER TABLE "XX_CUST_LIST" MODIFY ("CUST_LIST_ID" NOT NULL ENABLE);
