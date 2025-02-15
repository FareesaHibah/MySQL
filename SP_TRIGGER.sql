-- Create the database
CREATE DATABASE SP_trigger;
USE SP_trigger;

-- Create students table
CREATE TABLE students (
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Age INT,
  Roll_no INT,
  Course VARCHAR(20)
);

-- Create the trigger log table
CREATE TABLE Student_Trigger (
  T_ID INT PRIMARY KEY AUTO_INCREMENT,
  ID INT,
  Name VARCHAR(50),
  Roll_no INT,
  Changes TIMESTAMP
);

-- Create the trigger
DELIMITER $$

CREATE TRIGGER Std_trigger 
AFTER INSERT 
ON students
FOR EACH ROW 
BEGIN
  INSERT INTO Student_Trigger (ID, Name, Roll_no, Changes)
  VALUES (NEW.ID, NEW.Name, NEW.Roll_no, CURRENT_TIMESTAMP);
END$$

DELIMITER ;

-- Insert a record into the students table
INSERT INTO students (ID, Name, Age, Roll_no, Course)
VALUES (101, 'Fareesa', 19, 20, 'AIPA');
INSERT INTO students (ID, Name, Age, Roll_no, Course)
VALUES (102,"Hibah",10,10,"CTS");

select * from Student_Trigger;








