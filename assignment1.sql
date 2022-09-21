CREATE DATABASE ASSIGNMENT;
CREATE TABLE salespeople(
snum INT PRIMARY KEY,
sname VARCHAR(50),
city VARCHAR(50),
comm INT 
);
INSERT INTO salespeople(snum,sname,city,comm)
VALUES ("1001","peel","london","12");
INSERT INTO salespeople(snum,sname,city,comm)
VALUES ("1002","serres","sanjose","13");
INSERT INTO salespeople(snum,sname,city,comm)
VALUES ("1004","motika","london","11");
INSERT INTO salespeople(snum,sname,city,comm)
VALUES ("1007","rifkin","barcelona","15");
INSERT INTO salespeople(snum,sname,city,comm)
VALUES ("1003","axelrod","newyork","10");salespeople

CREATE TABLE customers(
cnum INT PRIMARY KEY,
cname VARCHAR(50),
city VARCHAR(50),
snum INT 
);
INSERT INTO customers(cnum,cname,city,snum)
VALUES ("2001","Hoffman","London","1001");
INSERT INTO customers(cnum,cname,city,snum)
VALUES ("2002","Giovanni","Rome","1003");
INSERT INTO customers(cnum,cname,city,snum)
VALUES ("2003","Liu","Sanjose","1002");
INSERT INTO customers(cnum,cname,city,snum)
VALUES ("2004","Grass","Berlin","1002");
INSERT INTO customers(cnum,cname,city,snum)
VALUES ("2006","Clemens","London","1001");
INSERT INTO customers(cnum,cname,city,snum)
VALUES ("2008","Cisneros","Sanjose","1007");
INSERT INTO customers(cnum,cname,city,snum)
VALUES ("2007","Pereira","Rome","1004");

CREATE TABLE orders(
onum INT PRIMARY KEY,
amt float,
odate VARCHAR(50),
tcnum INT, 
tsnum INT
);
INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3001","18.69","3-10-1990","2008","1007");
INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3003","767.19","3-10-1990","2001","1001");
INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3002","1900.10","3-10-1990","2007","1004");
INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3005","5160.45","3-10-1990","2003","1002");

INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3006","1098.16","3-10-1990","2008","1007");
INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3009","1713.23","4-10-1990","2002","1003");
INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3007","75.75","4-10-1990","2004","1002");

INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3008","4273.00","5-10-1990","2006","1001");
INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3010","1309.95","6-10-1990","2004","1002");
INSERT INTO orders(onum,amt,odate,tcnum,tsnum)
VALUES ("3011","9891.88","6-10-1990","2006","1001");

-- 1.NUMBER OF SALESPERSON WITH STARTING WITH A --
SELECT count(*) FROM salespeople where sname like "A%";

-- 2.ORDERS WORTH MORE THAN 2000 --
SELECT * from salespeople join orders 
on salespeople.snum=orders.tsnum WHERE amt>2000;

-- 3.BELONGING TO NEWYORK --
SELECT count(*) FROM salespeople where city like 'newyork';

-- 4.LONDON AND PARIS--
SELECT count(*) FROM salespeople where city like 'london' or 'paris';

-- 5.ORDERS AND DATE --
SELECT onum,sname,odate from salespeople join orders 
on salespeople.snum=orders.tsnum







