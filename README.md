# SSIS Data Warehouse – SCD Type 2 (Kimball Methodology)

## Overview
This project is a **SQL Server Integration Services (SSIS)** data warehouse implementation using the **Kimball dimensional modeling methodology**.  
It demonstrates the use of **Slowly Changing Dimension (SCD) Type 2** to track historical changes in dimension data.

The solution follows a structured ETL approach using **staging tables**, **lookups**, and **conditional splits** before loading data into dimension and fact tables.

---

## Architecture
The ETL design follows the Kimball approach:

- **Staging Layer** – prepares source data and detects changes  
- **Dimension Layer** – SCD Type 2 dimensions with surrogate keys  
- **Fact Layer** – transactional fact table linked to dimensions  

**Kimball principles applied:**
- Star schema
- Surrogate keys
- Conformed dimensions
- Historical tracking (SCD Type 2)

---

## Dimensions

### Product Dimension (SCD Type 2)
Handles product attribute changes over time.

**Process:**
- Load source data into staging
- Lookup existing product records
- Use Conditional Split to detect changes
- Expire old records using end date
- Insert new records with new surrogate keys

![Product SCD Flow](https://github.com/Mohamedbelal17/SDC_TYPE_2_Project/blob/main/blogs/Capture11.PNG)

---

### Customer Dimension (SCD Type 2)
Tracks historical changes in customer data.

**Process:**
- Stage customer data
- Lookup current customer records
- Update end date for changed rows
- Insert new customer versions

![Customer SCD Flow](https://github.com/Mohamedbelal17/SDC_TYPE_2_Project/blob/main/blogs/Capture22.PNG)

---

### Date Dimension
Standard Kimball date dimension generated from a date source.

Includes day, month, year, and other date-related attributes.

![Date Dimension Flow](images/26615c57-2c78-4056-9cc2-87910cd47149.png)

---

## Fact Table
The fact table is loaded after resolving **surrogate keys** from all dimensions.

**Process:**
- Load transactional source data
- Lookup Product, Customer, and Date dimensions
- Insert records into the fact table using surrogate keys

This ensures proper relationships within the star schema.

---

## Technologies Used
- SQL Server  
- SQL Server Integration Services (SSIS)  
- T-SQL  
- Kimball Methodology  
- Slowly Changing Dimension (SCD) Type 2  

---

## Package Execution Order
1. Date Dimension  
2. Product Dimension  
3. Customer Dimension  
4. Fact Table Load  

---

## Repository Structure
