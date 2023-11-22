CREATE TABLE Registeredstudent (
    student_id INT AUTO_INCREMENT unique,
    student_id_number VARCHAR(20) NOT NULL primary key,
    full_name VARCHAR(255) NOT NULL,
    department VARCHAR(50) NOT NULL,
    semester INT NOT NULL,
    address VARCHAR(255) NOT NULL,
    contact VARCHAR(20) NOT NULL
);
drop table Registeredstudent;
-- Table for storing course registrations
CREATE TABLE studentcourseregistration (
    registration_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id_number VARCHAR(20) Not null,
    course_code VARCHAR(20) NOT NULL,
    course_grade VARCHAR(2) NOT NULL
);
drop table studentcourseregistration;
select * from studentcourseregistration;
-- Table for storing base course information
CREATE TABLE base_course (
    course_code VARCHAR(20) PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    semester INT NOT NULL,
    credit_hour INT NOT NULL
);
drop table base_course;
-- Modify the table to include the "credit_hour" column
ALTER TABLE base_course
ADD credit_hour INT NOT NULL DEFAULT 3;

-- Insert the values with credit hours
INSERT INTO base_course (course_code, course_name, department_name, semester, credit_hour) VALUES
("SEng3207", "Operating system", "CSE", 1, 3),
("SEng3209", "Advanced programming", "CSE", 4, 3),
("SEng3205", "Digital communication & computer networks", "CSE", 1, 3),
("SEng3201", "Software Requirement Engineering", "CSE", 1, 3),
("ECE3201", "Digital logic design", "CSE", 1, 3),
("CSEg3301", "Computer graphics", "CSE", 1, 3),
("CSEg3203", "Advanced programming", "CSE", 4, 3),
("CSEg3201", "Fundamental of Software Engineering", "CSE", 1, 3),
("ECEg3201", "Digital logic design", "CSE", 1, 3),
("LART2002", "General psychology", "CSE", 1, 3),
("EPCE3207", "Electrical Measurement & Instrumentation", "EPCE", 1, 3),
("EPCE3205", "Electrical Machines I", "EPCE", 1, 3),
("EPCE3201", "Network Analysis and Synthesis", "EPCE", 1, 3),
("EPCE3203", "Electrician Engineering Workshop", "EPCE", 1, 3),
("ECE3205", "Digital Signal Processing", "ECE", 1, 3),
("phys2208", "Applied Modern Physics", "ECE", 1, 3),
("ECE3103", "Probability and Random Processes", "ECE", 1, 3),
("ECEg3201(c)", "Digital logic design", "ECE", 1, 3);

-- Table for storing student grades
CREATE TABLE studentgrades (
    student_id VARCHAR(20) NOT NULL,
    course_code VARCHAR(20) NOT NULL,
    grade VARCHAR(2) NOT NULL
);
   
    
    CREATE TABLE users (
    
    username VARCHAR(255) primary key NOT NULL,
    password VARCHAR(255) NOT NULL,
    userType VARCHAR(50) NOT NULL
);
drop table users;

Insert into users (username, password, userType)
 VALUES ("student1","student_1234","Student"),
 ("admin","admin_1234","Admin");