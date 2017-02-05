DROP DATABASE PROJECT2;
CREATE DATABASE PROJECT2;

USE PROJECT2;

CREATE TABLE BOWLING (PlayerID INT NOT NULL AUTO_INCREMENT
,FIRST_NAME VARCHAR(100) DEFAULT NULL
,LAST_NAME VARCHAR(100) DEFAULT NULL
, GAME1 INT DEFAULT NULL
,GAME2 INT DEFAULT NULL
,GAME3 INT DEFAULT NULL
,GAME4 INT DEFAULT NULL, PRIMARY KEY(PlayerID));

INSERT INTO BOWLING (FIRST_NAME, LAST_NAME, GAME1, GAME2, GAME3,GAME4) VALUES
 ('CHONGLIANG','HE',55,67,73,86)
 ,('YILI','ZOU',99,12,64,100)
 ,('ZILI','ZHOU',102,22,44,58)
 ,('YUXU','LIU',77,67,89,125);
 
 SELECT * FROM BOWLING;
 
 SELECT CONCAT(FIRST_NAME,', ',LAST_NAME) AS 'Full name'
 , CONCAT(SUBSTRING(FIRST_NAME,1,1)
 ,SUBSTRING(LAST_NAME,1,1)) AS 'Initials'
 ,GAME1+GAME2+GAME3+GAME4 AS 'TOTALS'
 ,(GAME1+GAME2+GAME3+GAME4)/4 AS 'Average'
 FROM BOWLING;
 
 
SELECT * FROM BOWLING ORDER BY 4;
SELECT * FROM BOWLING ORDER BY 3 DESC;
SELECT * FROM BOWLING ORDER BY LAST_NAME ASC;
SELECT * FROM BOWLING ORDER BY PLAYERID LIMIT 2;

SELECT * FROM BOWLING ORDER BY LAST_NAME ASC, FIRST_NAME DESC;#THE TWO RESULTS BELOW ARE THE SAME, THINK WHY!
SELECT * FROM BOWLING ORDER BY LAST_NAME ASC, FIRST_NAME ASC;