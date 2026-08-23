# 🏢 Insurance Management System – SQL Database Project

## 📌 Project Overview

The **Insurance Management System** is a relational database project developed using **Microsoft SQL Server**.

The project is designed to manage the complete insurance business process, starting from customer registration and policy creation to premium payments, renewals, underwriting, claims, claim assessments, and claim payments.

The database contains **25 interconnected tables** using Primary Keys and Foreign Keys to maintain data relationships and integrity.

This project demonstrates practical SQL concepts such as:

- Database Design
- Relational Tables
- Primary Keys
- Foreign Keys
- Constraints
- INNER JOIN
- LEFT JOIN
- Multiple Table JOINs
- GROUP BY
- Aggregate Functions
- Subqueries
- Views
- Stored Procedures
- Transactions
- Data Analysis Queries

---

# 🎯 Project Objectives

The main objectives of this project are:

1. Manage customer information.
2. Manage insurance agents and employees.
3. Store insurance products and policy types.
4. Create and manage insurance policies.
5. Track policy holders and nominees.
6. Manage premium plans and premium payments.
7. Track policy renewals.
8. Manage insurance claims.
9. Store claim documents.
10. Assess and process claims.
11. Record claim payments.
12. Manage medical examinations.
13. Perform policy underwriting and risk assessment.
14. Maintain beneficiaries.
15. Track policy status changes.

---

# 🗄️ Database Structure

The project contains **25 tables**.

| No. | Table Name | Purpose |
|---:|---|---|
| 1 | Branches | Stores insurance company branch details |
| 2 | Agents | Stores insurance agent information |
| 3 | Employees | Stores company employee information |
| 4 | Customers | Stores customer information |
| 5 | Customer_Addresses | Stores customer addresses |
| 6 | Customer_Contacts | Stores customer contact details |
| 7 | Nominees | Stores nominee information |
| 8 | Insurance_Products | Stores insurance products |
| 9 | Policy_Types | Stores different policy types |
| 10 | Policies | Stores insurance policy information |
| 11 | Policy_Holders | Stores policy ownership information |
| 12 | Policy_Nominees | Connects policies with nominees |
| 13 | Payment_Methods | Stores available payment methods |
| 14 | Premium_Plans | Stores premium payment plans |
| 15 | Premium_Payments | Stores premium payment transactions |
| 16 | Policy_Renewals | Stores policy renewal history |
| 17 | Claim_Types | Stores different claim types |
| 18 | Claims | Stores insurance claims |
| 19 | Claim_Documents | Stores claim document information |
| 20 | Claim_Assessments | Stores claim assessment details |
| 21 | Claim_Payments | Stores claim payment transactions |
| 22 | Medical_Examinations | Stores medical examination details |
| 23 | Underwriting | Stores policy risk assessment |
| 24 | Beneficiaries | Stores beneficiary information |
| 25 | Policy_Status_History | Stores policy status changes |

---

# 🔗 Main Database Relationships

The major relationships in the database are:

```text
Customers
    │
    ├── Customer_Addresses
    │
    ├── Customer_Contacts
    │
    ├── Nominees
    │
    └── Policies
            │
            ├── Agents
            ├── Branches
            ├── Insurance_Products
            ├── Policy_Types
            ├── Policy_Holders
            ├── Policy_Nominees
            ├── Premium_Plans
            ├── Premium_Payments
            ├── Policy_Renewals
            ├── Medical_Examinations
            ├── Underwriting
            ├── Beneficiaries
            ├── Policy_Status_History
            │
            └── Claims
                    │
                    ├── Claim_Types
                    ├── Claim_Documents
                    ├── Claim_Assessments
                    └── Claim_Payments
