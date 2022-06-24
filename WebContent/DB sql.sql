CREATE TABLE signup(
id VARCHAR(30),
pwd VARCHAR(30),
NAME VARCHAR(30),
adress VARCHAR(50),
phone VARCHAR(20)
);

CREATE TABLE board(
title VARCHAR(50),
writer VARCHAR(30),
content VARCHAR(2000)
);

CREATE TABLE product(
id VARCHAR(100),
image VARCHAR(300),
itemname VARCHAR(50),
companyname VARCHAR(50),
price INT
);

CREATE TABLE top(
id VARCHAR(100),
image VARCHAR(300),
itemname VARCHAR(50),
companyname VARCHAR(50),
price INT
);

CREATE TABLE shoes(
id VARCHAR(100),
image VARCHAR(300),
itemname VARCHAR(50),
companyname VARCHAR(50),
price INT
);

CREATE TABLE pants(
id VARCHAR(100),
image VARCHAR(300),
itemname VARCHAR(50),
companyname VARCHAR(50),
price INT
);

COMMIT;