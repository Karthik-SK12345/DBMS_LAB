CREATE DATABASE STUDENT_ENROLLMENT;
USE STUDENT_ENROLLMENT;

CREATE TABLE STUDENT(REGNO VARCHAR(10), NAME VARCHAR(30), MAJOR VARCHAR(10), BDATE DATE, PRIMARY KEY(REGNO));
CREATE TABLE COURSE(COURSE_NO INT, CNAME VARCHAR(30), DEPT VARCHAR(4), PRIMARY KEY(COURSE_NO));
CREATE TABLE ENROLL(REGNO VARCHAR(10), COURSE_NO INT, SEM INT, MARKS INT, FOREIGN KEY(REGNO) REFERENCES STUDENT(REGNO) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY(COURSE_NO) REFERENCES COURSE(COURSE_NO) ON DELETE CASCADE ON UPDATE CASCADE);
CREATE TABLE TEXTBOOK(ISBN INT, TITLE VARCHAR(30), PUBLISHER VARCHAR(30), AUTHOR VARCHAR(30), PRIMARY KEY(ISBN)); 
CREATE TABLE ADOPTION(COURSE_NO INT, SEM INT, ISBN INT, FOREIGN KEY(COURSE_NO) REFERENCES COURSE(COURSE_NO) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY(ISBN) REFERENCES TEXTBOOK(ISBN) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO STUDENT VALUES("CS01", "RAM" ,"DS" ,"1986-03-12"),
("IS02" ,"SMITH" ,"USP" ,"1987-12-23"),
("EC03" ,"AHMED" ,"SNS" ,"1985-04-17"),
("CS03" ,"SNEHA" ,"DBMS" ,"1987-01-01"),
("TC05" ,"AKHILA" ,"EC" ,"1986-10-06");

INSERT INTO COURSE VALUES(11 ,"DS" ,"CS"),
(22 ,"USP" ,"IS"),
(33 ,"SNS" ,"EC"),
(44 ,"DBMS" ,"CS"),
(55 ,"EC" ,"TC");

INSERT INTO ENROLL VALUES("CS01" ,11 ,4 ,85),
("IS02" ,22, 6, 80),
("EC03", 33, 2, 80),
("CS03", 44, 6, 75),
("TC05", 55, 2, 8);

INSERT INTO TEXTBOOK VALUES(1 ,"DS and C" ,"Princeton" ,"Padma Reddy"),
(2 ,"Fundamentals of DS" ,"Princeton", "Godse"),
(3 ,"Fundamentals of DBMS" ,"Princeton" ,"Navathe"),
(4 ,"SQL" ,"Princeton" ,"Foley"),
(5 ,"Electronic circuits" ,"TMH" ,"Elmasri"),
(6 ,"Adv unix prog" ,"TMH" ,"Stevens");

INSERT INTO ADOPTION VALUES(11 ,4 ,1),
(11 ,4 ,2),
(44 ,6 ,3),
(44 ,6 ,4),
(55 ,2 ,5),
(22, 6, 6);

#Demonstrate how you add a new text book to the database and make this book be adopted by some department.

INSERT INTO TEXTBOOK VALUES(7, "Operating System Concepts","Wiley","Silberschatz-Galvin-Gagne");
INSERT INTO ADOPTION VALUES(55, 2, 7);

SELECT * FROM TEXTBOOK;

/*Produce a list of text books (include Course #, Book-ISBN, Book-title) in the
alphabetical order for courses offered by the ‘CS’ department that use more than two
books.*/
SELECT C.COURSE_NO ,T.ISBN,T.TITLE FROM COURSE C, TEXTBOOK T, ADOPTION A WHERE C.DEPT = "CS" AND C.COURSE_NO = A.COURSE_NO AND A.ISBN = T.ISBN;  

/*List any department that has all its adopted books published by a specific publisher.*/

SELECT DISTINCT C.DEPT FROM COURSE C
WHERE C.DEPT IN (SELECT C.DEPT FROM COURSE C, TEXTBOOK T, ADOPTION A
WHERE T.PUBLISHER = "PRINCETON" AND C.COURSE_NO = A.COURSE_NO AND A.ISBN = T.ISBN)
AND C.DEPT NOT IN (SELECT C.DEPT FROM COURSE C, TEXTBOOK T, ADOPTION A
WHERE T.PUBLISHER != "PRINCETON" AND C.COURSE_NO = A.COURSE_NO AND A.ISBN = T.ISBN);
