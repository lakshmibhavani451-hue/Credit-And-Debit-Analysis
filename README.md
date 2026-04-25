# 💳 Credit & Debit Transaction Analysis

## 📌 Problem Statement
Banks need better visibility into customer transactions, spending behavior, and performance across branches to improve decision-making and customer experience.

## 🎯 Objective
Analyze credit and debit transaction data to identify trends in transaction volume, customer activity, branch performance, and payment methods.

## 🛠 Tools Used
- SQL (MySQL)
- Power BI
- Tableau
- Excel

## 📊 Key Analysis Performed
- Total transaction volume and amount analysis
- Credit vs Debit transaction comparison
- Transaction trends over time (monthly analysis)
- Branch-wise performance analysis
- Customer segmentation and top customers identification
- Transaction method analysis (Card, Bank Transfer, etc.)

## 🔍 Key Insights
- Debit and Credit transactions are almost equally distributed
- Certain branches contribute significantly higher transaction volumes
- Card payments dominate transaction methods
- Customer activity varies significantly based on balance range
- Seasonal trends observed in transaction volumes

## 📸 Dashboard Preview

### 🔹 Power BI Dashboard
<img width="687" height="382" alt="image" src="https://github.com/user-attachments/assets/de088e9e-7e44-463b-aba7-e9be9355198e" />
<img width="682" height="380" alt="image" src="https://github.com/user-attachments/assets/f25ca2f6-7f9e-4c35-ab0b-be18c316ff3d" />

### 🔹 Tableau Dashboard
<img width="929" height="422" alt="image" src="https://github.com/user-attachments/assets/a4322dc4-6b48-45da-9699-0825de717ee4" />

## 🧠 SQL Analysis

### Total Customers
```sql
SELECT FORMAT(COUNT(DISTINCT customer_id), 0) AS total_customers FROM transactions;
```
### Total Transaction Count
```sql
SELECT FORMAT(COUNT(*), 0) AS total_transactions FROM transactions;
```
### Banks
```sql
SELECT DISTINCT bank_name AS Bank FROM transactions;
```
### Total Transaction Amount
```sql
SELECT CONCAT('₹', FORMAT(SUM(amount), 2)) AS total_transaction_amount FROM transactions;
```
### Total Credited Amount
```sql
SELECT CONCAT('₹', FORMAT(SUM(amount), 2)) AS total_credited_amount
FROM transactions
WHERE transaction_type = 'Credit';
```
### Top Performing Branches (As Highest Transaction Amount)
```sql
SELECT branch, CONCAT('₹', FORMAT(SUM(amount), 2)) AS total_transaction_amount
FROM transactions
GROUP BY branch
ORDER BY total_transaction_amount DESC;
```
### Average Account Balance
```sql
SELECT CONCAT('₹', FORMAT(AVG(balance), 2)) AS Avg_balance FROM transactions;
```
## 📌 Conclusion
This project delivers a comprehensive analysis of credit and debit transactions, providing valuable insights into customer behavior, transaction patterns, and branch performance. The analysis highlights how transaction volumes vary across branches, identifies the most active customers, and reveals the dominance of specific transaction methods such as debit and credit cards.
By integrating SQL for data extraction and KPI creation with Power BI and Tableau for visualization, the project demonstrates an end-to-end data analysis workflow. The dashboards enable stakeholders to monitor key metrics such as total transactions, transaction amounts, customer activity, and growth trends in a clear and interactive manner.
These insights can help banks and financial institutions:
Improve decision-making through data-driven strategies
Optimize branch performance and resource allocation
Enhance customer experience by understanding transaction behavior
Identify growth opportunities and operational inefficiencies
Overall, this project showcases how data analytics can be leveraged to transform raw transaction data into meaningful business insights.


