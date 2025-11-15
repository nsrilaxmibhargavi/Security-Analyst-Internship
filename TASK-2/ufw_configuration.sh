#!/bin/bash

# Basic Firewall Configuration with UFW
# Task 2 – Cybersecurity Analyst Internship

echo "Starting UFW configuration..."

# Enable UFW
echo "Enabling UFW..."
sudo ufw enable

# Allow SSH (port 22/tcp)
echo "Allowing SSH (22/tcp)..."
sudo ufw allow ssh

# Deny HTTP (port 80/tcp)
echo "Denying HTTP (80/tcp)..."
sudo ufw deny http

# Display current firewall status
echo "Current UFW status:"
sudo ufw status verbose

echo "UFW configuration complete."
