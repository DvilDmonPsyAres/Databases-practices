sqlite3 db.db //for saving in a file
sqlite3 // for saving in ram
.read create-table.sql
.headers on
.schema
.tables
SELECT * FROM [table-name] ORDER BY [header-name];
.help
DROP TABLE IF EXISTS [table-name]; // add on top of file to create db for no duplicate info, after running it first time

 DROP TABLE IF EXISTS puppies;

SELECT last_name FROM employees WHERE department = 'Chemistry';

SELECT name, age_yrs, weight_lbs FROM puppies WHERE weight_lbs > 25 AND weight_lbs < 30;  // AND OR NOT
