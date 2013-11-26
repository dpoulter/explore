DECLARE
  CURSOR c_apps_tables
  IS
    SELECT *
    FROM all_tables at
    WHERE at.owner='APPS'
    AND NOT EXISTS
      (SELECT 1 FROM xx_seed_tables WHERE table_name=at.table_name AND owner='APPS')
  AND NOT EXISTS
    (SELECT 1 FROM all_mviews WHERE mview_name=at.table_name)
  and not exists 
    (select 1 from all_tables where table_name=at.table_name and owner='XXOBJECTBACKUP')
  AND table_name NOT LIKE ('DEMO_%')
  AND table_name NOT IN ('DEPT','XX_SEED_TABLES','WF_BPEL_QTAB')
  AND table_name NOT LIKE 'QUEST_%'
  and table_name not like 'XX_CUST_%'
  and table_name not like 'IEX%'
  and table_name not like 'AQ$%'
  and table_name not like 'SYS%'
  and table_name not like 'MLOG$%';
BEGIN
  FOR rec IN c_apps_tables
  LOOP
    BEGIN
      BEGIN
        EXECUTE immediate 'drop table XXOBJECTBACKUP.'||rec.table_name;
      EXCEPTION
      WHEN OTHERS THEN
        dbms_output.put_line('TABLE: '||rec.table_name);
      END;
      EXECUTE immediate 'create table XXOBJECTBACKUP.'||rec.table_name||' as select * from apps.'||rec.table_name;
      EXECUTE immediate 'drop table apps.'||rec.table_name;
    EXCEPTION
    WHEN OTHERS THEN
      dbms_output.put_line('Oracle Error '||sqlerrm||' - TABLE: '||rec.table_name);
      raise;
    END;
  END LOOP;
END;