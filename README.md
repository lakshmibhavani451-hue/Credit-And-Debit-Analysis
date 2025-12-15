💳 **Credit & Debit Transaction Analysis
    MySQL • Power BI • Tableau**

📌**Project Overview**
This project presents a comprehensive Credit and Debit Transaction Analysis built using MySQL for KPI computation and Power BI & Tableau for interactive dashboard visualization. The objective is to analyze transaction behavior across banks, branches, customers, time periods, and transaction methods to support business and operational decision-making.
The project demonstrates a multi-tool BI workflow, where KPIs are first validated in SQL and then consistently implemented across Power BI and Tableau dashboards.

🛠 **Tools & Technologies**
1.MySQL – Data exploration, aggregation, and KPI creation
2.Power BI – Interactive dashboards, DAX measures, drill-down analysis
3.Tableau – Visual analytics, filters, and executive-level reporting

📂 **Repository Contents**
1.SQL_Queries.sql – MySQL queries used to calculate all KPIs
2.Credit_Debit_Dashboard.pbix – Power BI dashboard file
3.Credit_Debit_Dashboard.twbx – Tableau packaged workbook

📊 **Key KPIs Analyzed**
Total Transactions
Total Credit Amount
Total Debit Amount
Credit to Debit Ratio
Net Transaction Amount
Active Customers
Average Transaction Amount
Account Activity Ratio

📈 **Dashboard Insights**
🔹 **Executive Overview**
Comparison of Credit vs Debit transactions
Net transaction amount by bank
Transaction growth rate by bank
Monthly transaction trend analysis
Transaction distribution by payment method (Debit Card, Credit Card, Bank Transfer)
🔹 **Bank & Branch Performance**
Bank-wise and branch-wise transaction contribution
Top-performing branches by transaction amount
Sankey analysis showing flow from Transaction Type → Bank → Branch
🔹 **Customer Analysis**
Active customers segmented by balance range
Top customers by transaction amount
Account activity ratio to measure engagement

🧮 **Sample MySQL KPIs**
-- **Total Transactions**
SELECT COUNT(*) AS total_transactions FROM transactions;

-- **Total Transaction Amount**
SELECT SUM(amount) AS total_transaction_amount FROM transactions;

-- **Top Performing Branches**
SELECT branch, SUM(amount) AS total_amount
FROM transactions
GROUP BY branch
ORDER BY total_amount DESC;

⚠️ **Challenges & Learnings**
Maintaining KPI consistency across SQL, Power BI, and Tableau
Designing dashboards suitable for both executive and operational users
Optimizing visuals for clarity and performance
Applying business logic to raw transactional data

✅ **Conclusion**
This project showcases strong skills in SQL analytics, BI dashboard development, and financial data storytelling. It reflects real-world banking analytics use cases and is well-suited for Data Analyst / Business Intelligence roles.
