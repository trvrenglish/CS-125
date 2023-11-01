-- Insert a new person record for Jane Smith
INSERT INTO person (id, fname, lname, email, phone, gender)
VALUES (2, 'Jane', 'Smith', 'janesmith@gmail.com', '123-439-2940', 'female');

-- Update the faculty record to set the 'tenured' flag to true for the faculty member with 'id' 1
UPDATE faculty
SET tenured = true
WHERE id = 1;

-- Delete the person record with 'id' 2
DELETE FROM person
WHERE id = 2;

-- Insert two new person records for David Johnson and Lisa Brown
INSERT INTO person (id, fname, lname, email, phone, gender)
VALUES
    (3, 'David', 'Johnson', 'davidjohnson@example.com', '555-789-1234', 'Male'),
    (4, 'Lisa', 'Brown', 'lisabrown@example.com', '555-234-5678', 'Female');

-- Update faculty records to set the 'tenured' flag to true for faculty members who graduated after 1990
UPDATE faculty
SET tenured = true
WHERE id IN (SELECT faculty_id FROM degree WHERE year_grad > 1990);

