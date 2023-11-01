

SELECT * FROM person WHERE id=1;

-- +----+-------+------------+-------------------------+--------------+--------+
-- | id | fname | lname      | email                   | phone        | gender |
-- +----+-------+------------+-------------------------+--------------+--------+
-- |  1 | Silas | Ten Elshof | stenelshof@westmont.edu | 714-728-2589 | male   |
-- +----+-------+------------+-------------------------+--------------+--------+

SELECT research.number_of_publications FROM person person JOIN faculty faculty ON person.id = faculty.person_id JOIN research research ON faculty.id = research.faculty_id WHERE person.fname = 'Silas';
-- +------------------------+
-- | number_of_publications |
-- +------------------------+
-- | 3                      |
-- +------------------------+