INSERT INTO person (id, fname, lname, email, phone, gender)
VALUES (2, 'Jane', 'Smith', 'janesmith@gmail.com', '123-439-2940', 'female');

UPDATE faculty
SET tenured = true
WHERE id = 1; 

DELETE FROM person
WHERE id = 2; 

INSERT INTO person (id, fname, lname, email, phone, gender)
VALUES (3, 'David', 'Johnson', 'davidjohnson@example.com', '555-789-1234', 'Male'),
    (4, 'Lisa', 'Brown', 'lisabrown@example.com', '555-234-5678', 'Female');

UPDATE faculty 
SET tenured = true
WHERE id IN (SELECT faculty_id FROM degree WHERE year_grad > 1990); 
