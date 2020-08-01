use truyum;

create table menu_items(
    id int NOT NULL Primary key ,
    Name varchar(180) DEFAULT NULL,
    Price decimal(8,2)DEFAULT NULL ,
	Active varchar(3) DEFAULT NULL,
	date_of_Launch date DEFAULT NULL,
	Category varchar(45) DEFAULT NULL,
	Free_Delivery varchar(3) DEFAULT NULL,
	Actions varchar(4) DEFAULT NULL
);

create table customer(
    cust_id int not null Primary key,
	cust_name varchar(50)

);




create table cart(
    cart_id INT, 
    productId INT,
    customerId INT,
    FOREIGN KEY(productId) references menu_items(id),
     FOREIGN KEY(customerId) references customer(cust_id));



insert into menu_items values(1, 'Sandwich', 99.00, 'Yes', '2017-03-15', 'Main Course', 'Yes','Edit');
insert into menu_items values(2, 'Burger', 129.00, 'Yes', '2017-12-23', 'Main Course', 'No','Edit');
insert into menu_items values(3, 'Pizza', 149.00, 'Yes', '2017-08-21', 'Main Course', 'No','Edit');
insert into menu_items values(4, 'French Fries', 57.00, 'No', '2017-07-02', 'Starters', 'Yes','Edit');
insert into menu_items values(5, 'Chocolate Brownie', 32.00, 'Yes', '2022-11-02', 'Dessert', 'Yes','Edit');


select*from menu_items;

insert into customer(cust_name,cust_id) values('jhon','1'),('kate','2');

select*from customer;



select * from menu_items
where Active='Yes' AND Date_of_Launch >= '2017-03-15';


update menu_items
set Name ='Eggpuff',Price='90.00',Active='Yes',Date_of_Launch='2017-10-30',Category='snack',Free_Delivery='No'
where id=1;

select* from cart;
insert into cart values ('1','3','1'),('1','2','1'),('1','1','1');


select Name,Free_Delivery,Price from menu_items join cart on productId=id where customerId = '1'


select Name,Free_Delivery,Price, sum(Price) as 'Total Price' from menu_items join cart on productId=id where customerId = '1' GROUP BY Name,Free_Delivery,Price


DELETE FROM cart WHERE customerId ='1' and productId='3'





