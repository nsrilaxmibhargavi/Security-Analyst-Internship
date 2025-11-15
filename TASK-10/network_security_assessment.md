# 🛡️ Network Security Assessment Report

## 📌 Task 10: Detailed Security Assessment of a Network

### 🎯 Objective
To assess the security of a test network by scanning a target host using Nmap and analyzing captured traffic using Wireshark. The goal was to identify running services, observe network behavior, and evaluate potential risks.

---

## 🛠 Tools Used

- **Nmap 7.95** – Port scanning and service detection  
- **Wireshark** – Packet capturing and protocol-level traffic analysis  
- **Operating System** – Kali Linux  

---

## 1️⃣ Nmap Network Scan

### 🧾 Scan Results Summary (based on your output)

| Parameter             | Result                                  |
|-----------------------|-------------------------------------------|
| Target IP             | 47.246.174.135                           |
| Host Status           | Up                                       |
| Open Ports            | 80/tcp, 443/tcp                          |
| Service on Port 80    | Tengine httpd Aserver                    |
| Service on Port 443   | Tengine httpd Aserver (SSL)              |
| OS Detection          | No exact match (insufficient responses)   |
| Port Filtering        | 998 filtered ports                       |

### 🛡️ Observations

- Only **two ports** were open—both web-related (HTTP & HTTPS).  
- The server uses **Tengine**, a high-performance web server used in cloud environments.  
- OS detection was inconclusive due to limited closed-port responses.  
- A large number of filtered ports indicates a well-configured firewall.  
- Host responded normally to SYN scan packets and ICMP requests.

---

## 2️⃣ Wireshark Traffic Capture

### 🧪 Procedure Followed

1. Started a live capture on the main network interface.  
2. Performed the Nmap scan to generate TCP, ICMP, and SYN traffic.  
3. Observed packet responses from the target.  
4. Stopped and saved the capture for detailed review.  

### 📊 Packet Analysis Highlights

| No.   | Source          | Destination      | Description                        |
|-------|------------------|------------------|------------------------------------|
| 5033  | 192.168.1.11     | 47.246.174.135   | ICMP echo request                  |
| 5036  | 47.246.174.135   | 192.168.1.11     | ICMP echo reply                    |
| 5037  | 192.168.1.11     | 47.246.174.135   | TCP SYN (scan attempt)             |
| 5038  | 47.246.174.135   | 192.168.1.11     | TCP SYN/ACK (port open)            |
| 5157  | 192.168.1.11     | 47.246.174.135   | Additional TCP requests            |
| 5195  | 47.246.174.135   | 192.168.1.11     | Server packet responses            |

### 🧠 Key Takeaways

- Nmap’s SYN scan behavior is clearly visible in the packet flow.  
- ICMP traffic confirms host reachability.  
- TCP SYN/ACK flags reveal which ports are open.  
- No suspicious or abnormal packets were identified.  
- Traffic flow appears normal and consistent with expected scan behavior.

---

## 🔐 Security Assessment Summary

| Area                    | Observation                                  | Recommendation                             |
|-------------------------|-----------------------------------------------|---------------------------------------------|
| Web Server Exposure     | Ports 80 & 443 open                           | Ensure server is updated and hardened       |
| Firewall Filtering      | Most ports filtered                           | Maintain strong firewall rules              |
| OS Fingerprinting       | OS detection inconclusive                    | Consider fingerprint obfuscation if needed  |
| Encryption              | HTTPS enabled, but verification needed        | Harden TLS configuration                    |
| Network Behavior        | Normal SYN/ACK + ICMP responses               | No action required                          |

---

## ✅ Conclusion

The network appears to have a **low attack surface**, with only essential services exposed and most ports filtered. The web server responds normally, but should be monitored for vulnerabilities and configuration issues.

Wireshark confirmed normal network activity during the assessment.  
Overall, the security posture is stable, with only minor improvements recommended.

---

## 📁 Deliverables

- `network_security_assessment.md`  
- `nmap_results.txt`  
- `wireshark_capture.pcap`  

