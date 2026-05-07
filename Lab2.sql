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
7 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
+---------------------+
1 row in set (0.00 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_ID | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(10) | NO   |     | NULL    |       |
| address     | varchar(10) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> create table product(product_ID varchar(10) not null primary key, product_name varchar(15) not null,category varchar(10) not null,sub_category varchar(10) not null, original_price varchar(10) not null,selling_price varchar(10) not null,stock varchar(10));
Query OK, 0 rows affected (0.09 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| product             |
+---------------------+
2 rows in set (0.00 sec)

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
Query OK, 0 rows affected (0.06 sec)

mysql> use ecommerce;
Database changed
mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_ID | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(10) | NO   |     | NULL    |       |
| address     | varchar(10) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> select * from customer;
Empty set (0.00 sec)

mysql> alter table customer add bill_no int not null;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_ID | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(10) | NO   |     | NULL    |       |
| address     | varchar(10) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
| bill_no     | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table customer add state varchar(20) not null, add country varchar(30) not null;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_ID | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(10) | NO   |     | NULL    |       |
| address     | varchar(10) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
| bill_no     | int         | NO   |     | NULL    |       |
| state       | varchar(20) | NO   |     | NULL    |       |
| country     | varchar(30) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> alter table customer change column name Customer_name varchar(20) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> create table demo(id varchar(20))
    -> ;
Query OK, 0 rows affected (0.09 sec)

mysql> alter table demo modify id varchar(20) not null, add primary key(id);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> drop table demo;
Query OK, 0 rows affected (0.03 sec)

mysql> create table demo(id varchar(20) not null primary key, name varchar(20)not null);
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| product             |
+---------------------+
4 rows in set (0.00 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(20) | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| product             |
+---------------------+
4 rows in set (0.00 sec)

mysql> select * from customer;
Empty set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Customer_ID   | varchar(10) | NO   | PRI | NULL    |       |
| Customer_name | varchar(20) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email_ID      | varchar(10) | NO   |     | NULL    |       |
| address       | varchar(10) | NO   |     | NULL    |       |
| phone_no      | varchar(10) | NO   |     | NULL    |       |
| pin_code      | varchar(10) | YES  |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(20) | NO   |     | NULL    |       |
| country       | varchar(30) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| product             |
+---------------------+
4 rows in set (0.00 sec)

mysql> insert into demo values('101','ali')
    -> ;
Query OK, 1 row affected (0.06 sec)

mysql> select * from demo;
+-----+------+
| id  | name |
+-----+------+
| 101 | ali  |
+-----+------+
1 row in set (0.00 sec)

mysql> insert into demo values('102','ankit');
Query OK, 1 row affected (0.01 sec)

mysql> insert into demo values('103','ajay');
Query OK, 1 row affected (0.01 sec)

mysql> select * from demo;
+-----+-------+
| id  | name  |
+-----+-------+
| 101 | ali   |
| 102 | ankit |
| 103 | ajay  |
+-----+-------+
3 rows in set (0.00 sec)

mysql> truncate table demo;
Query OK, 0 rows affected (0.07 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(20) | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)
