## Anomaly Analysis

Insert Anomaly:
If a new product is added but no order exists, it cannot be inserted without NULL values.

Update Anomaly:
If customer city changes (e.g., Mumbai → Pune), it must be updated in multiple rows.

Delete Anomaly:
If the last order of a customer is deleted, all customer information is lost.

## Normalization Justification

Keeping all data in one table creates redundancy and inconsistency. For example, customer details such as city are repeated across multiple rows. If the customer moves to another city, updating all rows is error-prone, leading to update anomalies. Similarly, deleting a single order may remove important customer or product data (delete anomaly).

Normalization eliminates redundancy by separating entities into different tables such as customers, orders, and products. This ensures consistency and improves data integrity. It also reduces storage usage and improves query efficiency. Therefore, normalization is not over-engineering but a necessary step for scalable and reliable database design.