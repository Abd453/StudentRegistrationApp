# 🎓 Student Registration System

A **Java Swing application** for managing student registration and administration.  
The system provides separate interfaces for **Admins** and **Students**, allowing secure login, course registration, grade management, and student search.  

---

## 📖 Overview

The application includes:
- **Login Page** – Secure login with username, password, and user type (Admin or Student).  
- **Admin Dashboard** – Manage students, insert grades, and search records.  
- **Student Dashboard** – Register for courses, view results, and calculate GPA.  
- **Database Integration** – MySQL backend for data storage and retrieval.  

Built with **Java Swing (GUI)** and **JDBC (MySQL)** for connectivity.

---

## 🗂️ Folder Structure

```
StudentRegistrationApp/
├── src/
│   ├── LoginPage.java              # Login interface
│   ├── SStudentDataEntryApp.java   # Admin dashboard
│   ├── StudentRegistrationPanel.java  # Student registration form
│   ├── StudentDataEntryPanel.java     # Grade insertion/updating
│   ├── StudentSearchPanel.java        # Student search functionality
│   └── StudentResultsPanel.java       # Student GPA/results view
├── database/
│   └── studentregistration.sql     # Database schema (tables, sample data)
├── README.md                       # Documentation
└── lib/                            # JDBC driver (if required)
```

---

## ⚡ Features

### 🔑 Login Page
- User enters **username**, **password**, and selects role (**Admin** / **Student**).  
- Uses `JPasswordField` for secure password handling.  
- Prevents SQL injection with `PreparedStatement`.  

### 🛠 Admin Dashboard (`SStudentDataEntryApp`)
- **Insert/Update Grades** – Assign or modify student grades.  
- **Register Students** – Add new students with personal and academic details.  
- **Search Students** – Find students by ID and display results in a table.  
- **Logout** – Secure exit with confirmation dialog.  

### 👩‍🎓 Student Dashboard
- **Register for Courses** – Select department, semester, and courses.  
- **View Results** – Display registered courses, grades, and GPA calculation.  
- **Logout** – Securely log out of the system.  

---

## 🗄️ Database Setup

1. Install **MySQL Server** locally.  
2. Create a database:  

```sql
CREATE DATABASE studentregistration;
```

3. Import schema from:  
```bash
mysql -u root -p studentregistration < database/studentregistration.sql
```

4. Update database credentials in source code (e.g., `DB_URL`, `USER`, `PASSWORD`).

---

## ▶️ Usage

1. **Compile the code**:
```bash
javac -cp .;lib/mysql-connector-j.jar src/*.java
```

2. **Run the application**:
```bash
java -cp .;lib/mysql-connector-j.jar src.LoginPage
```

3. **Login as Admin or Student**:
   - Admin → access dashboard to manage student data.  
   - Student → register for courses and view results.  

---

## 📌 Notes

- Ensure the **MySQL service** is running before launching the app.  
- All sensitive data (like passwords) should be handled securely.  
- This system is intended as a **learning/demo project** – production usage requires stronger security.  

---

## 👨‍💻 Author

Developed by **Abdallah Abdurazak**  
Project demonstrates concepts in **Java Swing**, **JDBC**, and **MySQL database integration**.  

---

## 🏷️ License
This project is open for **educational use**. You are free to modify and extend it.  

