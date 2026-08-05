/*insert product values*/

USE EnterpriseDB;

INSERT INTO Products
(product_name, brand, category, price, stock_quantity, rating)
VALUES
('iPhone 16', 'Apple', 'Mobile', 79999.00, 25, 4.8),
('iPhone 15', 'Apple', 'Mobile', 69999.00, 18, 4.7),
('Galaxy S25', 'Samsung', 'Mobile', 74999.00, 20, 4.6),
('Galaxy A56', 'Samsung', 'Mobile', 32999.00, 35, 4.4),
('OnePlus 13', 'OnePlus', 'Mobile', 64999.00, 22, 4.5),

('HP Victus', 'HP', 'Laptop', 68999.00, 15, 4.6),
('Dell Inspiron 15', 'Dell', 'Laptop', 55999.00, 12, 4.4),
('Lenovo IdeaPad', 'Lenovo', 'Laptop', 48999.00, 10, 4.3),
('MacBook Air M4', 'Apple', 'Laptop', 114999.00, 8, 4.9),
('ASUS TUF Gaming', 'ASUS', 'Laptop', 78999.00, 9, 4.7),

('Boat Airdopes 311', 'Boat', 'Earbuds', 1499.00, 60, 4.2),
('Sony WF-C700N', 'Sony', 'Earbuds', 7999.00, 18, 4.6),
('Samsung Buds 3', 'Samsung', 'Earbuds', 9999.00, 20, 4.5),
('Realme Buds Air 7', 'Realme', 'Earbuds', 3499.00, 30, 4.3),
('JBL Tune Beam', 'JBL', 'Earbuds', 5999.00, 16, 4.4),

('Apple Watch SE', 'Apple', 'Smart Watch', 29999.00, 12, 4.8),
('Galaxy Watch 7', 'Samsung', 'Smart Watch', 26999.00, 10, 4.6),
('Noise ColorFit Pro', 'Noise', 'Smart Watch', 3999.00, 40, 4.2),
('Fire-Boltt Ninja', 'Fire-Boltt', 'Smart Watch', 2499.00, 45, 4.1),
('Fastrack Reflex', 'Fastrack', 'Smart Watch', 2999.00, 32, 4.0),

('Logitech M331', 'Logitech', 'Mouse', 1299.00, 50, 4.5),
('HP Wireless Mouse', 'HP', 'Mouse', 899.00, 42, 4.3),
('Dell Keyboard', 'Dell', 'Keyboard', 1499.00, 28, 4.2),
('Zebronics Zeb-Transformer', 'Zebronics', 'Keyboard', 2499.00, 24, 4.4),
('Canon PIXMA G3770', 'Canon', 'Printer', 15999.00, 6, 4.5);