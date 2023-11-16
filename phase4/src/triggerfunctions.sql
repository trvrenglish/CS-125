CREATE PROCEDURE SelectAllFaculty @tenured boolean
AS
SELECT * FROM Faculty WHERE tenured = @tenured
GO;
