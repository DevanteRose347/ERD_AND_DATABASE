--Inserting data into tables
--INSERT INTO <table name> (
--columns that we are inserting into
--)
--VALUES (
--data to be inserted to the columns
--)
INSERT INTO customers(
--SERAIL data types dont require insertion
	c_name,
	phone_number
)VALUES(
	'Devante Rose',
	'954-852-8209'
);

SELECT *
FROM customers;

INSERT INTO movies(
	film_type,
	title,
	genre,
	M_rating,
	M_TIME,
	M_DATE
)VALUES(
	'3D',
	'THE LIFE OF DEVANTE',
	'AMAZMENT',
	'M',
	'6:07',
	'2023-06-07'
);

SELECT *
FROM movies;

INSERT INTO items(
	name,
	I_cost,
	I_Quantity
)VALUES(
	'snickers',
	140.00,
	10
);

SELECT *
FROM items;

INSERT INTO concessions(
	C_Order,
	C_cost,
	C_TIME,
	C_DATE
)VALUES(
	'Snickers',
	140.00,
	'7:17',
	'2023-04-07'
);

SELECT *
FROM concessions;


INSERT INTO tickets(
	T_TIME,
	T_COST,
	T_DATE
)VALUES(
	'7:17',
	1600,
	'2023-04-07'
);

SELECT *
FROM tickets;
