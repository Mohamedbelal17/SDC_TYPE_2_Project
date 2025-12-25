📊 SSIS Data Warehouse – SCD Type 2 (Kimball Methodology)
📌 Overview

This project implements a Data Warehouse using Microsoft SSIS following the Kimball dimensional modeling approach.
It focuses on Slowly Changing Dimension (SCD) Type 2 to track historical changes while preserving data accuracy in the fact table.

The solution uses staging tables, lookups, and conditional logic to manage dimension history and load conformed facts.

🏗️ Architecture (Kimball Approach)

Staging Layer – Raw data preparation and change detection

Dimension Layer – SCD Type 2 dimensions with surrogate keys

Fact Layer – Transactional facts linked to dimensions

Key Kimball principles applied:

Star schema design

Surrogate keys

Historical tracking with SCD Type 2

Conformed dimensions

🧱 Dimensions
📦 Product Dimension (SCD Type 2)

Tracks product attribute changes over time.

Lookup existing records

Conditional Split (new vs changed)

Expire old rows (end date)

Insert new version with new surrogate key

👤 Customer Dimension (SCD Type 2)

Manages customer history such as address or profile changes.

Staging-based change detection

Start/End date handling

Current row flag

📅 Date Dimension

Standard Kimball date dimension populated from a generated date source.

📈 Fact Table Load

Fact data is loaded after resolving surrogate keys via dimension lookups.

Product lookup

Customer lookup

Date lookup

Clean insert into fact table

This ensures referential integrity in the star schema.

🛠️ Technologies

SQL Server

SSIS

T-SQL

Kimball Methodology

SCD Type 2

🚀 Execution Order

Date Dimension

Product Dimension

Customer Dimension

Fact Load

📂 Repository Structure
├── SSIS_Packages/
├── SQL_Scripts/
├── images/
└── README.md

✅ Highlights

Kimball-style dimensional modeling

Full SCD Type 2 history tracking

Production-ready SSIS design

Clear separation of staging, dimensions, and facts
