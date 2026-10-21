
-- =====================================================
-- PROJECT: CONTACT MANAGEMENT SYSTEM
-- STUDENT: VEERAKUMAR A
-- REGISTER NO: 711525BCS178
-- STUDENT NO: 55
-- TECHNOLOGY: MYSQL ONLY
-- =====================================================

-- 1. CREATE DATABASE

CREATE DATABASE IF NOT EXISTS ContactManagementDB;

USE ContactManagementDB;


-- 2. CREATE CONTACTS TABLE

CREATE TABLE IF NOT EXISTS Contacts (
    contact_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    phone VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255),
    organization VARCHAR(100)
);


-- 3. INSERT SAMPLE CONTACTS

INSERT INTO Contacts
(first_name, last_name, phone, email, address, organization)
VALUES
('Arun', 'Kumar', '9876543210',
 'arun@example.com', 'Coimbatore, Tamil Nadu', 'ABC Company'),
('Priya', 'Sharma', '9876543211',
 'priya@example.com', 'Chennai, Tamil Nadu', 'XYZ Solutions'),
('Rahul', 'Raj', '9876543212',
 'rahul@example.com', 'Madurai, Tamil Nadu', 'Tech Systems'),
('Divya', 'Suresh', '9876543213',
 'divya@example.com', 'Salem, Tamil Nadu', 'Global Services'),
('Karthik', 'M', '9876543214',
 'karthik@example.com', 'Erode, Tamil Nadu', 'Smart Technologies');


-- 4. DISPLAY ALL CONTACTS

SELECT * FROM Contacts;


-- 5. DISPLAY SPECIFIC COLUMNS

SELECT contact_id, first_name, last_name, phone, email
FROM Contacts;


-- 6. SEARCH CONTACT BY FIRST NAME

SELECT *
FROM Contacts
WHERE first_name = 'Arun';


-- 7. SEARCH CONTACT BY PHONE NUMBER

SELECT *
FROM Contacts
WHERE phone = '9876543210';


-- 8. SEARCH CONTACT BY EMAIL

SELECT *
FROM Contacts
WHERE email = 'priya@example.com';


-- 9. SEARCH CONTACT USING PARTIAL NAME

SELECT *
FROM Contacts
WHERE first_name LIKE '%ar%';


-- 10. SEARCH CONTACTS BY ORGANIZATION

SELECT *
FROM Contacts
WHERE organization = 'ABC Company';


-- 11. ADD A NEW CONTACT

INSERT INTO Contacts
(first_name, last_name, phone, email, address, organization)
VALUES
('Vijay', 'Kumar', '9876543215',
 'vijay@example.com', 'Tiruppur, Tamil Nadu', 'New Tech');


-- 12. UPDATE CONTACT PHONE NUMBER

UPDATE Contacts
SET phone = '9998887770'
WHERE contact_id = 1;


-- 13. UPDATE CONTACT EMAIL

UPDATE Contacts
SET email = 'arun.kumar@example.com'
WHERE contact_id = 1;


-- 14. UPDATE CONTACT ADDRESS

UPDATE Contacts
SET address = 'Chennai, Tamil Nadu'
WHERE contact_id = 2;


-- 15. DISPLAY CONTACTS IN ASCENDING ORDER

SELECT *
FROM Contacts
ORDER BY first_name ASC;


-- 16. DISPLAY CONTACTS IN DESCENDING ORDER

SELECT *
FROM Contacts
ORDER BY first_name DESC;


-- 17. COUNT TOTAL CONTACTS

SELECT COUNT(*) AS total_contacts
FROM Contacts;


-- 18. COUNT CONTACTS BY ORGANIZATION

SELECT organization, COUNT(*) AS total_contacts
FROM Contacts
GROUP BY organization;


-- 19. FIND CONTACTS WITHOUT AN EMAIL ADDRESS

SELECT *
FROM Contacts
WHERE email IS NULL;


-- 20. FIND CONTACTS WITHOUT A PHONE NUMBER

SELECT *
FROM Contacts
WHERE phone IS NULL;


-- 21. DISPLAY CONTACTS WHOSE NAMES START WITH A

SELECT *
FROM Contacts
WHERE first_name LIKE 'A%';


-- 22. DISPLAY CONTACTS WHOSE NAMES END WITH A

SELECT *
FROM Contacts
WHERE first_name LIKE '%a';


-- 23. DISPLAY CONTACTS FROM A SPECIFIC ADDRESS

SELECT *
FROM Contacts
WHERE address LIKE '%Tamil Nadu%';


-- 24. CHECK TABLE STRUCTURE

DESCRIBE Contacts;


-- 25. DISPLAY ALL TABLES IN THE DATABASE

SHOW TABLES;


-- 26. FIND THE TOTAL NUMBER OF CONTACTS

SELECT COUNT(contact_id) AS total
FROM Contacts;


-- 27. DISPLAY UNIQUE ORGANIZATIONS

SELECT DISTINCT organization
FROM Contacts;


-- 28. DELETE A CONTACT BY ID
-- Change 6 to the ID of the contact you want to delete.

DELETE FROM Contacts
WHERE contact_id = 6;


-- 29. VERIFY CONTACTS AFTER OPERATIONS

SELECT * FROM Contacts;


-- 30. DISPLAY DATABASE NAME

SELECT DATABASE();
