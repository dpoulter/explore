explore
=======
This application is used to catalogue customisations in an Oracle database. It is built mainly as a tool for assisting in the migration of customisations during an Oracle E-Business upgrade.

xx_seed_tables.sql
--------------------
Install the database tables required for this Apex application by importing the sql using SQL Workshop Upload feature in an Apex workspace.

f101.sql
---------
Apex application install script to import into Apex workspace.

xx_cust_list.sql
-----------------
Install database table script that holds the list of customisations 

XX_CUST_LIST_S1.sql
-------------------
Install database sequence XX_CUST_LIST_S1 which generates the primary key column for XX_CUST_LIST

xx_cust_objects.sql
--------------------
Install database objects for the list of custom objects

xx_cust_conc_prog.sql
----------------------
Install database objects for the list of concurrent programs
