CREATE DATABASE banking_data;
USE banking_data;

CREATE TABLE transactions (
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    account_number BIGINT,
    transaction_date DATE,
    transaction_type VARCHAR(10),
    amount DECIMAL(10,2),
    balance DECIMAL(10,2),
    description VARCHAR(255),
    branch VARCHAR(100),
    transaction_method VARCHAR(50),
    currency VARCHAR(10),
    bank_name VARCHAR(100)
);


SELECT * FROM transactions;

-- 1. Total Number of Customers
SELECT FORMAT(COUNT(DISTINCT customer_id), 0) AS total_customers FROM transactions;


-- 2. Total Transaction Count
SELECT FORMAT(COUNT(*), 0) AS total_transactions FROM transactions;


-- 3. Banks
SELECT DISTINCT bank_name AS Bank FROM transactions;


-- 4. Total Transaction Amount
SELECT CONCAT('₹', FORMAT(SUM(amount), 2)) AS total_transaction_amount FROM transactions;


-- 5. Total Credited Amount
SELECT CONCAT('₹', FORMAT(SUM(amount), 2)) AS total_credited_amount
FROM transactions
WHERE transaction_type = 'Credit';


-- 6. Total Debited Amount
SELECT CONCAT('₹', FORMAT(SUM(amount), 2)) AS total_debited_amount
FROM transactions
WHERE transaction_type = 'Debit';


-- 7. Net Transaction Amount
SELECT 
  CONCAT('₹', FORMAT(SUM(CASE WHEN transaction_type='Credit' THEN amount ELSE -amount END), 2)) AS Net_Transaction
FROM transactions;


-- 8. Average Transaction Value
SELECT CONCAT('₹', FORMAT(AVG(amount), 2)) AS Avg_Transaction_Amount FROM transactions;


-- 9. Top Performing Branches (As Highest Transaction Amount)
SELECT branch, CONCAT('₹', FORMAT(SUM(amount), 2)) AS total_transaction_amount
FROM transactions
GROUP BY branch
ORDER BY total_transaction_amount DESC;


-- 10. Average Account Balance
SELECT CONCAT('₹', FORMAT(AVG(balance), 2)) AS Avg_balance FROM transactions;


-- 11. Average Transaction Amount by Method
SELECT transaction_method, CONCAT('₹', FORMAT(AVG(amount), 2)) AS avg_amount
FROM transactions
GROUP BY transaction_method
ORDER BY avg_amount DESC;