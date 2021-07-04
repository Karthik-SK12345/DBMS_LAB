CREATE DATABASE COLLEGEDB;
USE COLLEGEDB;
CREATE TABLE STUDENT (
USN VARCHAR (10) PRIMARY KEY,
SNAME VARCHAR (25),
ADDRESS VARCHAR (25),
PHONE INT (10),
GENDER CHAR (1));
CREATE TABLE SEMSEC (
SSID VARCHAR (5) PRIMARY KEY,
SEM INT (2),
SEC CHAR (1));
CREATE TABLE CLASS (
USN VARCHAR (10),
SSID VARCHAR (5), PRIMARY
KEY (USN, SSID),
FOREIGN KEY (USN) REFERENCES STUDENT (USN),
FOREIGN KEY (SSID) REFERENCES SEMSEC (SSID));
CREATE TABLE SUBJECT (
SUBCODE VARCHAR (8),
TITLE VARCHAR (20),
SEM INT (2),
CREDITS INT (2),
PRIMARY KEY (SUBCODE));
CREATE TABLE IAMARKS (
USN VARCHAR (10),
SUBCODE VARCHAR (8),
SSID VARCHAR(5),
TEST1 INT(2),
TEST2 INT(2),
TEST3 INT(2),
FINALIA INT (2),
PRIMARY KEY (USN, SUBCODE, SSID),
FOREIGN KEY (USN) REFERENCES STUDENT (USN),
FOREIGN KEY (SUBCODE) REFERENCES SUBJECT (SUBCODE),
FOREIGN KEY (SSID) REFERENCES SEMSEC (SSID)); 
INSERT INTO STUDENT VALUES('1RN13CS020','AKSHAY','BELAGAVI',
88778811,'M');
INSERT INTO STUDENT VALUES('1RN13CS062','SANDHYA','BENGALURU',
77228299,'F');
INSERT INTO STUDENT VALUES('1RN13CS091','TEESHA','BENGALURU',
77123123,'F');
INSERT INTO STUDENT VALUES('1RN13CS066','SUPRIYA','MANGALURU',
88778811,'F');
INSERT INTO STUDENT VALUES('1RN14CS010','ABHAY','BENGALURU',
99002112,'M');
INSERT INTO STUDENT VALUES('1RN14CS032','BHASKAR','BENGALURU',
99232110,'M');
INSERT INTO STUDENT VALUES ('1RN14CS025','ASMI','BENGALURU', 78947373,'F');
INSERT INTO STUDENT VALUES ('1RN15CS011','AJAY','TUMKUR', 98450913,'M');

INSERT INTO STUDENT VALUES ('1RN15CS029','CHITRA','DAVANGERE',
76967721,'F');
INSERT INTO STUDENT VALUES ('1RN15CS045','JEEVA','BELLARY', 99448501,'M');
INSERT INTO STUDENT VALUES ('1RN15CS091','SANTOSH','MANGALURU',
8812332,'M');
INSERT INTO STUDENT VALUES('1RN16CS045','ISMAIL','KALBURGI',
99002322,'M');
INSERT INTO STUDENT VALUES ('1RN16CS088','SAMEERA','SHIMOGA',
99055422,'F');
INSERT INTO STUDENT VALUES ('1RN16CS122','VINAYAKA','CHIKAMAGALUR',
88008800,'M'); 

INSERT INTO SEMSEC VALUES ('CSE8A', 8,'A');
INSERT INTO SEMSEC VALUES ('CSE8B', 8,'B');
INSERT INTO SEMSEC VALUES ('CSE8C',8,'C');
INSERT INTO SEMSEC VALUES ('CSE7A',7,'A');
INSERT INTO SEMSEC VALUES ('CSE7B',7,'B');
INSERT INTO SEMSEC VALUES ('CSE7C',7,'C');
INSERT INTO SEMSEC VALUES ('CSE6A',6,'A'); 
INSERT
INTO SEMSEC VALUES ('CSE6B', 6,'B'); 
INSERT INTO SEMSEC VALUES ('CSE6C', 6,'C');
INSERT INTO SEMSEC VALUES ('CSE5A', 5,'A'); 
INSERT INTO SEMSEC VALUES ('CSE5B', 5,'B'); 
INSERT INTO SEMSEC VALUES ('CSE5C', 5,'C');
INSERT INTO SEMSEC VALUES ('CSE4A',4,'A');
INSERT INTO SEMSEC VALUES ('CSE4B', 4,'B');
INSERT INTO SEMSEC VALUES('CSE4C',4,'C');
INSERT INTO SEMSEC VALUES ('CSE3A', 3,'A');
INSERT INTO SEMSEC VALUES ('CSE3B', 3,'B');
INSERT INTO SEMSEC VALUES('CSE3C',3,'C');
INSERT INTO SEMSEC VALUES ('CSE2A', 2,'C');
INSERT INTO SEMSEC VALUES ('CSE2B', 2,'B');
INSERT INTO SEMSEC VALUES ('CSE2C', 2,'C');
INSERT INTO SEMSEC VALUES ('CSE1A', 1,'A');

INSERT INTO SEMSEC VALUES ('CSE1B', 1,'B'); 
INSERT INTO SEMSEC VALUES ('CSE1C', 1,'C');

INSERT INTO CLASS VALUES('1RN13CS020','CSE8A'); 
INSERT INTO CLASS VALUES('1RN13CS062','CSE8A'); 
INSERT INTO CLASS VALUES('1RN13CS066','CSE8B'); 
INSERT INTO CLASS VALUES('1RN13CS091','CSE8C');

INSERT INTO CLASS VALUES('1RN14CS010','CSE7A'); 
INSERT INTO CLASS VALUES('1RN14CS025','CSE7A'); 
INSERT INTO CLASS VALUES('1RN14CS032','CSE7A');

INSERT INTO CLASS VALUES('1RN15CS011','CSE4A'); 
INSERT INTO CLASS VALUES('1RN15CS029','CSE4A'); 
INSERT INTO CLASS VALUES('1RN15CS045','CSE4B'); 
INSERT INTO CLASS VALUES('1RN15CS091','CSE4C');

INSERT INTO CLASS VALUES('1RN16CS045','CSE3A'); 
INSERT INTO CLASS VALUES('1RN16CS088','CSE3B'); 
INSERT INTO CLASS VALUES('1RN16CS122','CSE3C');
INSERT INTO SUBJECT VALUES ('10CS81','ACA', 8, 4); 
INSERT INTO SUBJECT VALUES ('10CS82','SSM', 8, 4); 
INSERT INTO SUBJECT VALUES ('10CS83','NM', 8, 4); 
INSERT INTO SUBJECT VALUES ('10CS84','CC', 8, 4); 
INSERT INTO SUBJECT VALUES ('10CS85','PW', 8, 4);

INSERT INTO SUBJECT VALUES ('10CS71','OOAD', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS72','ECS', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS73','PTW', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS74','DWDM', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS75','JAVA', 7, 4); 
INSERT INTO SUBJECT VALUES ('10CS76','SAN', 7, 4);

INSERT INTO SUBJECT VALUES ('15CS51', 'ME', 5, 4); 
INSERT INTO SUBJECT VALUES ('15CS52','CN', 5, 4); 
INSERT INTO SUBJECT VALUES ('15CS53','DBMS', 5, 4); 
INSERT INTO SUBJECT VALUES ('15CS54','ATC', 5, 4); 
INSERT INTO SUBJECT VALUES ('15CS55','JAVA', 5, 3);
INSERT INTO SUBJECT VALUES ('15CS56','AI', 5, 3);
INSERT INTO SUBJECT VALUES ('15CS41','M4', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS42','SE', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS43','DAA', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS44','MPMC', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS45','OOC', 4, 3);
INSERT INTO SUBJECT VALUES ('15CS46','DC', 4, 3);
INSERT INTO SUBJECT VALUES ('15CS31','M3', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS32','ADE', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS33','DSA', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS34','CO', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS35','USP', 3, 3);
INSERT INTO SUBJECT VALUES ('15CS36','DMS', 3, 3);

INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3)VALUES
('1RN13CS091','10CS81','CSE8C', 15, 16,18);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3)VALUES
('1RN13CS091','10CS82','CSE8C', 12, 19,14);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3)VALUES
('1RN13CS091','10CS83','CSE8C', 19, 15,20);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3)VALUES
('1RN13CS091','10CS84','CSE8C', 20, 16,19);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3)VALUES
('1RN13CS091','10CS85','CSE8C', 15, 15,12);
SELECT * FROM STUDENT; 
SELECT * FROM SEMSEC;
SELECT * FROM CLASS;
SELECT * FROM SUBJECT; 
SELECT * FROM IAMARKS; 

SELECT S.*, SS.SEM, SS.SEC
FROM STUDENT S, SEMSEC SS, CLASS C
WHERE S.USN = C.USN AND
SS.SSID = C.SSID AND
SS.SEM = 4 AND 
SS.SEc='C'; 

SELECT SS.SEM, SS.SEC, S.GENDER, COUNT(S.GENDER) AS COUNT
FROM STUDENT S, SEMSEC SS, CLASS C
WHERE S.USN = C.USN AND
SS.SSID = C.SSID
GROUP BY SS.SEM, SS.SEC, S.GENDER
ORDER BY SEM;


CREATE VIEW STU_TEST1_MARKS_VIEW
AS
SELECT TEST1, SUBCODE
FROM IAMARKS
WHERE USN = '1RN13CS091';

-- QUERY 4

DELIMITER //

CREATE PROCEDURE AVG_MARKS()
BEGIN
DECLARE C_A INTEGER;
DECLARE C_B INTEGER;
DECLARE C_C INTEGER;
DECLARE C_SUM INTEGER;
DECLARE C_AVG INTEGER;
DECLARE C_USN VARCHAR(10);
DECLARE C_SUBCODE VARCHAR(8);
DECLARE C_SSID VARCHAR(5);
DECLARE C_IAMARKS CURSOR FOR
SELECT GREATEST(TEST1,TEST2) AS A, GREATEST(TEST1,TEST3) AS B, GREATEST(TEST3,TEST2) AS C, USN, SUBCODE, SSID
FROM IAMARKS
WHERE FINALIA IS NULL
FOR UPDATE;
OPEN C_IAMARKS;
LOOP
FETCH C_IAMARKS INTO C_A, C_B, C_C, C_USN, C_SUBCODE, C_SSID;
IF (C_A != C_B) THEN
 SET C_SUM=C_A+C_B;
ELSE
 SET C_SUM=C_A+C_C;
END IF;
SET C_AVG=C_SUM/2;
UPDATE IAMARKS SET FINALIA = C_AVG 
WHERE USN = C_USN AND SUBCODE = C_SUBCODE AND SSID = C_SSID;
END LOOP;
CLOSE C_IAMARKS;
END;
//

CALL AVG_MARKS();

SELECT * FROM IAMARKS;

SELECT * FROM IAMARKS;

-- QUERY 5

SELECT S.USN,S.SNAME,S.ADDRESS,S.PHONE,S.GENDER,
(CASE
WHEN IA.FINALIA BETWEEN 17 AND 20 THEN 'OUTSTANDING'
WHEN IA.FINALIA BETWEEN 12 AND 16 THEN 'AVERAGE'
ELSE 'WEAK'
END) AS CAT
FROM STUDENT S, SEMSEC SS, IAMARKS IA, SUBJECT SUB
WHERE S.USN = IA.USN AND
SS.SSID = IA.SSID AND
SUB.SUBCODE = IA.SUBCODE AND
SUB.SEM = 8;