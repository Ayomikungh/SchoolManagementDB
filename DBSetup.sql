-- CREATING THE DATABASE
DROP DATABASE IF EXISTS SMSDB;
CREATE DATABASE SMSDB;


-- CREATING the Students Table
USE SMSDB;
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(200),
    LastName VARCHAR(200),
    GradeLevel INT
);

-- CREATING the Course Table
USE SMSDB;
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

-- Creating the Enrolments Table
USE SMSDB;
CREATE TABLE Enrolments (
    EnrollmentID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    CONSTRAINT ucname UNIQUE(StudentID, CourseID), -- avoiding duplicate enrollment
    CONSTRAINT valid_student CHECK (EXISTS (SELECT 1 FROM Students WHERE Students.StudentID = Enrolments.StudentID)), -- check validity of student
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE, -- when a student is deleted, enrolment is deleted
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE -- same happens if a course is deleted
);


-- Inserting students
INSERT INTO Students (FirstName, LastName, GradeLevel) VALUES
('Bayo', 'Oyetoro', 10),
('Elon', 'Musk', 12),
('Bill', 'Gates', 11),
('Mark', 'Zuckerberg', 10),
('Steve', 'Jobs', 11)

    
-- Insert courses
INSERT INTO Courses (CourseID, CourseName) VALUES
(101, 'Math'),
(102, 'AI and Robotics'),
(115, 'Computer Science'),
(118, 'Physics'),
(109, 'Programming')


-- Enrolling students in courses
INSERT INTO Enrolments (StudentID, CourseID) VALUES
(1, 102), (1, 101),
(2, 118), (2, 115), 
(3, 118), (3, 102),
(4, 118), (4, 109),
(5, 101), (5, 115)
