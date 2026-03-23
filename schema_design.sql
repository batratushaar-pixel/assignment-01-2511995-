
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE sales_rep (
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    rep_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_rep(rep_id)
);

CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY(order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES (1,'A','Mumbai'),(2,'B','Delhi'),(3,'C','Mumbai'),(4,'D','Pune'),(5,'E','Mumbai');
INSERT INTO products VALUES (1,'Laptop',50000),(2,'Phone',20000),(3,'Shirt',1500),(4,'Shoes',3000),(5,'Bag',2000);
INSERT INTO sales_rep VALUES (1,'R1'),(2,'R2'),(3,'R3'),(4,'R4'),(5,'R5');
INSERT INTO orders VALUES (1,1,1,'2024-01-01'),(2,2,2,'2024-01-02'),(3,3,1,'2024-01-03'),(4,4,3,'2024-01-04'),(5,5,2,'2024-01-05');
INSERT INTO order_items VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,2);