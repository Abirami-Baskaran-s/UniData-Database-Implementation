# University Systems Optimization & Database Architecture Refactor

## Project Objective

The objective of this project was to perform a critical architectural review and technical overhaul of a legacy University Management System. The project transformed a flawed schema into a robust relational database that adheres to strict data integrity, 3rd Normal Form (3NF) normalization, and scalability standards.

---

## Data and Tools

* **Database Engine:** MySQL.


* **Modeling:** Entity-Relationship (ER) Modeling.


* **Key Technical Features:** Relational constraints (FK/PK) , Domain Integrity (`CHECK` constraints) , and Performance Indexing.



---

## Analytical Approach

The project utilized a structured audit methodology to evaluate the initial implementation:

* **Vulnerability Assessment:** Identified 8 major design flaws, including missing foreign keys, poor normalization, and unauthenticated query performance.


* **Normalization Strategy:** Decoupled multi-valued attributes and text-heavy fields into optimized reference tables for Departments and Semesters.


* **Structural Refactoring:** Redesigned entity relationships to support complex academic scheduling and auditing requirements.



---

## Business Logic & Solution Architecture

### 1. Data Integrity & Normalization (3NF)

* **Problem:** Department data was stored as free text in multiple tables, leading to redundancy and high risk of inconsistent records.


* **Solution:** Implemented a centralized `Departments` table. All dependent entities (Students, Instructors, Courses) reference this table via `department_id`, ensuring a single source of truth.



### 2. Advanced Scheduling & Resource Management

* **Problem:** The original schema lacked scheduling capacity, assuming a static 1:1 relationship between courses and classrooms with no time-slot tracking.


* **Solution:** Engineered a `Class_Schedule` and `Course_Offering` architecture. This allows for dynamic time-slot allocation (days of the week) and supports many-to-one scheduling of course offerings to physical classrooms.



### 3. Security Framework & Audit Trails

* **Problem:** The initial logging system was "weak," failing to define specific user roles or provide a verifiable link to a user directory.


* **Solution:** Integrated a unified `Users` table with role-based attributes and password hashing. The redesigned `System_Log` now tracks severity and user actions, providing a robust audit trail for system security.



---

## Key Insights & Performance Metrics

* **Integrity Enforcement:** Use of `ON DELETE CASCADE` and `RESTRICT` prevents referential integrity failures during bulk data updates.


* **Scalability:** Strategic indexing on primary and foreign keys ensures that query execution times remain efficient as the dataset grows.


* **Domain Controls:** Implementation of `CHECK` constraints on credits and enrollment status ensures data quality at the point of entry.



---

## Conclusion

The resulting architecture transitions the system from a maintenance-heavy prototype to a production-ready relational database. The refactor prioritizes data safety, auditability, and the operational flexibility required by modern academic institutions.

