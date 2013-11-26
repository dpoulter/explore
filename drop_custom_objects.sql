DECLARE
  CURSOR c_tables
  IS
    SELECT *
    FROM xx_cust_objects at
    WHERE at.schema!='APPS'
    and r12_keep_yn='N' 
    and object_type='TABLE';
    
  CURSOR c_pkg_body
  IS   SELECT *
    FROM xx_cust_objects at
    WHERE r12_keep_yn='N' 
    and object_type='PACKAGE BODY';
    
  CURSOR c_pkg_hdr
  IS   SELECT *
    FROM xx_cust_objects at
    WHERE r12_keep_yn='N' 
    and object_type='PACKAGE';
    
  CURSOR c_views
  IS   SELECT *
    FROM xx_cust_objects at
    WHERE r12_keep_yn='N' 
    and object_type='VIEW';
    
  CURSOR c_mview
  IS   SELECT *
    FROM xx_cust_objects at
    WHERE r12_keep_yn='N' 
    and object_type='MATERIALIZED VIEW';
    
  CURSOR c_seq
  IS   SELECT *
    FROM xx_cust_objects at
    WHERE r12_keep_yn='N' 
    and object_type='SEQUENCE';
    
   CURSOR c_functions
   IS   SELECT *
     FROM xx_cust_objects at
     WHERE r12_keep_yn='N' 
     and object_type='FUNCTION';

    
BEGIN
  FOR rec IN c_tables
  LOOP
    BEGIN
      EXECUTE immediate 'drop synonym '||rec.object_name;
      dbms_output.put_line('public synonym : '||rec.object_name|| ' dropped');
      EXCEPTION
      WHEN OTHERS THEN
        dbms_output.put_line('Error trying to drop synonym : '||rec.object_name|| ' '||sqlerrm);
    END;
  END LOOP;
  
  FOR rec IN c_pkg_body
  LOOP
    BEGIN
      EXECUTE immediate 'drop package body '||rec.object_name;
      dbms_output.put_line('package body : '||rec.object_name|| ' dropped');
      EXCEPTION
      WHEN OTHERS THEN
        dbms_output.put_line('Error trying to drop package body : '||rec.object_name|| ' '||sqlerrm);
    END;
  END LOOP;
  
  FOR rec IN c_pkg_hdr
  LOOP
    BEGIN
      EXECUTE immediate 'drop package '||rec.object_name;
      dbms_output.put_line('package : '||rec.object_name|| ' dropped');
      EXCEPTION
      WHEN OTHERS THEN
        dbms_output.put_line('Error trying to drop package : '||rec.object_name|| ' '||sqlerrm);
    END;
  END LOOP;
  
  FOR rec IN c_views
  LOOP
    BEGIN
      EXECUTE immediate 'drop view '||rec.object_name;
      dbms_output.put_line('view : '||rec.object_name|| ' dropped');
      EXCEPTION
      WHEN OTHERS THEN
        dbms_output.put_line('Error trying to drop view : '||rec.object_name|| ' '||sqlerrm);
    END;
  END LOOP;
  
  FOR rec IN c_mview
  LOOP
    BEGIN
      EXECUTE immediate 'drop materialized view '||rec.object_name;
      dbms_output.put_line('materialized view : '||rec.object_name|| ' dropped');
      EXCEPTION
      WHEN OTHERS THEN
        dbms_output.put_line('Error trying to drop materialized view : '||rec.object_name|| ' '||sqlerrm);
    END;
  END LOOP;
  
 FOR rec IN c_seq
  LOOP
    BEGIN
      EXECUTE immediate 'drop sequence '||rec.object_name;
      dbms_output.put_line('sequence : '||rec.object_name|| ' dropped');
      EXCEPTION
      WHEN OTHERS THEN
        dbms_output.put_line('Error trying to drop sequence : '||rec.object_name|| ' '||sqlerrm);
    END;
  END LOOP;

 FOR rec IN c_functions
  LOOP
    BEGIN
      EXECUTE immediate 'drop function '||rec.schema||'.'||rec.object_name;
      dbms_output.put_line('function : '||rec.schema||'.'||rec.object_name|| ' dropped');
      EXCEPTION
      WHEN OTHERS THEN
        dbms_output.put_line('Error trying to drop function : '||rec.schema||'.'||rec.object_name|| ' '||sqlerrm);
    END;
  END LOOP;

END;