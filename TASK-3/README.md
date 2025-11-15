# Task 3 – SQL Injection on DVWA (Low Security)

This task focuses on demonstrating an **SQL Injection** vulnerability using **DVWA (Damn Vulnerable Web Application)** with the security level set to **Low**. The goal was to exploit a vulnerable input field, extract data from the backend database, and understand why the attack works.

---

## 🎯 Objective
Perform an SQL injection attack on DVWA to retrieve sensitive information (like usernames and password hashes) from the database and explain the underlying vulnerability.

---

## 🛠 Tools Used
- DVWA (Damn Vulnerable Web Application)
- Web browser (inside Kali / VM)
- Local web server (e.g., XAMPP / Apache)

---

## 📝 What I Did
- Installed and configured DVWA on a local virtual machine  
- Logged in as `admin` and set **DVWA Security** level to **Low**  
- Navigated to the **SQL Injection** module in DVWA  
- Identified the vulnerable `ID` parameter in the input field  
- Used SQL injection payloads to extract data from the `users` table  
- Retrieved usernames and password hashes (including the `admin` user)  
- Captured the output screen showing the dumped data  

> All testing was done on a **local lab environment** only, for educational purposes.

---

## 📊 Attack Summary

By injecting crafted input into the vulnerable field (e.g. using a `UNION SELECT` query), I was able to:

- Bypass the normal query logic  
- Directly interact with the backend database  
- Extract multiple records from the `users` table, including:
  - `admin`
  - `gordonb`
  - `1337`
  - `pablo`
  - `smithy`

The page then displayed the IDs, usernames, and password hashes returned by the injected query, confirming the SQL injection vulnerability.

---

## 📂 Files Included
- **sql_injection_exploit.sh** – Script to automate SQL injection requests against DVWA (Low security)  
- **TASK-3 RESULT.png** – Screenshot of the successful SQL injection output in DVWA  
- **README.md** – Explanation of the SQL injection attack and results
- **DEMO VIDEO DVWA(SQL INJECTION Low Security)** – Video Demonstration 

---

## 🎥 Demo Video
Full demonstration video:  
**<[Youtube Link](https://youtu.be/XnuvrV8838o)>**

---

## 💡 Key Takeaways
- Unsanitized user input in SQL queries leads directly to SQL Injection vulnerabilities  
- Attackers can use techniques like `UNION SELECT` to dump sensitive data from backend databases  
- Even low-security demo apps like DVWA mirror real-world mistakes made in production systems  
- Proper input validation, parameterized queries (prepared statements), and least-privilege DB accounts are critical to preventing SQL Injection
