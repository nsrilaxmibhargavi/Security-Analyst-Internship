# Task 8 – Capture Network Traffic with Wireshark

This task focuses on using **Wireshark**, a packet-capturing and network analysis tool, to observe real-time traffic on a local network. The goal was to capture packets, filter specific protocols, and analyze the data to understand how network communication occurs at a deeper level.

---

## 🎯 Objective
Capture and analyze network traffic using Wireshark, with special attention to HTTP packets, headers, and communication flows between client and server.

---

## 📝 What I Did
- Installed Wireshark on my machine  
- Selected the active network interface for packet capture  
- Began capturing live traffic on the local network  
- Applied protocol filters such as `http` to isolate relevant packets  
- Analyzed request and response packets, including:  
  - HTTP request methods (GET, POST)  
  - Status codes  
  - Host information  
  - Packet headers and metadata  
- Exported the capture file as **wireshark_capture.pcap** for documentation

---

## 📚 Traffic Analysis Summary

### **• HTTP Traffic Inspection**
- Observed client requests and corresponding server responses  
- Identified key packet details such as:  
  - Source and destination IP  
  - Ports used (80/443 for web traffic)  
  - HTTP headers and content types  

### **• Packet-Level Insights**
- Examined how TCP establishes connections with SYN, SYN-ACK, and ACK  
- Checked the sequence and acknowledgment numbers  
- Reviewed timing, round-trip delays, and packet size information  

### **• Data Flow Understanding**
- Understood how a browser communicates with a server  
- Saw how multiple packets form a complete HTTP transaction  
- Observed background network activity from other system services  

The full packet capture is available in **wireshark_capture.pcap**.

---

## 📂 Files Included
- **wireshark_capture.pcap** – Packet capture file generated during analysis  
- **README.md** – Summary of the task and explanation of traffic analysis
- **TASK 8 DEMO VIDEO** – Video Demonstration

---

## 🎥 Demo Video
Full demonstration video can be added here:  
**<paste your YouTube link here>**

---

## 💡 Key Takeaways
- Wireshark provides deep visibility into network-level communication  
- HTTP filters make it easy to analyze web traffic patterns  
- Packet captures help identify security risks, misconfigurations, or abnormal activity  
- Understanding packet flow is essential for network analysis, troubleshooting, and cybersecurity investigations  
