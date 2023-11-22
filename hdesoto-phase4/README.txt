Trevor English tenglish@westmont.edu
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
Within our src file,
We created various for loops in this file to generate a hundred, a thousand, and ten thousand random pieces of data, based on the assigned table. 
We imported the library Faker which will allow us to use random names so we don't have to hand type them all. 
We created a function gen_phone() which generates random phone numbers that will be part of the data set we will insert into our database.
Trevor English worked primarily on developing the python programs.  

The degreetensthousand file opens the degrees.txt file and uses a for loop to write values into it. 
The facultytensthousands file opens the faculty.txt file and uses a for loop to write values into it. 
The rankHundreds file uses a for loop to put data into the rank table. 
The universityHundreds file uses a for loop to put data into the university table. 

5) a.sql
Develop five questions that you think should be answered by your database. Write five corresponding queries for your database, using the select-from-where construct of SQL to answer those questions based on the data in your database

6) b.sql
Write five data modification commands on your database.

7) c.sql
Create two views on top of your database schema. Again, these views should be meaningful with respect to the purpose for which you are building your database. Your file, c.sql, should contain your CREATE VIEW statements.

8) d.sql
Create at least two useful indexes for your database (other than indexes SQL creates automatically because of key or unique declarations). Consider the types of queries that you expect will be run and in that light where an index could be beneficial. 


Functions in triggerfunctions.sql 

SelectAllFaculty:
Type: Stored Procedure
Purpose: Retrieves all faculty members based on the provided tenured status.
count_signed_faith_faculty:

Type: Stored Function
Purpose: Counts the number of faculty members who have signed the statement of faith.
calculate_average_publications:

Type: Stored Function
Purpose: Calculates the average number of publications for faculty members in a specified department.
check_person_age:

Type: Stored Function (Trigger Check)
Purpose: Checks if a person's age is 25 or older. Used as a trigger before inserting or updating records in the person table.




