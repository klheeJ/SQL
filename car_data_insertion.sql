insert into salesperson(
	salesperson_ID
) values(
	1
),
(
	2
),
(
	3
),
(
	4
),
(
	5
);



insert into customer (
	customer_ID,
	first_name,
	last_name
) values(
	1,
	'Allen',
	'Richter'
),
(
	2,
	'Green',
	'Day'
),
(
	3,
	'Susie',
	'Smith'
),
(
	4,
	'Klhee',
	'Jacobs'
),
(
	5,
	'Mister',
	'Brown'
);



insert into cars(
	car_ID,
	make,
	model,
	year_ 
) values (
	1,
	'Honda',
	'Accord',
	1986
),(
	2,
	'Jeep',
	'Wrangler',
	2011
), (
	3,
	'Toyota',
	'Car',
	2020
), (
	4,
	'Hyundai',
	'Tucson',
	1936
);



insert into service_ticket(
	service_ID,
	customer_ID,
	car_ID
) values (
	1,
	1,
	3
), (
	2,
	2,
	4
), (
	3,
	3,
	2
);


insert into invoice(
	invoice_ID,
	salesperson_id,
	customer_id,
	car_id,
	date_,
	total_cost 
) values (
	1,
	1,
	1,
	1,
	CURRENT_DATE,
	1239.87
),
(
	2,
	1,
	3,
	4,
	current_DATE,
	54.34
),
(
	3,
	2,
	2,
	2,
	CURRENT_DATE,
	4535.12
),
(
	4,
	4,
	2,
	3,
	CURRENT_DATE,
	23.88
);


insert into service_history (
	service_ID,
	car_ID
) values(
	1,
	2
),
(
	2,
	3
),
(
	3,
	4
);


insert into parts(
	service_ID,
	item_name,
	item_ID,
	car_ID
) values(
	1,
	'carburetor',
	1,
	2
),
(
	2,
	'engine',
	2,
	2
), (
	3,
	'wheels',
	3,
	2
);


insert into mechanic(
	mechanic_ID,
	service_id 
) values(
	1,
	3
),
(
	2,
	2
);

