# pimpmymac
 The Pimp My Mac and Unpimp My Mac scripts automate the installation and removal of essential penetration testing tools on macOS, streamlining the setup for cybersecurity professionals and enthusiasts.
 # Pimp My Mac and Unpimp My Mac Scripts

## Overview

This repository contains two bash scripts: `pimpmymac.sh` and `unpimpmymac.sh`.

- **pimpmymac.sh**: A script to install and configure various tools for penetration testing on macOS.
- **unpimpmymac.sh**: A script to clean up and uninstall unused applications, clear caches, and perform general system maintenance.

## Disclaimer

**This repository is intended for educational purposes only. Use these tools responsibly and legally. Unauthorized access to computer systems is illegal and unethical. Ensure you have explicit permission to test and assess the security of any systems you interact with.**

## Prerequisites

Before running these scripts, ensure you have the following installed on your macOS:

- [Homebrew](https://brew.sh/) (for package management)
- Xcode Command Line Tools (usually prompted during installation)

## Installation

### 1. Clone the Repository

First, clone the repository to your local machine:


git clone hhttps://github.com/whitejacket88/pimpmymac.git


### 2. Make Scripts Executable

Make both scripts executable by running the following commands:

cd pimpmymac

chmod +x pimpmymac.sh

chmod +x unpimpmymac.sh

### 3. Run Pimp My Mac Script
To install penetration testing tools, run:

./pimpmymac.sh

Follow the prompts during the installation process.

Installed Tools and Their Uses

The following tools will be installed by pimpmymac.sh:

nmap:
Description: A powerful network scanner used to discover hosts and services on a computer network by sending packets and analyzing the responses.
Usage: Network mapping, service detection, and security auditing.

wireshark:
Description: A network protocol analyzer that captures and displays packets in real-time, helping analyze network traffic.
Usage: Packet inspection and network troubleshooting.

john:
Description: A popular password cracker that can perform dictionary attacks and brute-force attacks on various types of password hashes.
Usage: Password recovery and security testing.

aircrack-ng:
Description: A suite of tools for WiFi security auditing, allowing users to assess the security of wireless networks.
Usage: Wireless network testing and security assessment.

hydra:
Description: A fast network logon cracker that supports numerous protocols to perform dictionary attacks.
Usage: Credential cracking and penetration testing.

sqlmap:
Description: An automated tool for detecting and exploiting SQL injection vulnerabilities in web applications.
Usage: Web application security testing.

nikto:
Description: A web server scanner that tests for dangerous files, outdated server software, and other vulnerabilities.
Usage: Web server security assessment.

metasploit:
Description: A penetration testing framework that helps develop and execute exploit code against remote targets.
Usage: Exploit development and security testing.

burp-suite:
Description: A web vulnerability scanner and testing framework for web applications.
Usage: Web application security testing.

gobuster:
Description: A directory/file/DNS busting tool that helps discover hidden files and directories on web servers.
Usage: Web directory enumeration.


*****Uninstallation*******

To clean up and uninstall unused applications and perform system maintenance, run:

./unpimpmymac.sh

This script will:

* Remove specified applications
* Clear system caches
* Clean up Homebrew packages
* Remove old logs
* Restart certain system services

Usage

pimpmymac.sh: Use this script to set up your Mac for penetration testing by installing the necessary tools.

unpimpmymac.sh: Use this script to clean up your Mac and remove any unnecessary applications.

License

This project is licensed under the MIT License - see the LICENSE file for details.

Author

 Whitejacket88
 Tom White 

