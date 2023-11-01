-- Create a view to display faculty and their degree information
CREATE VIEW testview3 AS
SELECT
    faculty.id AS faculty_id,
    person.fname AS first_name,
    person.lname AS last_name,
    degree.degree_name,
    degree.degree_type,
    degree.year_grad
FROM faculty
JOIN person ON faculty.person_id = person.id
LEFT JOIN degree ON faculty.id = degree.faculty_id;

-- Create a view to display faculty members with their service hours and research publications
CREATE VIEW faculty_service_research_view AS
SELECT
    faculty.id AS faculty_id,
    person.fname AS first_name,
    person.lname AS last_name,
    COALESCE(community_service.hrs, 0) AS service_hours,
    COALESCE(research.number_of_publications, 0) AS publications
FROM faculty AS faculty
JOIN person AS person ON faculty.person_id = person.id
LEFT JOIN community_service AS community_service ON faculty.id = community_service.faculty_id
LEFT JOIN research AS research ON faculty.id = research.faculty_id;
