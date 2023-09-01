CREATE TABLE customers (
  customer_id SERIAL,
  name VARCHAR,
  phone number INT,
  PRIMARY KEY (customer_id)
);

CREATE TABLE concessions_items (
  concessions_item_id SERIAL,
  items_id SERIAL,
  concessions_id SERIAL,
  PRIMARY KEY (concessions_item_id),
	FOREIGN KEY (items_id)
		REFERENCES items(items_id),
	FOREIGN KEY (concessions_id)
		REFERENCES concessions(concessions_id)
	
);

CREATE TABLE concessions (
  concessions_id SERIAL,
  customer_id SERIAL,
  C_Order VARCHAR,
  C_cost INT,
  C_TIME TIME,
	C_DATE DATE,
  PRIMARY KEY (concessions_id),
    FOREIGN KEY (customer_id)
      REFERENCES customers(customer_id)
);

CREATE TABLE movies (
  movies_id SERIAL,
  film_type VARCHAR,
  title VARCHAR,
  genre VARCHAR,
  M_rating VARCHAR,
  M_TIME time,
	M_DATE date,
  PRIMARY KEY (movies_id)
);


CREATE TABLE tickets (
  tickets_id SERIAL,
  customer_id SERIAL,
  movies_id SERIAL,
  T_TIME TIME,
  T_COST INT,
	T_DATE DATE,
  PRIMARY KEY (tickets_id),
    FOREIGN KEY (customer_id)
      REFERENCES customers(customer_id),
    FOREIGN KEY (movies_id)
      REFERENCES movies(movies_id)
);

CREATE TABLE items (
  items_id SERIAL,
  name VARCHAR,
  I_cost INT,
  I_Quantity INT,
  PRIMARY KEY (items_id)
   
);


DROP TABLE movies