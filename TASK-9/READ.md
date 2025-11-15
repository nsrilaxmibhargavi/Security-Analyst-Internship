# Task 9 – SQL Injection Exploitation on DVWA

This task demonstrates how an SQL Injection vulnerability in **DVWA (Damn Vulnerable Web Application)** can be discovered, exploited, and patched. The goal was to inject malicious SQL into a vulnerable input field and extract sensitive information from the backend database inside a controlled lab.

---

## 🎯 Objective
- Find an SQL Injection vulnerability in DVWA  
- Exploit the vulnerable `id` parameter to dump database contents  
- Automate the attack using a bash script  
- Document the exploit and recommended fixes  

---

## 🛠 Tools Used
- DVWA (Damn Vulnerable Web Application)  
- Kali Linux (VirtualBox VM)  
- Burp Suite Community Edition  
- Apache Web Server  
- Bash + cURL  

---

## 🧪 Lab Setup
- DVWA running at: `http://10.0.2.8/`  
- Logged in with: Username: admin
Password: password

- Tested on DVWA Security Levels: Low, Medium, High  
- Focused entirely on the **SQL Injection** module  

---

## 📝 What I Did
- Identified the vulnerable `id` input in the SQL Injection page  
- Injected test payloads such as:
1'
1' --
1' OR '1'='1

- Confirmed SQL Injection using a UNION payload:
1' UNION SELECT user, password FROM users# --

- Used Burp Suite Repeater to refine the request

- Retrieved usernames and password hashes for:
- admin  
- gordonb  
- 1337  
- pablo  
- smithy  
- Captured results at different security levels:
- LOW SECURITY RESULT.png  
- MEDIUM SECURITY RESULT.png  
- HIGH SECURITY RESULT.png  

---

## 📊 Attack Summary
DVWA uses a vulnerable SQL query similar to:

```php
$id = $_GET['id'];
$query = "SELECT first_name, last_name FROM users WHERE user_id = '$id'";

- Successfully retrieved usernames and password hashes from the vulnerable database  
- Used **Burp Suite** Repeater to manually test, modify, and replay SQLi payloads  
- Captured screenshots of results across different security levels  
- Analyzed how DVWA filters change between Low, Medium, and High  
- Documented the root cause of the vulnerability and explained how to patch it  

---

## 📚 Exploit Summary

### **• Low Security**
- User input is not sanitized  
- Payloads are executed directly on the database  
- Full user table can be extracted easily  

### **• Medium Security**
- Basic filtering is applied  
- Input validation can still be bypassed using altered or encoded payloads  
- SQL injection is still possible with minor adjustments  

### **• High Security**
- Stronger filtering and use of safer SQL handling  
- SQL injection becomes very hard or fully blocked  
- Represents proper security implementation  

### **• Data Extracted**
Using SQL injection, the following were retrieved:

- Usernames  
- MD5 password hashes  
- Full user table results

Screenshots display successful exploitation across Low, Medium, and High security modes.

---

## 📂 Files Included
- **sql_injection_exploit.sh** – Automated SQL injection script  
- **README.md** – Complete explanation of the SQL injection attack and mitigation  
- **Screenshots** – Low, Medium, and High security outputs  
- *(Optional)* Burp Suite Repeater request/response captures  

---

## 🖼 Screenshots
Medium Security Result:  
![image alt](https://github.com/nsrilaxmibhargavi/Security-Analyst-Internship/blob/bcfa4af0207a4a3c3db941d77abc05e7f9a4dbb2/TASK-9/MEDIUM%20SECURITY%20RESULT.png)

High Security Result:  
![image alt](https://github.com/nsrilaxmibhargavi/Security-Analyst-Internship/blob/bcfa4af0207a4a3c3db941d77abc05e7f9a4dbb2/TASK-9/HIGH%20SECURITY%20RESULT.png)

---

## 🎥 Demo Video
Exploit demonstration video:  
**<paste your YouTube link here>**

---

## 💡 Key Takeaways
- SQL Injection occurs when unsafe user input is included directly in SQL queries  
- UNION-based SQLi can reveal additional database tables and sensitive data  
- DVWA provides a safe environment to explore real-world vulnerabilities  
- Prepared statements, sanitization, and strict validation effectively prevent SQL injection  
