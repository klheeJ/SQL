insert into Customer(
	customer_id,
	first_name,
	last_name,
	billing_info
) values
(
	3,
	'George',
	'Phtevens',
	'4242-2424-4242-4242 555 01/20'
),
(
	2,
	'Sarah',
	'Blara',
	'4242-2424-4242-4242 555 01/22'
);

insert into order_(
	order_id,
	customer_id,
	total_cost
)values(
	3,
	2,
	'23.00'
),
(
	2,
	3,
	'35.00'
);

insert into Movies(
	movie_id,
	movie_title
) values (
	20,
	'Lonestar in the Wind'
),
(
	21,
	'Hotwheels Takes Over Town'
),
(
	22,
	'Cats Around The World'
);

insert into Theater(
	theater_num,
	movie_time,
	movie_id
) values(
	'1',
	'19:30:00',
	20
),
(
	'2',
	'14:30:00',
	21
),
(
	'3',
	'14:00:00',
	22
);

insert into Tickets(
	ticket_num,
	sub_total_t,
	theater_num,
	movie_id,
	order_id 
) values(
	1, 
	38.25,
	1,
	21,
	2
);

insert into Concession(
	consession_id,
	product_name,
	amount,
	sub_total_c,
	order_id 
) values(
	23,
	'kitkat',
	34.32,
	36.15,
	2
);

select *
from concession












