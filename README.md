# SQL, Data Quality & ETL Testing Practice

A hands-on learning repository focused on **SQL, Data Quality Engineering, ETL/ELT Testing, and Data Validation Automation**.

This repository documents my practical learning journey in data quality testing, from SQL fundamentals to end-to-end ETL pipeline validation using PostgreSQL, Python, pandas, and pytest.

## 🎯 Project Objectives

- Strengthen SQL skills for data validation and testing.
- Understand ETL and ELT processes.
- Learn data quality testing techniques and principles.
- Practice source-to-target data reconciliation.
- Identify missing, duplicate, NULL, and inconsistent records.
- Develop automated data validation tests using Python.
- Understand data warehousing concepts and database testing.
- Build a practical ETL testing project.

## 🛠️ Technologies & Tools

| Technology | Purpose |
|---|---|
| SQL | Database queries and data validation |
| PostgreSQL | Practice relational database |
| pgAdmin | Database management |
| Python | ETL scripts and automation |
| pandas | Data processing and validation |
| pytest | Automated testing |
| Git & GitHub | Version control |
| VS Code | Development environment |

## 📁 Repository Structure

```text
sql-data-quality-etl-practice/
│
├── 01-sql-fundamentals/
├── 02-data-quality-testing/
├── 03-etl-elt-testing/
├── 04-data-warehousing/
├── 05-python-automation/
├── 06-end-to-end-project/
├── 07-interview-preparation/
│
├── datasets/
├── docs/
│
├── README.md
├── requirements.txt
└── .gitignore
```

## 📚 Learning Roadmap

### Phase 1: SQL Fundamentals

- SELECT, WHERE, ORDER BY
- Aggregate functions
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN
- Subqueries and CTEs
- Window functions

### Phase 2: Data Quality Testing

- Data completeness
- Data accuracy
- Data consistency
- Data uniqueness
- NULL validation
- Duplicate detection
- Data reconciliation

### Phase 3: ETL/ELT Testing

- ETL vs ELT
- Source-to-target mapping
- Data transformation validation
- Full and incremental loads
- Missing record detection
- Data integrity validation
- ETL failure handling

### Phase 4: Data Warehousing

- Fact and dimension tables
- Star schemas
- Slowly Changing Dimensions
- Data warehouse testing

### Phase 5: Python Automation

- Python fundamentals
- pandas
- pytest
- Automated SQL validation
- Test reporting

### Phase 6: End-to-End ETL Testing Project

Develop a sample data pipeline and validate:

- Source and target record counts
- Missing records
- Duplicate records
- NULL values
- Transformation calculations
- Data consistency
- Incremental data loads

## 🧪 Sample SQL Data Quality Checks

### 1. Record Count Validation

```sql
SELECT COUNT(*) AS total_records
FROM source_orders;
```

### 2. Find Duplicate Records

```sql
SELECT order_id, COUNT(*) AS duplicate_count
FROM source_orders
GROUP BY order_id
HAVING COUNT(*) > 1;
```

### 3. Identify Missing Records

```sql
SELECT s.order_id
FROM source_orders s
LEFT JOIN target_orders t
    ON s.order_id = t.order_id
WHERE t.order_id IS NULL;
```

### 4. Detect Data Mismatches

```sql
SELECT
    s.order_id,
    s.amount AS source_amount,
    t.amount AS target_amount
FROM source_orders s
JOIN target_orders t
    ON s.order_id = t.order_id
WHERE s.amount IS DISTINCT FROM t.amount;
```

## 🚀 Getting Started

### Prerequisites

- Git
- PostgreSQL
- pgAdmin
- Visual Studio Code
- Python 3 for automation exercises

### Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/sql-data-quality-etl-practice.git
cd sql-data-quality-etl-practice
```

Replace `YOUR_USERNAME` with your GitHub username.

### Run SQL Exercises

1. Create a PostgreSQL database named `data_quality_lab`.
2. Open the database in pgAdmin.
3. Open the SQL files in `01-sql-fundamentals/`.
4. Execute the table creation and sample data scripts.
5. Run the validation queries.
6. Compare actual and expected outputs.

## 📈 Learning Progress

- [ ] SQL Fundamentals
- [ ] Data Quality Testing
- [ ] ETL/ELT Fundamentals
- [ ] Data Warehousing
- [ ] Python Automation
- [ ] End-to-End ETL Testing Project
- [ ] Technical Interview Practice

## 🎓 Learning Outcomes

The goal of this repository is to build practical skills in SQL-based data validation, ETL/ELT testing, data quality assurance, and automated testing.

All examples use synthetic practice data. The repository will be updated as new exercises and projects are completed.

## 📝 Disclaimer

This is a personal learning and practice repository. It does not represent a production ETL system or commercial data engineering experience.
