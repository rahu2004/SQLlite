


-- CREATE STUDENTS TABLE


CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(50),
    age INTEGER,
    city VARCHAR(50)
);


-- CREATE COURSES TABLE


CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR(100),
    faculty_name VARCHAR(100)
);

-- CREATE ENROLLMENTS TABLE


CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    marks INTEGER,

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);


-- INSERT STUDENTS


INSERT INTO Students VALUES
(1, 'Rahul', 'AI', 21, 'Chennai');

INSERT INTO Students VALUES
(2, 'Kiran', 'Data Science', 22, 'Hyderabad');

INSERT INTO Students VALUES
(3, 'Anjali', 'Cyber Security', 20, 'Bangalore');

INSERT INTO Students VALUES
(4, 'Rohit', 'AI', 23, 'Mumbai');


-- INSERT COURSES


INSERT INTO Courses VALUES
(101, 'Machine Learning', 'Dr. Kumar');

INSERT INTO Courses VALUES
(102, 'Data Analytics', 'Dr. Priya');

INSERT INTO Courses VALUES
(103, 'Cloud Computing', 'Dr. Sharma');

-- INSERT ENROLLMENTS


INSERT INTO Enrollments VALUES
(1, 1, 101, 90);

INSERT INTO Enrollments VALUES
(2, 2, 102, 85);

INSERT INTO Enrollments VALUES
(3, 3, 103, 88);

INSERT INTO Enrollments VALUES
(4, 4, 101, 95);

