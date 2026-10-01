CREATE DATABASE website;
use website;

create table ankith (
    customer_id int primary key,
    customer_name varchar(20),
    city varchar(100),
    email varchar(100),
    phone_no varchar(15)
);

INSERT INTO ankith 
(customer_id, customer_name, city, email, phone_no)
VALUES
(1, 'Ankith', 'Bengaluru', 'ankith@gmail.com', '9876543210'),
(2, 'Rahul', 'Mysuru', 'rahul@gmail.com', '9876543211'),
(3, 'Kiran', 'Mangaluru', 'kiran@gmail.com', '9876543212'),
(4, 'Ravi', 'Hubballi', 'ravi@gmail.com', '9876543213'),
(5, 'Arjun', 'Belagavi', 'arjun@gmail.com', '9876543214'),
(6, 'Vijay', 'Bengaluru', 'vijay@gmail.com', '9876543215'),
(7, 'Suresh', 'Tumakuru', 'suresh@gmail.com', '9876543216'),
(8, 'Manoj', 'Shivamogga', 'manoj@gmail.com', '9876543217'),
(9, 'Karthik', 'Davangere', 'karthik@gmail.com', '9876543218'),
(10, 'Rohan', 'Udupi', 'rohan@gmail.com', '9876543219'),
(11, 'Naveen', 'Hassan', 'naveen@gmail.com', '9876543220'),
(12, 'Prakash', 'Mandya', 'prakash@gmail.com', '9876543221'),
(13, 'Deepak', 'Chikkamagaluru', 'deepak@gmail.com', '9876543222'),
(14, 'Ajay', 'Kolar', 'ajay@gmail.com', '9876543223'),
(15, 'Vishal', 'Bengaluru', 'vishal@gmail.com', '9876543224');

select DISTINCT customer_name from ankith;

select * from ankith 
where city = "Bengaluru";

select * from ankith 
where city = "Kolar";

select * from ankith 
where city in ('Bengaluru','Hassan','Kolar');

select * from ankith 
where city = 'Bengaluru' or city = 'Kolor';

select * from ankith 
where city = 'Shivamogga' and city = 'Tumakuru';

select * from ankith
where customer_id between 9 and 10;

select * from ankith 
where customer_name like "A%";

select count(*) from ankith;

select count(*) from ankith 
where city = 'Bengaluru';

create table product (
    product_id int,
    product_name varchar(30),
    catagory varchar(100),
    stock int,
    price decimal(20,2)
);

INSERT INTO product
(product_id, product_name, catagory, stock, price)
VALUES
(1, 'Laptop', 'Electronics', 25, 55000.0),
(2, 'Smartphone', 'Electronics', 40, 25000.0),
(3, 'Headphones', 'Accessories', 60, 2500.0),
(4, 'Keyboard', 'Accessories', 35, 1800.0),
(5, 'Mouse', 'Accessories', 50, 900.0),
(6, 'Monitor', 'Electronics', 20, 15000.0),
(7, 'Printer', 'Electronics', 15, 12000.0),
(8, 'Tablet', 'Electronics', 30, 22000.0),
(9, 'USB Cable', 'Accessories', 100, 450.0),
(10, 'Power Bank', 'Accessories', 45, 1800.0),
(11, 'Smart Watch', 'Wearables', 25, 7500.0),
(12, 'Webcam', 'Electronics', 18, 3500.0),
(13, 'Speaker', 'Audio', 32, 4200.0),
(14, 'External SSD', 'Storage', 22, 8500.0),
(15, 'Router', 'Networking', 28, 3200.0);

select stock from product;

select * from product 
where catagory = 'Electronics';

select * from product 
where stock < 25;

select * from product 
where stock > 50;

select * from product 
where catagory = 'Accessories';

select * from product 
order by stock desc;

select * from product
order by price desc;

select count(*) from product;

select sum(price) from product;

select * from product
order by stock asc;

select * from product 
order by price desc 
limit 3;

select * from product 
order by stock desc
limit 5;

select * from product 
order by price desc ;

select max(price) from product;

select min(stock) from product;


create table orders (
    order_id int primary key,
    customer_id int,
    order_status varchar(100),
    foreign key(customer_id) references ankith(customer_id)
);

alter table orders
add column order_date date;

select * from orders;

INSERT INTO orders
(order_id, customer_id, order_status, order_date)
VALUES
(101, 1, 'Delivered', '2026-09-01'),
(202, 2, 'Shipped', '2026-09-02'),
(303, 3, 'Processing', '2026-09-03'),
(404, 4, 'Delivered', '2026-09-04'),
(505, 5, 'Cancelled', '2026-09-05'),
(606, 6, 'Processing', '2026-09-06'),
(707, 7, 'Delivered', '2026-09-07'),
(808, 8, 'Shipped', '2026-09-08'),
(909, 9, 'Delivered', '2026-09-09'),
(110, 10, 'Processing', '2026-09-10'),
(211, 11, 'Delivered', '2026-09-11'),
(312, 12, 'Cancelled', '2026-09-12'),
(413, 13, 'Shipped', '2026-09-13'),
(514, 14, 'Delivered', '2026-09-14'),
(615, 15, 'Shipped', '2026-09-15');

select * from orders;

create table order_items (
    order_item_id int primary key,
    order_id int,
    product_id int,
    qantity int,
    foreign key(order_id) references orders(order_id),
    foreign key(product_id) references product(product_id)
);

alter table product add primary key(product_id);

INSERT INTO order_items
(order_item_id, order_id, product_id, qantity)
VALUES
(1001, 101, 1, 2),
(1002, 202, 3, 1),
(1003, 303, 5, 3),
(1004, 404, 2, 1),
(1005, 505, 8, 2),
(1006, 606, 10, 4),
(1007, 707, 6, 1),
(1008, 909, 12, 2);

select * from order_items;

create table payment(
    payment_id int primary key,
    order_id int,
    payment_method varchar(100),
    payment_amount decimal(10,2),
    payment_status varchar(50),
    foreign key(order_id) references orders(order_id)
);

INSERT INTO payment
(payment_id, order_id, payment_method, payment_amount, payment_status)
VALUES
(501, 101, 'UPI', 110000.00, 'Completed'),
(502, 202, 'Credit Card', 2500.00, 'Completed'),
(503, 303, 'Cash', 2700.00, 'Completed'),
(504, 404, 'Debit Card', 25000.00, 'Completed'),
(505, 505, 'UPI', 44000.00, 'Failed'),
(506, 606, 'Net Banking', 7200.00, 'Completed'),
(507, 707, 'Credit Card', 15000.00, 'Completed'),
(508, 808, 'UPI', 7000.00, 'Completed'),
(509, 211, 'Debit Card', 55000.00, 'Completed'),
(510, 615, 'UPI', 4200.00, 'Completed');

select * from payment;

select * from ankith c
join orders o on c.customer_id = o.customer_id;

SELECT
c.customer_id,
o.order_id,
o.order_date,
o.order_status
from ankith c
join orders o
on c.customer_id = o.customer_id;