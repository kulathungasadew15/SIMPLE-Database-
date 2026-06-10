CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(10) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id) ON DELETE SET NULL
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(class_id) ON DELETE SET NULL
);

INSERT INTO teachers (first_name, last_name, email) VALUES
('Kamal', 'Perera', 'kamal.perera@school.lk'),
('Anusha', 'Jayasinghe', 'anusha.j@school.lk'),
('Sunil', 'Fernando', 'sunil.f@school.lk');

INSERT INTO classes (class_name, teacher_id) VALUES
('Grade 11', 1),
('Grade 12', 2),
('Grade 13', 3);

INSERT INTO students (first_name, last_name, class_id) VALUES
('Nimal', 'Silva', 1),
('Dilani', 'Gunawardena', 1),
('Pathum', 'Nissanka', 2),
('Chathuri', 'Ranasinghe', 2),
('Kasun', 'Rajitha', 3),
('Thilini', 'Alwis', 3);

SELECT 
    s.student_id, 
    CONCAT(s.first_name, ' ', s.last_name) AS student_name,
    c.class_name,
    CONCAT(t.first_name, ' ', t.last_name) AS teacher_name
FROM students s
INNER JOIN classes c ON s.class_id = c.class_id
INNER JOIN teachers t ON c.teacher_id = t.teacher_id;