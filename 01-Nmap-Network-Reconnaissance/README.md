# Network Reconnaissance and Port Scanning Using Nmap

## 1. Project Overview

This project demonstrates fundamental network reconnaissance and port-scanning techniques using **Nmap**, a widely used network discovery and security auditing tool.

The assessment was performed against the local Kali Linux virtual machine (`127.0.0.1`) in an isolated lab environment.

The objective was to identify open and closed TCP ports, detect running services and versions, and explore operating system fingerprinting.

## 2. Tools and Environment

- **Operating System:** Kali Linux
- **Virtualisation:** Oracle VirtualBox
- **Scanning Tool:** Nmap 7.94SVN
- **Test Service:** Python HTTP server
- **Target:** Localhost (`127.0.0.1`)

## 3. Tasks Performed

### Task 1: Basic Network Scan

**Command:**
```bash
nmap 127.0.0.1 -oN nmap_basic_scan.txt
```

**Objective:** Identify whether the target host is reachable and discover commonly scanned TCP ports.

**Findings:**
- The host was reachable.
- Nmap scanned its default set of 1,000 TCP ports.
- All 1,000 scanned ports were closed at the time of this scan.

### Task 2: Service and Version Detection

A temporary Python HTTP server was started locally on port 8000.

**Command used to start the test server:**
```bash
python3 -m http.server 8000 --bind 127.0.0.1
```

**Nmap command:**
```bash
nmap -sV -p 8000 127.0.0.1 -oN nmap_service_detection.txt
```

**Findings:**
- Port `8000/tcp` was open.
- Nmap identified the service as HTTP.
- The detected server was `SimpleHTTPServer 0.6`.
- The detected Python version was `3.11.9`.

### Task 3: Full TCP Port Scan

**Command:**
```bash
nmap -p- 127.0.0.1 -oN nmap_full_tcp_scan.txt
```

**Objective:** Scan all 65,535 TCP ports rather than only Nmap's default 1,000 ports.

**Findings:**
- Port `8000/tcp` was open.
- The remaining 65,534 TCP ports were closed.
- The open port corresponded to the temporary Python HTTP server.

### Task 4: Operating System Detection

**Command:**
```bash
sudo nmap -O 127.0.0.1 -oN nmap_os_detection.txt
```

**Objective:** Attempt to identify the target operating system through TCP/IP fingerprinting.

**Findings:**
- Nmap collected a TCP/IP fingerprint.
- No exact operating system match was identified.
- The scan reported a network distance of zero hops because the target was localhost.

## 4. Key Findings and Security Observations

- A basic scan can identify host availability and commonly scanned open or closed ports.
- Service detection can reveal information about the software running on an open port.
- A full TCP scan provides broader port coverage than a default scan.
- Operating system detection may be inconclusive, particularly when scanning localhost.
- Unnecessary open ports and exposed services should be reviewed and restricted where appropriate.

## 5. Project Evidence

Screenshots and scan output files are included in this repository.

**Screenshots:**
- `01-nmap-basic-scan.png`
- `02-nmap-service-detection.png`
- `03-nmap-full-tcp-scan.png`
- `04-nmap-os-detection.png`

**Scan output files:**
- `nmap_basic_scan.txt`
- `nmap_service_detection.txt`
- `nmap_full_tcp_scan.txt`
- `nmap_os_detection.txt`

## 6. Limitations

- Testing was restricted to the local Kali Linux virtual machine.
- Only TCP scanning was performed; UDP scanning was not included.
- The Python HTTP server was intentionally started for testing and was bound to localhost.
- Operating system detection did not produce an exact match.
- The results represent the state of the local environment during the assessment.

## 7. Skills Demonstrated

- Network reconnaissance
- TCP port scanning
- Service and version detection
- Full TCP port enumeration
- Operating system fingerprinting
- Nmap command-line usage
- Security assessment documentation
- Evidence collection and reporting

## 8. Conclusion

This project provided practical experience with Nmap and fundamental network reconnaissance techniques. It demonstrated how to identify open ports, detect services, perform comprehensive TCP port scans, and attempt operating system identification.

The project also reinforced the importance of understanding exposed services and documenting security assessment findings clearly.

**All scanning activities were conducted against my own local lab environment.**
