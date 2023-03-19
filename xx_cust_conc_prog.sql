--------------------------------------------------------
--  File created - Wednesday-March-05-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table XX_CUST_CONC_PROG
--------------------------------------------------------
drop table "XX_CUST_CONC_PROG" ;

  CREATE TABLE "XX_CUST_CONC_PROG" 
   (concurrent_program_id number,
   	application_name varchar2(50),
    user_concurrent_program_name varchar2(50),
    description varchar2(50),
    concurrent_program_name varchar2(50),
    enabled_flag varchar2(1),
    execution_file_name varchar2(50),
    execution_method varchar2(50),
    "CUST_CONC_PROG_ID" NUMBER, 
	"CUST_ID" NUMBER, 
	"R12_KEEP" VARCHAR2(1 BYTE), 
	"ASSESSMENT" VARCHAR2(500 BYTE), 
	"PROCESS_NUMBER" VARCHAR2(30 BYTE), 
	"UAT_SCRIPT_NUMBER" VARCHAR2(30 BYTE)
   )  ;
--------------------------------------------------------
--  DDL for Index XX_CUST_CONC_PROG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "XX_CUST_CONC_PROG_PK" ON "XX_CUST_CONC_PROG" ("CUST_CONC_PROG_ID") 
   ;
--------------------------------------------------------
--  Constraints for Table XX_CUST_CONC_PROG
--------------------------------------------------------

  ALTER TABLE "XX_CUST_CONC_PROG" ADD CONSTRAINT "XX_CUST_CONC_PROG_PK" PRIMARY KEY ("CUST_CONC_PROG_ID")
  USING INDEX   ENABLE;
  ALTER TABLE "XX_CUST_CONC_PROG" MODIFY ("CUST_CONC_PROG_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table XX_CUST_CONC_PROG
--------------------------------------------------------

--  ALTER TABLE "XX_CUST_CONC_PROG" ADD CONSTRAINT "XX_CUST_CONC_PROG_XX_CUST_FK1" FOREIGN KEY ("CUST_ID")
--	  REFERENCES "XX_CUST_LIST" ("CUST_LIST_ID") ENABLE;
