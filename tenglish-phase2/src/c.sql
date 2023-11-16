-- Create a view to display faculty and their degree information
CREATE VIEW faculty_degrees_view AS
SELECT
    f.id AS faculty_id,
    p.fname AS first_name,
    p.lname AS last_name,
    d.degree_name,
    d.degree_type,
    d.year_grad
FROM faculty AS f
JOIN person AS p ON f.person_id = p.id
LEFT JOIN degree AS d ON f.id = d.faculty_id;

-- Query involving faculty_degrees_view:

SELECT * FROM faculty_degrees_view LIMIT 5;


-- Create a view to display faculty members with their service hours and research publications
CREATE VIEW faculty_service_research_view AS
SELECT
    f.id AS faculty_id,
    p.fname AS first_name,
    p.lname AS last_name,
    COALESCE(cs.hrs, 0) AS service_hours,
    COALESCE(r.number_of_publications, 0) AS publications
FROM faculty AS f
JOIN person AS p ON f.person_id = p.id
LEFT JOIN community_service AS cs ON f.id = cs.faculty_id
LEFT JOIN research AS r ON f.id = r.faculty_id;

-- Query involving faculty_service_research_view:
SELECT * FROM faculty_service_research_view WHERE publications > 2;


