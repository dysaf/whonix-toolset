#!/bin/bash

echo "🔹 Updating system before installation..."
sudo apt update && sudo apt full-upgrade -y

# 🔍 OSINT & Darknet Research Tools
echo "🔍 Installing OSINT tools..."
sudo apt install -y metagoofil theharvester spiderfoot
git clone https://github.com/sherlock-project/sherlock.git ~/sherlock && cd ~/sherlock && sudo pip3 install -r requirements.txt
sudo pip3 install ahmia-cli
git clone https://github.com/DedSecInside/TorBot.git ~/TorBot && cd ~/TorBot && sudo pip3 install -r requirements.txt

# 🛡️ Privacy & Anonymity Tools
echo "🛡️ Installing privacy and security tools..."
sudo apt install -y tor torsocks onionshare gnupg steghide veracrypt ricochet-refresh

# 🌐 Secure Network Monitoring Tools
echo "🌐 Installing secure network monitoring tools..."
sudo apt install -y wireshark tcpdump mitmproxy

# ⚡ Safe Pentesting Tools
echo "⚡ Installing ethical hacking tools..."
sudo apt install -y sqlmap wpscan whatweb cewl

# 🔄 Cleanup & System Optimization
echo "🔄 Cleaning up installation..."
sudo apt autoremove -y
sudo apt clean

echo "✅ Installation complete! Restart your system to apply changes."
sudo reboot