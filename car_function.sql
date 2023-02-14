create or replace procedure additionalCharge(
	customer INTEGER,
	additionalChargeAmount DECIMAL
) 

language plpgsql
as $$
begin 
	update invoice 
	set total_cost = total_cost + additionalChargeAmount
	where customer_id = customer;
	
	commit;
end;
$$


call additionalcharge(3, 100.00);

select * from invoice where customer_id = 3;

------------------------------------------------------
select *
from customer;

create or replace function add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void
as $ADDITION$
begin 
	insert into customer(customer_id, first_name, last_name)
	values(_customer_id, _first_name, _last_name);
end;
$ADDITION$

language plpgsql; 

select add_customer(6, 'Justin', 'Jacobs');


select *
from invoice

create or replace function add_invoice(_invoice_id INTEGER, _salesperson_id INTEGER, _customer_id INTEGER, _car_id INTEGER, _date_ current_DATE, _total_cost DECIMAL)
returns void
as $INVOICE$
begin 
	insert into customer(customer_id, first_name, last_name)
	values(_customer_id, _first_name, _last_name);
end;
$INVOICE$

language plpgsql; 