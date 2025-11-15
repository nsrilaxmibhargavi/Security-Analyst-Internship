# Task 7 – Vulnerability Scanning with Nikto

This task focuses on performing a vulnerability scan on a web server using **Nikto**, an open-source web server scanner commonly used for identifying security issues. The testing was done in a controlled environment for learning and analysis.

---

## 🎯 Objective
- Install and use Nikto to scan a target web server  
- Identify security issues or misconfigurations based on the scan results  
- Understand what information Nikto provides and how it helps improve security  

---

## 🛠 Tools Used
- Nikto Web Server Scanner  
- Kali Linux / Linux Environment  
- Web Browser (optional for verification)

---

## 🧪 Lab Setup
- Nikto was installed and updated to the latest version  
- The target web server's IP address was identified  
- A vulnerability scan was performed using basic Nikto options  
- The final scan output was saved as `nikto_scan_results.txt`  

---

## 📝 What I Did
- Installed Nikto using standard package installation  
- Verified the installation and checked the version  
- Determined the target system’s IP address  
- Ran a full vulnerability scan on the target  
- Observed the findings, including server details, outdated components, and potential misconfigurations  
- Exported the results into a text file for documentation  

---

## 📊 Scan Summary
The Nikto scan provided useful information such as:

- Web server type and version  
- Potentially dangerous server headers  
- Default files or directories accessible on the system  
- Outdated software components  
- Known vulnerabilities related to the server configuration  
- Suggested actions to improve security  

These findings help administrators understand risks and reinforce server-side protections.

---

## 📂 Files Included
- **nikto_scan_results.txt** – Full output of the vulnerability scan
- **nikto_scan_results.pdf** – Full output of the vulnerability scan 
- **README.md** – Explanation of the scanning process and results  
- **TASK 7 DEMO VIDEO** – Video Demonstration 

---

## 🎥 Demo Video
Vulnerability Scanning with Nikto:  
**[Youtube Link](https://youtu.be/spZ8515KltI)**

---

## 💡 Key Takeaways
- Nikto is a useful tool for quickly identifying web server vulnerabilities  
- Results often include outdated software, misconfigurations, and risky directories  
- Regular scanning helps maintain secure server configurations  
- Automated scanners provide a good starting point but should be combined with manual analysis  
