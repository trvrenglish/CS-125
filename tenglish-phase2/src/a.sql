
-- Who is the first person in our database?
SELECT * FROM person WHERE id=1;

-- +----+-------+------------+-------------------------+--------------+--------+
-- | id | fname | lname      | email                   | phone        | gender |
-- +----+-------+------------+-------------------------+--------------+--------+
-- |  1 | Silas | Ten Elshof | stenelshof@westmont.edu | 714-728-2589 | male   |
-- +----+-------+------------+-------------------------+--------------+--------+

-- How many research publications has Silas published?
SELECT research.number_of_publications
FROM person person
JOIN faculty faculty ON person.id = faculty.person_id
JOIN research research ON faculty.id = research.faculty_id
WHERE person.fname = 'Silas';
-- +------------------------+
-- | number_of_publications |
-- +------------------------+
-- | 3                      |
-- +------------------------+

-- What are all the community services of which has Silas completed?
SELECT community_service.title, community_service.organization
FROM person person
JOIN faculty faculty ON person.id = faculty.person_id
JOIN community_service community_service ON faculty.id = community_service.faculty_id
WHERE person.fname = 'Silas';
-- +-----------------+------------------------+
-- | title           | organization           |
-- +-----------------+------------------------+
-- | example title   | nonprofit incorporated |
-- | example title 2 | nonprofit incorporated |
-- | example title 3 | nonprofit incorporated |
-- +-----------------+------------------------+

-- What is the highest level of degree has Silas achieved?
SELECT degree.degree_type, degree.degree_name
FROM person person
JOIN faculty faculty ON person.id = faculty.person_id
JOIN degree degree ON faculty.id = degree.faculty_id
WHERE person.fname = 'Silas';
-- +-------------+------------------+
-- | degree_type | degree_name      |
-- +-------------+------------------+
-- | Bachelors   | Computer Science |
-- +-------------+------------------+

-- How many years has Silas been teaching?
SELECT TIMESTAMPDIFF(year, faculty.term_begin, faculty.term_end) AS YearsTaught
FROM person
JOIN faculty ON person.id = faculty.person_id
WHERE person.fname = 'Silas';
-- +-------------+
-- | YearsTaught |
-- +-------------+
-- |          10 |
-- +-------------+