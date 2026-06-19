# CODE-JOURNEY-2026

**Author:** Tanvi Dalvi  
**Mission:** SQL Data Analyst Journey | From Queries to Insights

---

## 🗂️ Genesis Query Protocol - SQL Track

One file, complete SQL journey: `Genesis_Query_Protocol.sql`

### **SQL Protocols Completed:**

| Protocol | SQL Concepts Covered | Status |
| --- | --- | --- |
| Protocol 1 | SELECT, FROM, Basic Filtering | ✅ Done |
| Protocol 2 | WHERE, AND, OR, LIKE | ✅ Done |
| Protocol 3 | ORDER BY, LIMIT, Aliases | ✅ Done |
| Protocol 4 | INNER JOIN, LEFT JOIN | ✅ Done |
| Protocol 5 | GROUP BY, HAVING, Aggregate Functions | ✅ Done |
| Protocol 9 | Schema Design, Subqueries, Foreign Keys, HackerRank | ✅ Done |
| Protocol 10 | Window Functions - ROW_NUMBER, RANK, PARTITION BY | ✅ Done |
| Protocol 11 | CTEs, Recursive Queries, WITH clause | ✅ Done |

---

### **Protocol 9 Breakdown:**
- **DDL**: `CREATE TABLE` with `PRIMARY KEY` + `FOREIGN KEY`
- **DML**: `INSERT INTO` for data population  
- **DQL**: Complex `SELECT` with `JOIN`, `MAX()` Subquery, `AVG()`, `GROUP BY`, `WHERE`
- **Achievement**: HackerRank SQL (Basic) Certified

### **Protocol 10 Breakdown:**
- **Core Concepts**: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `OVER()`, `PARTITION BY`, `ORDER BY`
- **Use Cases Solved**: 
    1. Top N per Category - Highest salary in each department
    2. Running Totals & Moving Averages
    3. Ranking employees without skipping ranks
    4. Difference from GROUP BY - Row-level detail ठेवून Aggregation
- **Key Learning**: `GROUP BY` collapses rows, `Window Function` keeps all rows + adds calculation
- **Platform**: HackerRank + MySQL Practice

### **Protocol 11 Breakdown: CTEs & Recursive Queries**
- **Objective**: Use `WITH RECURSIVE` to traverse hierarchical employee data and generate org charts
- **Key Concepts**: Anchor Member, Recursive Member, Self-Join, Level Tracking, Termination Condition
- **Business Use Case**: Solves tree traversal for org charts, BOM, category hierarchies in pure SQL
- **Key Learning**: Recursive CTEs run iteratively until no new rows. 3x faster than loops for hierarchical data.

**Database:** MySQL  
**Platform:** HackerRank + GitHub

---

## 🎯 Upcoming SQL Protocols:

- Protocol 12: Stored Procedures & Triggers
- Protocol 13: Performance Tuning & Indexing

*Building SQL muscle. One Query at a time.* ⚔️
