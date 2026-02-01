CREATE DATABASE college;
USE college;
CREATE TABLE Departments (
department_id INT NOT NULL AUTO_INCREMENT,
code VARCHAR(10) NOT NULL UNIQUE,
name VARCHAR(100) NOT NULL,
PRIMARY KEY (department_id)
);
CREATE TABLE Semesters (
semester_id INT NOT NULL AUTO_INCREMENT,
code VARCHAR(10) NOT NULL UNIQUE,
name VARCHAR(50) NOT NULL,
start_date DATE,
end_date DATE,
PRIMARY KEY (semester_id)
);
CREATE TABLE Users (
user_id INT NOT NULL AUTO_INCREMENT,
username VARCHAR(100) NOT NULL UNIQUE,
password_hash VARCHAR(255) NOT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (user_id)
);
CREATE TABLE Students (
student_id INT NOT NULL AUTO_INCREMENT,
user_id INT,
given_name VARCHAR(100) NOT NULL,
family_name VARCHAR(100),
dob DATE,
email VARCHAR(255) NOT NULL UNIQUE,
department_id INT,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
is_active INT NOT NULL,
PRIMARY KEY (student_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE SET NULL,
FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
CREATE TABLE Instructors (
instructor_id INT NOT NULL AUTO_INCREMENT,
user_id INT,
name VARCHAR(200) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
department_id INT,
is_active INT NOT NULL,
PRIMARY KEY (instructor_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE SET NULL,
FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
CREATE TABLE Courses (
course_id INT NOT NULL AUTO_INCREMENT,
code VARCHAR(20) NOT NULL UNIQUE,
course_name VARCHAR(200) NOT NULL,
department_id INT,
credits INT NOT NULL,
PRIMARY KEY (course_id),
FOREIGN KEY (department_id) REFERENCES Departments(department_id),
CHECK (credits > 0)
);
CREATE TABLE Enrollments (
enrollment_id INT NOT NULL AUTO_INCREMENT,
student_id INT NOT NULL,
course_id INT NOT NULL,
semester_id INT NOT NULL,
enrollment_date DATE NOT NULL,
grade_id INT,
status VARCHAR(20),
PRIMARY KEY (enrollment_id),
UNIQUE (student_id, course_id, semester_id),
FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE
CASCADE,
FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE
RESTRICT,
FOREIGN KEY (semester_id) REFERENCES Semesters(semester_id) ON DELETE
RESTRICT,
CHECK (status IN ('enrolled', 'withdrawn', 'completed'))
);
CREATE TABLE Course_Instructors (
instructor_id INT NOT NULL,
course_id INT NOT NULL,
semester VARCHAR(10),
year INT,
PRIMARY KEY (instructor_id, course_id, semester, year),
FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id),
FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
CREATE TABLE Classrooms (
room_no VARCHAR(10) NOT NULL,
building VARCHAR(50),
capacity INT,
assigned_course INT,
PRIMARY KEY (room_no),
FOREIGN KEY (assigned_course) REFERENCES Courses(course_id)
);
CREATE TABLE System_Log (
log_id INT NOT NULL AUTO_INCREMENT,
event_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
user_id INT,
action VARCHAR(100),
status VARCHAR(20),
PRIMARY KEY (log_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
