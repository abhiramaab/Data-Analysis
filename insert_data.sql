
-- Insert Customers (using sample from CSV)
INSERT INTO customers (customer_id, customer_unique_id, customer_zip_code_prefix, customer_city, customer_state) VALUES
('06b8999e2fba1a1fbc88172c00ba8bc7', '861eff4711a542e4b93843c6dd7febb0', 14409, 'franca', 'SP'),
('18955e83d337fd6b2def6b18a428ac77', '290c77bc529b7ac935b93aa66c333dc3', 9790, 'sao bernardo do campo', 'SP'),
('4e7b3e00288586ebd08712fdd0374a03', '060e732b5b29e8181a18229c7b0b2b5e', 1151, 'sao paulo', 'SP');

-- Insert Orders
INSERT INTO orders (order_id, customer_id, order_date, order_status) VALUES
('order_1', '06b8999e2fba1a1fbc88172c00ba8bc7', '2024-01-15', 'delivered'),
('order_2', '18955e83d337fd6b2def6b18a428ac77', '2024-02-10', 'shipped'),
('order_3', '4e7b3e00288586ebd08712fdd0374a03', '2024-03-05', 'delivered');

-- Insert Products
INSERT INTO products (product_id, order_id, product_category, price) VALUES
('product_1', 'order_1', 'electronics', 299.99),
('product_2', 'order_2', 'home appliances', 459.50),
('product_3', 'order_3', 'books', 29.90);
