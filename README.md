# Contact Management System using MySQL

A simple database management project developed using **MySQL** to store, organize, search, update, and delete contact information using SQL queries.

## Project Details

- **Project Name:** Contact Management System
- **Student Name:** VEERAKUMAR A
- **Register Number:** 711525BCS178
- **Student Number:** 55
- **Department:** Computer Science and Engineering
- **Institution:** KIT – Kalaignarkarunanidhi Institute of Technology, Coimbatore
- **Technology:** MySQL

## Overview

The Contact Management System provides a structured way to maintain personal and professional contact details in a relational database. It uses SQL commands to manage contact records efficiently.

The database stores information such as names, phone numbers, email addresses, residential addresses, and organizations.

## Features

- Create a contact database and table.
- Add new contact records.
- Display all saved contacts.
- Search contacts by name, phone number, or email.
- Update existing contact information.
- Delete selected contact records.
- Sort contacts alphabetically.
- Count total contacts.
- Prevent duplicate non-null phone numbers and email addresses using unique constraints.

## Technologies Used

- **MySQL:** Relational database management system.
- **SQL:** Database creation, data insertion, retrieval, modification, and deletion.

## Database Structure

**Database:** `ContactManagementDB`

**Table:** `Contacts`

| Column | Data Type | Description |
|---|---|---|
| `contact_id` | INT | Primary key; automatically generated |
| `first_name` | VARCHAR(50) | Contact's first name |
| `last_name` | VARCHAR(50) | Contact's last name |
| `phone` | VARCHAR(20) | Phone number |
| `email` | VARCHAR(100) | Email address |
| `address` | VARCHAR(255) | Contact address |
| `organization` | VARCHAR(100) | Company or organization |

## Getting Started

### Prerequisites

- MySQL Server
- MySQL Workbench or MySQL command-line client

### Installation and Execution

1. Clone or download this repository.
2. Open MySQL Workbench and connect to your MySQL server.
3. Open the `Contact_Management_System.sql` file.
4. Execute the SQL script.
5. View the contact records by running:

```sql
USE ContactManagementDB;

SELECT * FROM Contacts;
```

## Sample SQL Operations

### Insert a Contact

```sql
INSERT INTO Contacts
(first_name, last_name, phone, email, address, organization)
VALUES
('Veera', 'Kumar', '9876501234',
 'veera@example.com', 'Coimbatore, Tamil Nadu',
 'Example Organization');
```

### Search Contacts

```sql
SELECT *
FROM Contacts
WHERE first_name LIKE '%Arun%';
```

### Update Contact Details

```sql
UPDATE Contacts
SET phone = '9998887770'
WHERE contact_id = 1;
```

### Delete a Contact

```sql
DELETE FROM Contacts
WHERE contact_id = 1;
```

## Learning Outcomes

This project demonstrates:

- Relational database design.
- SQL DDL and DML commands.
- Primary keys and unique constraints.
- Filtering and sorting records.
- CRUD operations.
- Basic data integrity concepts.

## Project Limitations

This project is a database-only implementation. It does not include a graphical user interface, user authentication, or cloud synchronization. All operations are performed using SQL queries in a MySQL client.

## Future Enhancements

- Add contact categories and groups.
- Create separate tables for multiple phone numbers and email addresses.
- Implement stored procedures and triggers.
- Add database backup and recovery.
- Connect the database to an application in a future version.

## Author

**VEERAKUMAR A**  
B.E. Computer Science and Engineering  
KIT – Kalaignarkarunanidhi Institute of Technology, Coimbatore

## License

This project is intended for educational and academic purposes.
