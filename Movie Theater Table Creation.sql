create table Customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(200)
);

create table order_(
	order_id SERIAL primary key,
	customer_id INTEGER not null,
	total_cost NUMERIC(8,2),
	foreign key(customer_id) references Customer(customer_id)
);

create table Tickets(
	ticket_num SERIAL primary key,
	sub_total_t numeric(8,2),
	theater_num INTEGER not null,
	movie_id INTEGER not null,
	order_id INTEGER not null,
	foreign key(theater_num) references Theater(theater_num),
	foreign key(movie_id) references Movies(movie_id),
	foreign key(order_id) references order_(order_id)
);

create table Movies(
	movie_id SERIAL primary key,
	movie_title VARCHAR(200)
);

create table Theater(
	theater_num SERIAL primary key,
	movie_time TIME,
	movie_id INTEGER not null,
	foreign KEY(movie_id) references Movies(movie_id)
);


create table Concession(
	consession_id SERIAL primary key,
	product_name VARCHAR(200),
	amount NUMERIC(5,2),
	sub_total_c NUMERIC(5,2),
	order_id INTEGER not null,
	foreign key(order_id) references order_(order_id)
);



