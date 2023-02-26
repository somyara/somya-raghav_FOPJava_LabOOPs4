# Q4) Display all the orders along with product name ordered 
# by a customer having Customer_Id=2

select `order`.*, product.pro_name, customer.cus_name from `order`, supplier_pricing, product, customer
where 
	`order`.pricing_id = supplier_pricing.pricing_id and
    supplier_pricing.pro_id  = product.pro_id and
    `order`.cus_id = customer.cus_id and 
    customer.cus_id = 2;


-- Another version

select c.cus_name, p.pro_name, o.ord_id, o.ord_date, o.ord_amount from customer as c, product p, supplier_pricing as sp, 
`order` as o 
where c.cus_id = '2'
and c.cus_id = o.cus_id
and p.pro_id = sp.pro_id
and o.pricing_id = sp.pricing_id;