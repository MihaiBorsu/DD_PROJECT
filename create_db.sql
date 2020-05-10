create table Client (
    ID int NOT NULL PRIMARY KEY,
    Name varchar(255),
    Delivery_address varchar(255),
    Phone_number int
);

create table Product (
    ID int NOT NULL PRIMARY KEY,
    Product_name varchar(255),
    Product_weight float(5), -- in kg -- I added this field so I can compute the delivery fee
    Delivery_fee AS (Product_weight * 10), -- 10 RON / kg
    Price float(5),
    Quantity int
);

create table Orders (
    ID int NOT NULL PRIMARY KEY,
    Client_ID int, 
    Product_ID int,
    Product_name varchar(255),
    Order_date date,
    Price float(5),
    Delivery_fee float(5),
    Total_cost AS (Price + Delivery_fee),
    FOREIGN KEY (Client_ID) REFERENCES Client(ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(ID)
);

INSERT INTO Client VALUES (1,'client1','address1',0700000001);
INSERT INTO Client VALUES (2,'client2','address2',0700000002);
INSERT INTO Client VALUES (3,'client3','address3',0700000003);
INSERT INTO Client VALUES (4,'client4','address4',0700000004);
INSERT INTO Client VALUES (5,'client5','address5',0700000005);
INSERT INTO Client VALUES (6,'client6','address6',0700000006);
INSERT INTO Client VALUES (7,'client7','address7',0700000007);
INSERT INTO Client VALUES (8,'client8','address8',0700000008);
INSERT INTO Client VALUES (9,'client9','address9',0700000009);
INSERT INTO Client VALUES (10,'client10','address10',0700000010);

INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (1,'product_name1',0.1,3.5,6);
INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (2,'product_name2',0.2,3.5,7);
INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (3,'product_name3',0.3,3.5,8);
INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (4,'product_name4',0.4,3.5,9);
INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (5,'product_name5',0.5,3.5,10);
INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (6,'product_name6',0.6,3.5,11);
INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (7,'product_name7',0.7,3.5,12);
INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (8,'product_name8',0.8,3.5,13);
INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (9,'product_name9',0.9,3.5,14);
INSERT INTO Product (ID,Product_name,Product_weight,Price,Quantity) VALUES (10,'product_name10',1.1,3.5,15);
