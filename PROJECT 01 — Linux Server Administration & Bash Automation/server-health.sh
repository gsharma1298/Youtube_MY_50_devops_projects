#!/bin/bash

echo "================================"
echo "      SERVER HEALTH CHECK"
echo "================================"

echo ""
echo "Hostname:"
hostname

echo ""
echo "Uptime:"
uptime

echo ""
echo "Memory:"
free -h

echo ""
echo "Disk:"
df -h /

echo ""
echo "CPU Load:"
uptime | awk -F'load average:' '{print $2}'

echo ""
echo "Top CPU Processes:"
ps aux --sort=-%cpu | head -6

echo ""
echo "Nginx Status:"
systemctl is-active nginx

echo ""
echo "================================"
echo "      CHECK COMPLETED"
echo "================================"
