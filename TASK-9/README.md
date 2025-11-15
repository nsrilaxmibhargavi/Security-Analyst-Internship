# Task 9 – SQL Injection Exploitation on DVWA

This task focuses on identifying and exploiting an SQL Injection vulnerability inside DVWA, a vulnerable training application used for learning web security. All testing was done in a controlled lab environment.

---

## 🎯 Objective
- Find an SQL Injection weakness in DVWA  
- Use it to extract information from the database  
- Test the behavior across Low, Medium, and High security levels  
- Document the results and explain how the issue can be fixed  

---

## 🛠 Tools Used
- DVWA (Damn Vulnerable Web Application)  
- Kali Linux  
- Burp Suite Community Edition  
- Web Browser  

---

## 🧪 Lab Setup
- DVWA was hosted locally inside a virtual machine  
- Logged in using admin credentials  
- Switched between Low, Medium, and High security settings  
- Performed testing inside the SQL Injection module  

---

## 📝 What I Did
- Found a user input field that interacts with the backend database  
- Identified how the application responded to different inputs  
- Used Burp Suite to replay and adjust requests  
- Retrieved user information from the database in Low and Medium security modes  
- Observed stronger protection in High security mode  
- Saved screenshots for all three test levels  

---

## 📊 Attack Summary
- In **Low security**, the application accepts any input and reveals database information  
- In **Medium security**, basic filtering is applied but still bypassable  
- In **High security**, protection is much stronger and prevents the attack  
- Differences between the levels show how secure coding impacts real applications  

---

## 📚 Exploit Summary

### Low Security
- No filtering  
- Full database details exposed  

### Medium Security
- Some filtering  
- Still vulnerable with modified inputs  

### High Security
- Strong filtering  
- Attack mostly prevented  

### Data Extracted
- Usernames  
- Password hashes  
- Complete user list (Low & Medium security)

---

## 📂 Files Included
- `sql_injection_exploit.sh` – Script used for automated testing  
- `README.md` – Documentation of the entire task  
- Screenshots for Low, Medium, and High security modes  
- Optional Burp Suite request/response captures  

---

## 🖼 Screenshots
Medium Security Result:  
![image](https://github.com/nsrilaxmibhargavi/Security-Analyst-Internship/blob/main/TASK-9/MEDIUM%20SECURITY%20RESULT.png)

High Security Result:  
![image](https://github.com/nsrilaxmibhargavi/Security-Analyst-Internship/blob/main/TASK-9/HIGH%20SECURITY%20RESULT.png)

---

## 🎥 Demo Video
Full demonstration video:  
**[Youtube Link](https://youtu.be/klUBv4o4UhM)**

---

## 💡 Key Takeaways
- Applications must validate and sanitize all user input  
- Different security levels demonstrate how vulnerabilities can be prevented  
- Proper coding practices protect applications from data exposure  
- SQL Injection remains one of the most common and dangerous web vulnerabilities  
