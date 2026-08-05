#  Security Support Information System (SSIS)

A Business Intelligence and Decision Support System developed to demonstrate how data analytics can improve operational visibility and decision-making within the private security industry.

---

# Project Overview

Private security companies generate large amounts of operational data every day, including employee records, incident reports, attendance logs, contracts, client information, and site details. In many organizations, this information is managed across multiple spreadsheets and disconnected systems, making it difficult for managers to monitor performance and make informed decisions.

The Security Support Information System (SSIS) was developed to address this challenge by integrating operational data into a centralized Business Intelligence platform. Using Python, SQL, and Power BI, the project transforms raw datasets into interactive dashboards that provide meaningful insights into workforce management, security operations, and commercial performance.

---

# Business Problem

Managers in private security organizations need quick access to accurate operational information. However, fragmented data often makes it difficult to answer important business questions such as:

- How many employees are currently active?
- Which sites experience the highest number of incidents?
- Which clients contribute the highest contract value?
- What is the current attendance performance?
- Which contracts are active, expired, or nearing renewal?
- How are security operations performing over time?

SSIS was developed to provide a single source of truth that supports evidence-based decision-making through interactive business intelligence dashboards.

---

# Project Workflow

The project followed a complete end-to-end data analytics workflow.

### 1. Data Collection

The project began with three operational datasets obtained from Kaggle.

- [`employee_df.csv`](employee_df.csv)
- [`incident_df.csv`](incident_df.csv)
- [`site_df.csv`](site_df.csv)

These datasets served as the foundation for the system.

### 2. Data Cleaning & Transformation

Using Python and Pandas, the raw datasets were cleaned, transformed, and normalized into a relational structure.

The notebook:

[`SSIS.ipynb`](SSIS.ipynb)

was used to:

- Clean inconsistent data
- Handle missing values
- Transform data types
- Create relationships between entities
- Generate the final business tables

The processed datasets include:

- [`employee.csv`](employee.csv)
- [`attendance.csv`](attendance.csv)
- [`employee assignment.csv`](employee_assignment.csv)
- [`incident.csv`](incident.csv)
- [`contract.csv`](contract.csv)
- [`client.csv`](client.csv)
- [`site.csv`](site.csv)

### 3. Database Development

The processed datasets were imported into a MySQL database.

The SQL script:

[`ssis_database_schema.sql`](ssis_database_schema.sql)

contains the database schema, table creation statements, relationships, and other SQL operations required to prepare the database for reporting.

### 4. Business Intelligence Development

The SQL database was connected to Power BI to create an interactive reporting solution.

The Power BI project:

[`SSIS.pbix`](SSIS.pbix)

contains the complete semantic model, DAX measures, KPIs, and dashboards used to visualize business performance.

---

# Dashboard Modules

The system consists of four interactive dashboards:

### Executive Overview
Provides executives with an overall summary of organizational performance through key business indicators.

### Workforce Analytics
Analyzes employee information, attendance, assignments, employment status, and workforce distribution.

### Operations Analytics
Monitors security incidents, response performance, incident categories, and operational trends across security sites.

### Commercial Analytics
Provides insights into contracts, clients, contract values, commercial performance, and contract status.

---

# Key Project Files

| File | Description |
|------|-------------|
| [`SSIS.pbix`](SSIS.pbix) | Interactive Power BI dashboard |
| [`SSIS.ipynb`](SSIS.ipynb) | Python notebook used for data cleaning and transformation |
| [`ssis_database_schema.sql`](ssis_database_schema.sql) | SQL database schema and database setup script |
| [`employee_df.csv`](employee_df.csv) | Raw employee dataset |
| [`incident_df.csv`](incident_df.csv) | Raw incident dataset |
| [`site_df.csv`](site_df.csv) | Raw site dataset |
| Processed CSV files | Normalized datasets used to build the SQL database |

---

# Technologies Used

- Python
- Pandas
- MySQL
- SQL
- Power BI
- DAX
- Power Query

---

# Skills Demonstrated

- Data Cleaning
- Data Transformation
- ETL
- Relational Database Design
- SQL Development
- Data Modeling
- Business Intelligence
- Dashboard Design
- DAX
- Data Visualization
- Business Analysis
- Decision Support Systems

---

# Dashboard Preview

> Dashboard screenshots and visual previews from your project build:

- **Executive Overview & Navigation UI:**  
  ![Executive Overview](image_db54c2.jpg)

- **Power BI Environment & Project Structure:**  
  ![Project Structure](image_31d5eb.png)

---

# Project Outcome

The Security Support Information System demonstrates how raw operational data can be transformed into a centralized Business Intelligence solution that supports strategic and operational decision-making within private security organizations.

The project showcases the complete analytics lifecycle, from raw data acquisition and transformation through database development to interactive dashboard reporting.

---

## Author

**Samuel King'ori**

Aspiring Data Analyst | SQL | Python | Power BI | Business Intelligence
