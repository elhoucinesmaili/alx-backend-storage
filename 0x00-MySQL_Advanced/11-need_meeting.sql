-- This SQL script creates a view named need_meeting that lists all students with a score under 80 and no last meeting or a meeting more than 1 month ago
CREATE VIEW need_meeting AS 
SELECT name 
FROM students 
WHERE score < 80
AND (last_meeting IS NULL OR last_meeting < DATE(CURDATE() - INTERVAL 1 MONTH));
