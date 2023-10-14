Hannah DeSoto hdesoto@westmont.edu
Team DELTA 
https://github.com/trvrenglish/CS-125

Repositiory's Name CS-125 - This repository currently holds everyone's phase1 and phase2 folders and .README.md in the main branch Master

For phase2, our DELTA team met together to create the files that will set up our database for future use.

1) createschema.sql
Within this file, we used our erdplus diagram and the create table command to create tables within our database 
that will store our data. We used the web server DB diagram to create our SQl files and then we copied those files 
into our various folders within our CS-125 repository. 

2) dropschema.sql
We created this file to help us drop any/all of the relations from our createschema.sql file. 

3) populatesmall.sql
Using the INSERT command INSERT command to insert on the order of ten tuples into each of our relations. We used fictional tuples 
to reflect the intended use of our databases. 

4) populatelarge.sql
For this file, we created various Python programs to generate the data at random and store in the populatelarge.sql file. 
We created various for loops in this file to generate a hundred, a thousand, and ten thousand random pieces of data, based on the assigned table. 
We imported the library Faker which will allow us to use random names so we don't have to hand type them all. 
We created a function gen_phone() which generates random phone numbers that will be part of the data set we will insert into our database. 







