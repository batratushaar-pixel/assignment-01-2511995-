## ETL Decisions

### Decision 1 — Date Standardization
Problem: The dataset contained inconsistent date formats such as DD-MM-YYYY and MM/DD/YYYY, which would cause errors during aggregation.
Resolution: All dates were converted into a standard YYYY-MM-DD format to ensure consistency and proper time-based analysis.

### Decision 2 — Handling Missing Values
Problem: Some records had NULL or missing values in key fields such as revenue or category.
Resolution: Missing numerical values were replaced with 0 where appropriate, and rows with critical missing identifiers were removed to maintain data integrity.

### Decision 3 — Category Normalization
Problem: Product categories had inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS".
Resolution: All category values were converted to uppercase to ensure uniform grouping and accurate aggregation in analytical queries.