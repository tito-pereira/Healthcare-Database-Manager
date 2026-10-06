# 🏥 Healthcare Database Manager

A personal project that simulates, on a simple level, a working database for a fictional healthcare clinic.

The project focuses on **relational database design, SQL, SQLite and Oracle**, including tables, relationships, constraints, views, indexes, procedures and triggers.

# 🎯 Purpose

This project was created as a hands-on learning project to deepen my understanding of relational databases and Oracle, while building something that can be expanded with additional functionality over time.

It also serves as a practical demonstration of database concepts applied to a realistic, although simplified, business scenario.

---

## 📌 Project Overview

The database manages:

* 👤 Patients
* 👨‍⚕️ Doctors
* 🩺 Medical specialties
* 📅 Appointments
* 💊 Medications
* 📋 Prescriptions
* 🔄 Appointment & prescription history

The project is implemented in **both SQLite and Oracle**, using the same underlying relational model while taking advantage of database-specific features where appropriate.

---

# 🗄️ SQLite Version

### Requirements

You will need:

* SQLite / DB Browser for SQLite
* This repository

### ⚙️ Setup

**1. Download SQLite**

Download the appropriate version for your operating system from the official SQLite website:

👉 https://www.sqlite.org/download.html

**2. Download and extract this repository**

```bash
git clone git@github.com:tito-pereira/Healthcare-Database-Manager.git
cd Healthcare-Database-Manager
```

**3. Open SQLite**

Open your SQLite database management software and go to:

```text
Execute SQL
```

**4. Open the project SQL files**

Open the following files:

```text
01_tables_sqlite.sql
02_seed_sqlite.sql
03_views_sqlite.sql
04_testing_sqlite.sql
```

**5. Create a new database**

Create a new SQLite database and give it any name you want.

**6. Run the scripts in the following order**

```text
01_tables_sqlite.sql
        ↓
02_seed_sqlite.sql
        ↓
03_views_sqlite.sql
        ↓
04_testing_sqlite.sql
```

> ⚠️ The order is important because later scripts depend on objects created by the previous ones.

### 🔎 Exploring the database

After running the first three scripts, you can explore the database through:

```text
Database Structure
        │
        ├── Tables
        ├── Views
        └── Indexes

Browse Data
        │
        └── Table contents

Execute SQL
        │
        └── Custom queries / tests
```

The file `04_testing_sqlite.sql` contains pre-made queries to test the database.

---

# 🏢 Oracle Version

### Requirements

You will need:

* Oracle SQL Developer
* Oracle Free Space ???
* This repository

### ⚙️ Setup

*

---

# 🧩 Database Structure

The Oracle version uses the same relational model as the SQLite version, with additional Oracle-specific functionality such as:

* Stored Procedures
* Triggers
* Oracle Identity Columns
* Oracle-specific data types
* Oracle SQL Developer

```text
Patients ────────────< Appointments >──────────── Doctors
                          │                         │
                          │                         │
                          │                    Doctor_Specialty
                          │                         │
                          │                         ▼
                          │                     Specialty
                          │
                          ▼
                    Prescriptions
                          │
                          ▼
                      Medication

Appointments ────────> Appointment_History
Prescriptions ───────> Prescription_History
```

---

# 🛠️ Technologies

| Technology    | Purpose                            |
| ------------- | ---------------------------------- |
| SQL           | Database querying and manipulation |
| SQLite        | Lightweight relational database    |
| Oracle        | Enterprise relational database     |
| SQL Developer | Oracle database management         |
| Git / GitHub  | Version control                    |

---

# 📚 Concepts Demonstrated

### Database Design

* Relational modelling
* Primary keys
* Foreign keys
* Composite primary keys
* Constraints
* Many-to-many relationships
* Normalization

### SQL

* `SELECT`
* `INSERT`
* `UPDATE`
* `DELETE`
* `JOIN`
* `GROUP BY`
* `SUM`
* `AVG`
* `ORDER BY`
* Aggregate functions

### Database Objects

* Tables
* Views
* Indexes
* Stored Procedures
* Triggers
* History / audit tables

