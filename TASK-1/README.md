# Task 1 – Basic Network Scanning with Nmap

This task focuses on performing a basic network scan using **Nmap** to identify open ports and running services on a target machine. The aim was to understand the host’s exposure and analyze what services it is making publicly accessible.

---

## 🎯 Objective
Use Nmap to scan a target system, detect open ports, document the findings, and interpret the significance of each service.

---

## 🛠 Tools Used
- Nmap (Kali Linux)
- VirtualBox virtual environment

---

## 📝 What I Did
- Set up a Kali Linux VM for scanning  
- Performed a full TCP port scan on the target machine  
- Identified open ports and associated services  
- Saved the raw scan output as a text file  
- Documented all steps and results in a PDF report

---

## 📊 Scan Summary
The Nmap scan revealed two open ports:

| Port | State | Service | Notes |
|------|--------|----------|--------|
| **80/tcp** | open | http | Indicates a running web server |
| **443/tcp** | open | https | Shows an encrypted web service is active |

All other ports were filtered, meaning the host did not respond or the firewall blocked the traffic.

---

## 📂 Files Included
- **scan_results.txt** – Raw terminal output of the Nmap scan  
- **nmap_scan_results.pdf** – Step-by-step documentation with screenshots and explanations  
- **README.md** – Overview of the task and results 
- **TASK-1 DEMO VIDEO** – Video explanation

---

## 🎥 Demo Video
Full demonstration video:  
**https://youtu.be/**

---

## 💡 Key Takeaways
- Nmap provides clear visibility into a system’s open ports  
- Ports 80 and 443 indicate active web services  
- Filtered ports point to proper firewall or security configurations  
- Network scanning is a crucial starting point for any security assessment
