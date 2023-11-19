CREATE PROCEDURE SelectAllFaculty @tenured boolean
AS
SELECT * FROM Faculty WHERE tenured = @tenured
GO;

CREATE FUNCTION count_signed_faith_faculty()
RETURNS INT AS $$
DECLARE
    signed_faith_count INT;
BEGIN
    -- Count the number of faculty members who have signed the statement of faith
    SELECT COUNT(*) INTO signed_faith_count
    FROM faculty
    WHERE signed_statement_faith = TRUE;

    -- RETURNS THE COUNT
    RETURN signed_faith_count;
END;
$$ LANGUAGE plpsql;

-- Call this function like this
SELECT count_signed_faith_faculty(); 

CREATE calculate_average_publications(departnment_id INT)
RETURNS DECIMAL AS $$
DECLARE
    total_publications INT := 0;
    faculty_count INT := 0;
    average_publications DECIMAL;
BEGIN
    -- CALCULATE teh total number of publications and count of faculty members 
    FOR faculty_record IN
        SELECT number_of_publications
        FROM research
        WHERE faculty_id IN (
            SELECT id
            FROM faculty
            WHERE person_id IN (
                SELECT id
                FROM person
                WHERE id = department_id
            )
        )
    LOOP
        total_publications := total_publications + faculty_record.number_of_publications;
        faculty_count := faculty_count + 1;
    END LOOP;

    -- Avoid division by zero
    IF faculty_count > 0 THEN
        -- Calculate the average number of publications
        average_publications := total_publications / faculty_count;
        RETURN average_publications;
    ELSE
    -- Return NULL if no faculty members are found
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE plpgsql;