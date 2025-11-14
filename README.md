# NL Health Insurance SQL Project

This project is a small SQL portfolio piece where I simulate a Dutch health insurance company.  
I designed a simple PostgreSQL database with customers and insurance policies, and wrote realistic queries that answer common business questions.

I built this project to practice:
- relational database design
- writing SQL queries with JOINs and aggregations
- analysing customer behaviour and policy data


## 🔧 Tech Stack
- PostgreSQL  
- pgAdmin  
- SQL  

---

## 🗃️ Database Structure

### **klanten** (customers)
Stores basic Dutch customer information:
- name, gender, date of birth  
- address (street, house number, postcode, city, province)  
- insurance start date  

### **polissen** (insurance policies)
Each customer can have one or more policies:
- policy number  
- type (basis, aanvullend, tand, etc.)  
- coverage level (nature, restitutie, budget)  
- start/end dates  
- monthly premium  
- active/inactive  

---

## 📥 Sample Data

I added realistic Dutch sample data:
- customers from different provinces  
- a mix of active and inactive policies  
- different types of coverage and premiums  

Scripts:
- `sql/01_create_tables.sql`
- `sql/02_insert_sample_data.sql`

---

## 📊 Example Analyses

All analysis queries are in `sql/03_analysis_queries.sql`.

Examples include:
- total monthly premium per customer  
- new customers per month  
- new policies per year  
- active vs inactive policies  
- premium income per province  

---

## ✔️ Why I Made This

I wanted a small but realistic SQL project.
It demonstrates basic data modeling, realistic queries, and business-oriented thinking.

If you have feedback or suggestions, feel free to contact me!
