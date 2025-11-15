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
- However, input validation is still bypassable using encoded or modified payloads  
- SQLi remains possible with slight tuning  

### **• High Security**
- More robust filtering and prepared statements  
- SQLi becomes very difficult or blocked entirely  
- Demonstrates proper security practices  

### **• Data Extracted**
Using SQL injection, I retrieved:

- Usernames  
- MD5 password hashes  
- Full user table output

Screenshots show results for Low, Medium, and High security settings.

---

## 📂 Files Included
- **sql_injection_exploit.sh** – Automated script used to perform SQL injection on DVWA  
- **README.md** – Complete explanation of the exploit and remediation  
- **Screenshots** of Low, Medium, and High security tests  
- *(Optional)* Burp Suite Repeater capture images  

---

## 🖼 Screenshots
Medium Security Result:
![image alt](https://github.com/nsrilaxmibhargavi/Security-Analyst-Internship/blob/bcfa4af0207a4a3c3db941d77abc05e7f9a4dbb2/TASK-9/MEDIUM%20SECURITY%20RESULT.png)


High Security Result:
![image alt](https://github.com/nsrilaxmibhargavi/Security-Analyst-Internship/blob/bcfa4af0207a4a3c3db941d77abc05e7f9a4dbb2/TASK-9/HIGH%20SECURITY%20RESULT.png)

## 🎥 Demo Video
Exploit demonstration video:  
**<paste your YouTube link here>**

---

## 💡 Key Takeaways
- SQL Injection happens when unsafe input reaches SQL queries.
- UNION-based SQLi allows attackers to read data from other tables.
- DVWA mimics real-world vulnerabilities found in modern web apps.
- Prepared statements and strict input validation eliminate SQLi risks.
