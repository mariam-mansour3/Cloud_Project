CREATE DATABASE IF NOT EXISTS project_cloud;

USE project_cloud;

CREATE TABLE IF NOT EXISTS student(
    Student_ID BIGINT PRIMARY KEY,
    S_Name VARCHAR(50),
    CGPA DECIMAL(3,2) CHECK (CGPA>=0 AND CGPA<=4),
    Age INT CHECK(Age>0)
);
INSERT INTO student(Student_ID,S_Name,CGPA,Age)
VALUES
    (22010254,"Mariam Mansour Abd Elfattah",3.36,20),
    (20221462480,"Asmaa Samir Abd Elghany",3.18,21),
    (22011676,"Mariam Mohamed Elsayed",3.00,22),
    (22011645,"Habiba Ahmed Mahmoud",3.00,20),
    (22010178,"Amr Mohamed Mahmoud Ibrahim",3.00,20)
ON DUPLICATE KEY UPDATE
    Student_ID=VALUES(Student_ID),
    S_Name=VALUES(S_Name),
    CGPA=VALUES(CGPA),
    Age=VALUES(Age);
