#!/bin/bash

# ================================
# Server Performance Stats Report
# ================================

echo "========================================"
echo "   SERVER PERFORMANCE STATS REPORT"
echo "========================================"
echo ""

# System Uptime
echo "Uptime:"
uptime
echo ""

# CPU Usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo ""

# Memory Usage
echo "Memory Usage:"
free -h
echo ""

# Disk Usage
echo "Disk Usage (/):"
df -h /
echo ""

# Top CPU Processes
echo "Top 5 CPU Consuming Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6
echo ""

# Top Memory Processes
echo "Top 5 Memory Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -6
echo ""

# Logged-in Users
echo "Logged-in Users:"
who
echo ""