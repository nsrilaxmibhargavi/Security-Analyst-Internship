# Task 2 – Basic Firewall Configuration with UFW

This task focuses on configuring a simple firewall using **UFW (Uncomplicated Firewall)** on a Linux system. The goal was to control incoming traffic by allowing essential services and blocking unwanted ones, ensuring basic system security.

---

## 🎯 Objective
Set up UFW to allow SSH access, deny HTTP traffic, enable the firewall, and verify that the correct rules are active.

---

## 🛠 Tools Used
- UFW (Uncomplicated Firewall)
- Kali Linux / Ubuntu
- VirtualBox virtual environment

---

## 📝 What I Did
- Installed and enabled UFW on my Linux machine  
- Configured firewall rules to allow SSH (22/tcp) and deny HTTP (80/tcp)  
- Enabled the firewall to enforce the rules system-wide  
- Verified the rule list using `ufw status`  
- Saved the configuration commands in a shell script  
- Documented the steps and results in a report

---

## 📊 Rule Summary
After applying the configuration, UFW displayed the following active rules:

| Port | Action | Description |
|------|---------|--------------|
| **22/tcp** | ALLOW | SSH access allowed |
| **80/tcp** | DENY | Blocks HTTP traffic |
| **22/tcp (v6)** | ALLOW | SSH allowed for IPv6 |
| **80/tcp (v6)** | DENY | HTTP blocked for IPv6 |

The firewall was successfully enabled and enforcing all rules.

---

## 📂 Files Included
- **ufw_configuration.sh** – Script containing all UFW commands  
- **ufw result.png** – Screenshot of UFW status output  
- **README.md** – Overview and explanation of the configuration
- **TASK-2 DEMO VIDEO** – Video Demonstration 

---

## 🎥 Demo Video
Full demonstration video:  
**<paste your YouTube link here>**

---

## 💡 Key Takeaways
- UFW simplifies firewall management on Linux systems  
- Allowing SSH ensures remote administration remains functional  
- Blocking HTTP helps prevent unneeded or risky web access  
- Verifying rules with `ufw status` ensures the configuration is active
