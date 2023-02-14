create table salesperson(
	salesperson_ID SERIAL primary key
);

create table cars(
	Car_ID SERIAL primary key,
	Make VARCHAR(200),
	Model VARCHAR(200),
	Year_ NUMERIC(4)
);

create table customer(
	customer_ID SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);

create table invoice(
	invoice_ID SERIAL primary key,
	salesperson_ID INTEGER not null,
	customer_ID INTEGER not null,
	car_ID INTEGER not null,
	date_ DATE,
	total_cost NUMERIC(8,2),
	foreign key(salesperson_ID) references salesperson(salesperson_ID),
	foreign key(customer_ID) references customer(customer_ID),
	foreign key(car_ID) references cars(car_ID)
);

create table service_ticket(
	service_ID SERIAL primary key,
	customer_ID INTEGER not null,
	car_ID INTEGER not null,
	foreign key(customer_ID) references customer(customer_ID),
	foreign key(car_ID) references cars(car_ID)
);

create table mechanic(
	mechanic_ID SERIAL primary key,
	service_ID INTEGER not null,
	foreign key(service_ID) references service_ticket(service_ID)
);

create table parts(
	service_ID INTEGER not null,
	item_name VARCHAR(300),
	item_ID SERIAL primary key, 
	car_ID INTEGER not null,
	foreign key(car_ID) references cars(car_ID)	
);

create table service_history(
	service_ID INTEGER not null,
	car_ID INTEGER not null,
	foreign key(service_ID) references service_ticket(service_ID),
	foreign key(car_ID) references cars(car_ID)
);



