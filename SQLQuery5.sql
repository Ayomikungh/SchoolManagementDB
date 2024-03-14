CREATE DATABASE SchoolManagementSystem;

CREATE TABLE Students (
Student_name varchar(70),
StudentID int PRIMARY KEY,
StudentGrade int
);

CREATE TABLE Courses (
Course_name varchar(50),
CourseID int PRIMARY KEY
);

CREATE TABLE Enrolments (
EnrolmentID int PRIMARY KEY,
StudentID int FOREIGN KEY REFERENCES Students(StudentID),
CourseID int FOREIGN KEY REFERENCES Courses(CourseID)
);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('John Collins', 001, 1);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('Brandon Ingram', 002, 2);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('Lonzo Ball', 003, 2);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('Anthony Davis', 004, 1);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('Kevin Durant', 005, 1);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('Anthony Edwards', 006, 2);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('Stephen Curry', 007, 1);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('Ja Morant', 008, 1);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('Paul George', 009, 1);

INSERT INTO Students (Student_name, StudentID, StudentGrade) VALUES ('Austin Reaves', 010, 2);

SELECT * FROM Students;

INSERT INTO Courses(Course_name, CourseID) VALUES ('Mathematics', 111);

INSERT INTO Courses(Course_name, CourseID) VALUES ('English', 222);

INSERT INTO Courses(Course_name, CourseID) VALUES ('French', 333);

INSERT INTO Courses(Course_name, CourseID) VALUES ('Geography', 444);

SELECT * FROM Courses;

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (1, 001, 111);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (2, 010, 111);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (3, 006, 444);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (4, 008, 333);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (5, 001, 333);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (6, 009, 444);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (7, 010, 222);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (8, 004, 222);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (9, 006, 111);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (10, 002, 111);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (11, 001, 444);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (12, 003, 111);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (13, 004, 333);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (14, 008, 333);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (15, 005, 111);

INSERT INTO Enrolments(EnrolmentID, StudentID, CourseID) VALUES (16, 007, 444);

SELECT * FROM Enrolments;

UPDATE Students
SET Student_name='Rui Hachimura'
WHERE StudentID=005;

SELECT * FROM Students;

SELECT *
FROM Students
WHERE StudentGrade = 1;

SELECT COUNT(*)
FROM Enrolments
WHERE CourseID=111;

SELECT COUNT(*)
FROM Enrolments
WHERE CourseID=222;

SELECT COUNT(*)
FROM Enrolments
WHERE CourseID=333;

SELECT COUNT(*)
FROM Enrolments
WHERE CourseID=444;

SELECT *
FROM Enrolments
WHERE CourseID=111;

SELECT *
FROM Enrolments
WHERE CourseID=222;

SELECT *
FROM Enrolments
WHERE CourseID=333;

SELECT *
FROM Enrolments
WHERE CourseID=444;
