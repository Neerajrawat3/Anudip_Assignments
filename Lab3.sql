mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.06 sec)

mysql> use ecommerce;
Database changed
mysql> drop table orders;
Query OK, 0 rows affected (0.08 sec)

mysql> drop table customer;
Query OK, 0 rows affected (0.10 sec)

mysql> create table customer(Customer_ID varchar(10) not null primary key, name varchar(15) not null,city varchar(10) not null, email_ID varchar(20) not null, address varchar(20) not null,phone_no varchar(10) not null,pin_code varchar(10));
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| product             |
+---------------------+
3 rows in set (0.01 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_ID | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(20) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| product             |
+---------------------+
3 rows in set (0.00 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_ID     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(15) | NO   |     | NULL    |       |
| category       | varchar(10) | NO   |     | NULL    |       |
| sub_category   | varchar(10) | NO   |     | NULL    |       |
| original_price | varchar(10) | NO   |     | NULL    |       |
| selling_price  | varchar(10) | NO   |     | NULL    |       |
| stock          | varchar(10) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> create table orders (order_id int not null primary key auto_increment, Customer_id varchar(5) not null, product_id varchar(5) not null, quantity int not null, total_price double not null, payment_mode varchar(20) not null, order_date date not null, order_status varchar(20) not null, foreign key (Customer_ID) references customer (Customer_ID), foreign key (product_ID) references product (product_ID));
Query OK, 0 rows affected (0.07 sec)

mysql> insert into customer(Customer_ID, name, city,email_ID,address,phone_no,pin_code)values('c101','Neeraj rawat','mumbai','neeraj01@gmail.com','kalyan ganesh nager','8925361471','421306');
Query OK, 1 row affected (0.07 sec)

mysql> insert into customer(Customer_ID, name, city,email_ID,address,phone_no,pin_code)values('c102','aayush','mumbai','aayush@gmail.com','thane ganesh nager','8925319635','429606');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer(Customer_ID, name, city,email_ID,address,phone_no,pin_code)values('c103','Ajay','mumbai','ajay@gmail.com','mulund ganesh nager','8925355535','429966');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+--------------+--------+--------------------+---------------------+------------+----------+
| Customer_ID | name         | city   | email_ID           | address             | phone_no   | pin_code |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com | kalyan ganesh nager | 8925361471 | 421306   |
| c102        | aayush       | mumbai | aayush@gmail.com   | thane ganesh nager  | 8925319635 | 429606   |
| c103        | Ajay         | mumbai | ajay@gmail.com     | mulund ganesh nager | 8925355535 | 429966   |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+
3 rows in set (0.00 sec)

mysql> insert into customer(Customer_ID, name, city,email_ID,address,phone_no,pin_code)values('c104','Moin khan','mumbai','moin05@gmail.com','diva','8925355955','429966');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer(Customer_ID, name, city,email_ID,address,phone_no,pin_code)values('c105','prasenjeet','mumbai','prasenjeet@gmail.com','kalyan','8925388885','429366');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+--------------+--------+----------------------+---------------------+------------+----------+
| Customer_ID | name         | city   | email_ID             | address             | phone_no   | pin_code |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com   | kalyan ganesh nager | 8925361471 | 421306   |
| c102        | aayush       | mumbai | aayush@gmail.com     | thane ganesh nager  | 8925319635 | 429606   |
| c103        | Ajay         | mumbai | ajay@gmail.com       | mulund ganesh nager | 8925355535 | 429966   |
| c104        | Moin khan    | mumbai | moin05@gmail.com     | diva                | 8925355955 | 429966   |
| c105        | prasenjeet   | mumbai | prasenjeet@gmail.com | kalyan              | 8925388885 | 429366   |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer limit 3;
+-------------+--------------+--------+--------------------+---------------------+------------+----------+
| Customer_ID | name         | city   | email_ID           | address             | phone_no   | pin_code |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com | kalyan ganesh nager | 8925361471 | 421306   |
| c102        | aayush       | mumbai | aayush@gmail.com   | thane ganesh nager  | 8925319635 | 429606   |
| c103        | Ajay         | mumbai | ajay@gmail.com     | mulund ganesh nager | 8925355535 | 429966   |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where name like 'A___';
+-------------+------+--------+----------------+---------------------+------------+----------+
| Customer_ID | name | city   | email_ID       | address             | phone_no   | pin_code |
+-------------+------+--------+----------------+---------------------+------------+----------+
| c103        | Ajay | mumbai | ajay@gmail.com | mulund ganesh nager | 8925355535 | 429966   |
+-------------+------+--------+----------------+---------------------+------------+----------+
1 row in set (0.00 sec)

mysql> select * from customer where address like 'k%';
+-------------+--------------+--------+----------------------+---------------------+------------+----------+
| Customer_ID | name         | city   | email_ID             | address             | phone_no   | pin_code |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com   | kalyan ganesh nager | 8925361471 | 421306   |
| c105        | prasenjeet   | mumbai | prasenjeet@gmail.com | kalyan              | 8925388885 | 429366   |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer limit 3;
+-------------+--------------+--------+--------------------+---------------------+------------+----------+
| Customer_ID | name         | city   | email_ID           | address             | phone_no   | pin_code |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com | kalyan ganesh nager | 8925361471 | 421306   |
| c102        | aayush       | mumbai | aayush@gmail.com   | thane ganesh nager  | 8925319635 | 429606   |
| c103        | Ajay         | mumbai | ajay@gmail.com     | mulund ganesh nager | 8925355535 | 429966   |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+
3 rows in set (0.00 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_ID     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(15) | NO   |     | NULL    |       |
| category       | varchar(10) | NO   |     | NULL    |       |
| sub_category   | varchar(10) | NO   |     | NULL    |       |
| original_price | varchar(10) | NO   |     | NULL    |       |
| selling_price  | varchar(10) | NO   |     | NULL    |       |
| stock          | varchar(10) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> select * from product;
Empty set (0.01 sec)

mysql>  alter table customer add bill_no int not null;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+
| Customer_ID | name         | city   | email_ID             | address             | phone_no   | pin_code | bill_no |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com   | kalyan ganesh nager | 8925361471 | 421306   |       0 |
| c102        | aayush       | mumbai | aayush@gmail.com     | thane ganesh nager  | 8925319635 | 429606   |       0 |
| c103        | Ajay         | mumbai | ajay@gmail.com       | mulund ganesh nager | 8925355535 | 429966   |       0 |
| c104        | Moin khan    | mumbai | moin05@gmail.com     | diva                | 8925355955 | 429966   |       0 |
| c105        | prasenjeet   | mumbai | prasenjeet@gmail.com | kalyan              | 8925388885 | 429366   |       0 |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+
5 rows in set (0.00 sec)

mysql> alter table customer add state varchar(10) not null, add  country varchar(10) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name         | city   | email_ID             | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com   | kalyan ganesh nager | 8925361471 | 421306   |       0 |       |         |
| c102        | aayush       | mumbai | aayush@gmail.com     | thane ganesh nager  | 8925319635 | 429606   |       0 |       |         |
| c103        | Ajay         | mumbai | ajay@gmail.com       | mulund ganesh nager | 8925355535 | 429966   |       0 |       |         |
| c104        | Moin khan    | mumbai | moin05@gmail.com     | diva                | 8925355955 | 429966   |       0 |       |         |
| c105        | prasenjeet   | mumbai | prasenjeet@gmail.com | kalyan              | 8925388885 | 429366   |       0 |       |         |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
5 rows in set (0.00 sec)

mysql> update customer set phone_no = '9608226998' where customer_id = 'C101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name         | city   | email_ID             | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com   | kalyan ganesh nager | 9608226998 | 421306   |       0 |       |         |
| c102        | aayush       | mumbai | aayush@gmail.com     | thane ganesh nager  | 8925319635 | 429606   |       0 |       |         |
| c103        | Ajay         | mumbai | ajay@gmail.com       | mulund ganesh nager | 8925355535 | 429966   |       0 |       |         |
| c104        | Moin khan    | mumbai | moin05@gmail.com     | diva                | 8925355955 | 429966   |       0 |       |         |
| c105        | prasenjeet   | mumbai | prasenjeet@gmail.com | kalyan              | 8925388885 | 429366   |       0 |       |         |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
5 rows in set (0.00 sec)

mysql> select * from customer where name like '%ayu%';
+-------------+--------+--------+------------------+--------------------+------------+----------+---------+-------+---------+
| Customer_ID | name   | city   | email_ID         | address            | phone_no   | pin_code | bill_no | state | country |
+-------------+--------+--------+------------------+--------------------+------------+----------+---------+-------+---------+
| c102        | aayush | mumbai | aayush@gmail.com | thane ganesh nager | 8925319635 | 429606   |       0 |       |         |
+-------------+--------+--------+------------------+--------------------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select city from customer;
+--------+
| city   |
+--------+
| mumbai |
| mumbai |
| mumbai |
| mumbai |
| mumbai |
+--------+
5 rows in set (0.00 sec)

mysql> update customer set bill_no = '5' where customer_id = 'C101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set bill_no = '11' where customer_id = 'C104';
Query OK, 1 row affected (0.17 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name         | city   | email_ID             | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com   | kalyan ganesh nager | 9608226998 | 421306   |       5 |       |         |
| c102        | aayush       | mumbai | aayush@gmail.com     | thane ganesh nager  | 8925319635 | 429606   |       0 |       |         |
| c103        | Ajay         | mumbai | ajay@gmail.com       | mulund ganesh nager | 8925355535 | 429966   |       0 |       |         |
| c104        | Moin khan    | mumbai | moin05@gmail.com     | diva                | 8925355955 | 429966   |      11 |       |         |
| c105        | prasenjeet   | mumbai | prasenjeet@gmail.com | kalyan              | 8925388885 | 429366   |       0 |       |         |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
5 rows in set (0.00 sec)

mysql> update customer set bill_no = '21' where customer_id = 'C105';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set bill_no = '2' where customer_id = 'C103';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name         | city   | email_ID             | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com   | kalyan ganesh nager | 9608226998 | 421306   |       5 |       |         |
| c102        | aayush       | mumbai | aayush@gmail.com     | thane ganesh nager  | 8925319635 | 429606   |       0 |       |         |
| c103        | Ajay         | mumbai | ajay@gmail.com       | mulund ganesh nager | 8925355535 | 429966   |       2 |       |         |
| c104        | Moin khan    | mumbai | moin05@gmail.com     | diva                | 8925355955 | 429966   |      11 |       |         |
| c105        | prasenjeet   | mumbai | prasenjeet@gmail.com | kalyan              | 8925388885 | 429366   |      21 |       |         |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
5 rows in set (0.06 sec)

mysql> select * from customer where bill_no<10;
+-------------+--------------+--------+--------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name         | city   | email_ID           | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+---------+-------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com | kalyan ganesh nager | 9608226998 | 421306   |       5 |       |         |
| c102        | aayush       | mumbai | aayush@gmail.com   | thane ganesh nager  | 8925319635 | 429606   |       0 |       |         |
| c103        | Ajay         | mumbai | ajay@gmail.com     | mulund ganesh nager | 8925355535 | 429966   |       2 |       |         |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where bill_no>10;
+-------------+------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| Customer_ID | name       | city   | email_ID             | address | phone_no   | pin_code | bill_no | state | country |
+-------------+------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| c104        | Moin khan  | mumbai | moin05@gmail.com     | diva    | 8925355955 | 429966   |      11 |       |         |
| c105        | prasenjeet | mumbai | prasenjeet@gmail.com | kalyan  | 8925388885 | 429366   |      21 |       |         |
+-------------+------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where bill_no<=10;
+-------------+--------------+--------+--------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name         | city   | email_ID           | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+---------+-------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com | kalyan ganesh nager | 9608226998 | 421306   |       5 |       |         |
| c102        | aayush       | mumbai | aayush@gmail.com   | thane ganesh nager  | 8925319635 | 429606   |       0 |       |         |
| c103        | Ajay         | mumbai | ajay@gmail.com     | mulund ganesh nager | 8925355535 | 429966   |       2 |       |         |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where name ='ajay' or bill_no= 10;
+-------------+------+--------+----------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name | city   | email_ID       | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+------+--------+----------------+---------------------+------------+----------+---------+-------+---------+
| c103        | Ajay | mumbai | ajay@gmail.com | mulund ganesh nager | 8925355535 | 429966   |       2 |       |         |
+-------------+------+--------+----------------+---------------------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> Select * from customer where Customer_ID between 'C101' and 'C104';
+-------------+--------------+--------+--------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name         | city   | email_ID           | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+---------+-------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com | kalyan ganesh nager | 9608226998 | 421306   |       5 |       |         |
| c102        | aayush       | mumbai | aayush@gmail.com   | thane ganesh nager  | 8925319635 | 429606   |       0 |       |         |
| c103        | Ajay         | mumbai | ajay@gmail.com     | mulund ganesh nager | 8925355535 | 429966   |       2 |       |         |
| c104        | Moin khan    | mumbai | moin05@gmail.com   | diva                | 8925355955 | 429966   |      11 |       |         |
+-------------+--------------+--------+--------------------+---------------------+------------+----------+---------+-------+---------+
4 rows in set (0.06 sec)

mysql> Select * from customer where Customer_ID not between 'C101' and 'C104';
+-------------+------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| Customer_ID | name       | city   | email_ID             | address | phone_no   | pin_code | bill_no | state | country |
+-------------+------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| c105        | prasenjeet | mumbai | prasenjeet@gmail.com | kalyan  | 8925388885 | 429366   |      21 |       |         |
+-------------+------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where Customer_ID in ('C101','C104','C105');
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name         | city   | email_ID             | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com   | kalyan ganesh nager | 9608226998 | 421306   |       5 |       |         |
| c104        | Moin khan    | mumbai | moin05@gmail.com     | diva                | 8925355955 | 429966   |      11 |       |         |
| c105        | prasenjeet   | mumbai | prasenjeet@gmail.com | kalyan              | 8925388885 | 429366   |      21 |       |         |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where Customer_ID not in ('C101','C104','C105');
+-------------+--------+--------+------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name   | city   | email_ID         | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------+--------+------------------+---------------------+------------+----------+---------+-------+---------+
| c102        | aayush | mumbai | aayush@gmail.com | thane ganesh nager  | 8925319635 | 429606   |       0 |       |         |
| c103        | Ajay   | mumbai | ajay@gmail.com   | mulund ganesh nager | 8925355535 | 429966   |       2 |       |         |
+-------------+--------+--------+------------------+---------------------+------------+----------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where email_ID is null;
Empty set (0.00 sec)

mysql> select * from customer where email_ID is not null;
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| Customer_ID | name         | city   | email_ID             | address             | phone_no   | pin_code | bill_no | state | country |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
| c101        | Neeraj rawat | mumbai | neeraj01@gmail.com   | kalyan ganesh nager | 9608226998 | 421306   |       5 |       |         |
| c102        | aayush       | mumbai | aayush@gmail.com     | thane ganesh nager  | 8925319635 | 429606   |       0 |       |         |
| c103        | Ajay         | mumbai | ajay@gmail.com       | mulund ganesh nager | 8925355535 | 429966   |       2 |       |         |
| c104        | Moin khan    | mumbai | moin05@gmail.com     | diva                | 8925355955 | 429966   |      11 |       |         |
| c105        | prasenjeet   | mumbai | prasenjeet@gmail.com | kalyan              | 8925388885 | 429366   |      21 |       |         |
+-------------+--------------+--------+----------------------+---------------------+------------+----------+---------+-------+---------+
5 rows in set (0.00 sec)