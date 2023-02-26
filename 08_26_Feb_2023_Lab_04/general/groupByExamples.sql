select * from `order`;

select * from `order` group by pricing_id;

select * from `order` group by cus_id;

-- total order amount for each customer
select sum(ord_amount), cus_id from `order` group by cus_id;

-- max order amount for each customer
select max(ord_amount), cus_id from `order` group by cus_id;

-- max order amount for each customer
select avg(ord_amount), cus_id from `order` group by cus_id;

-- no of orders for each customer 
select count(*), cus_id from `order` group by cus_id;