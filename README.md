# Healthcare-Database-Manager

This is a personal project to simulate on a very simple level a working database for a fictional healthcare clinic. It showcases concepts of databases, SQL language, and SQLite and Oracle database managing software.

For anyone wanting to test/change/play around with this database, you will need a certain setup of software in order to do so:

-> SQLite Version
1. Download, extract and setup the appropriate SQLite version for your machine in the link below:
(LINK)
2. Download and extract this repository;
3. Open SQLite;
4. Go into “Execute SQL”;
5. Open all the files from “01_tables_sqlite.sql” up to “04_testing_sqlite.sql”;
6. Click on “New Database” and name it whatever you want;
7. Run the scripts in this order:
  - 01_tables_sqlite.sql
  - 02_seed_sqlite.sql
  - 03_views_sqlite.sql
8. You can now view the database objects from “Database Structure”, the data from “Browse Data” and even try out the pre-made tests from 04_testing_sqlite.sql;

-> Oracle SQL Developer Version
1. Download, extract and setup the appropriate Oracle SQL Developer version for your machine in the link below:
(LINK)
2. Download, extract and setup the appropriate Oracle Space in the link below:
(LINK)
3. Download and extract this repository;
4. Set it up as FREEPDB1 and a password of your liking;
5. Log into FREEPDB1 (not an xe) as user SYSTEM and the password you have chosen
6. Run 00_setup.sql as the SYSTEM user
7. Log into FREEPDB1 as the HEALTHCARE user
8. Run 01, 02, 03, etc.. (with F5)
(colocar as .png para demonstrar o modelo resultante + link do SQL to ER diagram)
