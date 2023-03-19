--------------------------------------------------------
--  File created - Wednesday-March-05-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table XX_CUST_OBJECTS
--------------------------------------------------------
drop table "XX_CUST_OBJECTS" ;

  CREATE TABLE "XX_CUST_OBJECTS" 
   (	"ID" NUMBER, 
	"KEY" VARCHAR2(255 BYTE), 
	"OBJECT_TYPE" VARCHAR2(30 BYTE), 
	"SUBTYPE" VARCHAR2(1 BYTE), 
	"REGISTERED_APPLICATION" VARCHAR2(1 BYTE), 
	"OBJECT_NAME" VARCHAR2(30 BYTE), 
	"SCHEMA" VARCHAR2(30 BYTE), 
	"SUB_ITEM__NAVIGATION_PATH" VARCHAR2(1 BYTE), 
	"NOTES_DESCRIPTION" VARCHAR2(255 BYTE), 
	"BP_REF" VARCHAR2(30 BYTE), 
	"BP_DESCRIPTION" VARCHAR2(30 BYTE), 
	"RUN_METHOD" VARCHAR2(1 BYTE), 
	"ASSESSMENT" VARCHAR2(255 BYTE), 
	"RELATED_OBJECTS" VARCHAR2(300 BYTE), 
	"CUSTOMISATIONNUMBER" VARCHAR2(30 BYTE), 
	"DATE_ADDED" DATE, 
	"ADDED_BY_WHOM" VARCHAR2(30 BYTE), 
	"R12_KEEP_YN" VARCHAR2(1 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index XX_CUST_OBJECTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "XX_CUST_OBJECTS_PK" ON "XX_CUST_OBJECTS" ("ID") 
   ;
--------------------------------------------------------
--  Constraints for Table XX_CUST_OBJECTS
--------------------------------------------------------

  ALTER TABLE "XX_CUST_OBJECTS" ADD CONSTRAINT "XX_CUST_OBJECTS_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  DDL for Trigger bi_XX_CUST_OBJECTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "bi_XX_CUST_OBJECTS" 
  before insert on "XX_CUST_OBJECTS"              
  for each row 
begin  
  if :new."ID" is null then
    select "XX_CUST_OBJECTS_SEQ".nextval into :new."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "bi_XX_CUST_OBJECTS" ENABLE;
