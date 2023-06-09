CREATE TABLE STATION (ID INT PRIMARY KEY, 
CITY CHAR(20), 
STATE CHAR(2), 
LAT_N INT, 
LONG_W INT)



INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W)
VALUE (13, "PHOENIX", "AZ", 33, 112),
VALUE (44, "DENVER", "CO", 40, 105),
VALUE (66, "CARIBOU", "ME", 47, 68);



CREATE TABLE STATS (ID INT,
MONTH INT CHECK (MONTH BETWEEN 1 AND 12),
TEMP_F NUMERIC (5,2) CHECK (TEMP_F BETWEEN -80 AND 150),
RAIN_I NUMERIC (5,2) CHECK (RAIN_I BETWEEN 0 AND 100),
PRIMARY KEY (ID, MONTH));

INSERT INTO STATS VALUES (13, 1, 57.4, .31);
INSERT INTO STATS VALUES (13, 7, 91.7, 5.15);
INSERT INTO STATS VALUES (44, 1, 27.3, .18);
INSERT INTO STATS VALUES (44, 7, 74.8, 2.11);
INSERT INTO STATS VALUES (66, 1, 6.7, 2.1);
INSERT INTO STATS VALUES (66, 7, 65.8, 4.52);
	

SELECT Station.City, AVG(STATS.temperature) AS 