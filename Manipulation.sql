-- Renaming Student Number 1
USE SchoolManagementSystem;

UPDATE Students
SET FirstName = 'Bayonle'
WHERE StudentID = 1;


-- Deleting a math
DELETE FROM Courses
WHERE CourseID = 101;


-- Courses with no of students enrolled
SELECT C.CourseName, COUNT(E.StudentID) AS EnrolledStudents
FROM Courses AS C
LEFT JOIN Enrolments AS E ON C.CourseID = E.CourseID
GROUP BY C.CourseName;


-- Students enrolled in AI and Robotics and Computer Science
SELECT CONCAT(S.FirstName,' ', S.LastName) AS StudentName
FROM Students AS S
INNER JOIN Enrolments AS E ON S.StudentID = E.StudentID
WHERE E.CourseID IN (102, 115);
