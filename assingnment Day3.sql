use sprk_morning;

create table customers
(
customerNumber int primary key,
customerName varchar(100) not null,
state varchar(50),
creditlimit decimal(10,2)
);

insert into customers
(customerNumber, customerName,state,creditlimit) 
values
(455, 'Super Scale Inc.', 'CT', 55000.00),
(320, 'Mini Creations Ltd.', 'MA', 55000.00),
(398, 'Tokyo Collection Ltd', 'Tokyo', 95000.00),
(240, 'giftbymail.co.uk', 'Isle of Wight', 75000.00),
(282, 'Souveniers And Things Co.', 'NSW', 65000.00),
(205, 'Toys4GrownUps.com', 'CA', 55000.00),
(202, 'Canadian Gift Exchange Network', 'BC', 100000.00),
(260, 'Royal Canadian Collectables,', 'BC', 75000.00),
(462, 'FunGiftdeas.com', 'MA', 75000.00),
(495, 'Diecast collectables', 'MA', 85000.00),
(161, 'technics Store Inc', 'CA', 55000.00),
(175, 'Gift Deport Inc', 'CT', 65000.00),
(177, 'Osaka Souveniers Co.', 'Osaka', 75000.00),
(399, 'Classic Gift Ideas, Inc', 'PA', 100000.00);

select 
customerNumber,
customerName,
State,
creditlimit
from
customers
where
state is not null
and createlimit between 500000 and 100000
order by
creditlimit desc;


