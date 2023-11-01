-- Index on email column in the person table:
CREATE INDEX ndx_person_email ON person (email);

-- Index on faculty_id column in the degree table:
CREATE INDEX ndx_degree_faculty_id ON degree (faculty_id);


-- Query without the indexes
-- Query 1: Select a person by their email
SELECT * FROM person WHERE email = 'johndoe@example.com';

-- Query 2: Retrieve degrees for a specific faculty member
SELECT * FROM degree WHERE faculty_id = 1;

-- Query with the indexes
-- Query 1: Select a person by their email
SELECT * FROM person WHERE email = 'johndoe@example.com';

-- Query 2: Retrieve degrees for a specific faculty member
SELECT * FROM degree WHERE faculty_id = 1;