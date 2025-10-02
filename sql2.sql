CREATE TABLE Customer(
    Customer_id varchar(50) PRIMARY KEY,
    FIRST_NAME varchar(50),
    LAST_NAME varchar(50),
    EMAIL varchar(50) NOT NULL UNIQUE,
    DATE date,
    LOCATION varchar(50)
);

CREATE TABLE Orders(
    Order_id varchar(50) PRIMARY KEY,
    Customer_id varchar(50),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    Order_date date,
    Status varchar(50),
);

INSERT INTO customer (Customer_id, FIRST_NAME, LAST_NAME, EMAIL, DATE, LOCATION) VALUES
('0001', 'RAJDEEP', 'KUNDU', 'kundurajdeep2003@gmail.com', '2024-11-23', 'Behala'),
('0002', 'ABHRANIL', 'PODDAR', 'poddarabhra2003@gmail.com', '2023-04-21', 'Baghajatin'),
('0003', 'AVIGYAN', 'ROY', 'royabhigyan2001@gmail.com', '2022-11-27', 'New York'),
('0004', 'AVIDHAN', 'CHAKRABORTY', 'abhic1990@gmail.com', '2023-08-10', 'Kolkata'),
('0005', 'SUPRADEEP', 'ROY', 'supraroydeep2002@gmail.com', '2024-10-03', 'Kolkata'),
('0006', 'ALEX', 'JONES', 'alexjones1980@gmail.com', '2011-11-13', 'New York'),
('0007', 'BOB', 'Diamond', 'diamondb231456@gmail.com', '2002-11-13', 'Paris');

INSERT INTO Orders (Order_id,Customer_id,Order_date,Status) VALUES 
('O001','0001','2024-11-24','Shipped'),
('O002','0001','2023-04-22','Shipped'),
('O003','0003','2022-11-28','Pending'),
('O004','0004','2023-08-11','Pending'),
('O005','0005','2024-10-04','Shipped'),
('O006','0005','2011-11-14','Shipped'),
('O007','0007','2002-11-14','Pending'),
('O008','0002','2023-05-01','Shipped'),
('O009','0003','2022-12-01','Shipped');