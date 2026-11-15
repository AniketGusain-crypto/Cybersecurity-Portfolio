Nmap Network Reconnaissance – Analysis Report

1. Basic Network Scan

Objective

Identify the availability and TCP port status of the local Kali Linux machine.

Target

IP address: 127.0.0.1

Hostname: localhost

Tool: Nmap 7.94SVN

Command Used

nmap 127.0.0.1 -oN nmap_basic_scan.txt

Findings

The target host was reachable.

Nmap scanned its default 1,000 common TCP ports.

All 1,000 scanned ports were reported as closed.

No open TCP ports were identified.

The scan completed in approximately 0.18 seconds.

Security Interpretation

No services were found listening on the scanned TCP ports at the time of testing.

Closed ports indicate that connection attempts were actively rejected. This does not establish that the entire machine is secure, because other ports, protocols and potential vulnerabilities were not assessed.

Conclusion

The basic reconnaissance scan successfully identified the target as reachable and established the status of its 1,000 commonly scanned TCP ports.

2. Service and Version Detection

Objective

Identify the service running on TCP port 8000 and determine its service version.

Command Used

nmap -sV -p 8000 127.0.0.1 -oN nmap_service_detection.txt

Findings

Port 8000/tcp was open.

Nmap identified the service as HTTP.

The detected implementation was SimpleHTTPServer 0.6.

The server was associated with Python 3.11.9.

 Security Interpretation

An open port indicates that a service is accepting connections. Exposed services should be reviewed to ensure they are necessary and appropriately configured.

The test server was deliberately started for this lab and bound to 127.0.0.1, restricting access to the local machine.

Conclusion

Nmap successfully identified the HTTP service running on port 8000 and demonstrated service version detection.
## 3. Full TCP Port Scan

### Objective
Identify all open TCP ports on the local Kali Linux machine.

### Command Used
nmap -p- 127.0.0.1 -oN nmap_full_tcp_scan.txt

### Findings
- Nmap scanned all 65,535 TCP ports.
- 65,534 ports were reported as closed.
- Port 8000/tcp was identified as open.
- The service name was displayed as http-alt.
- The target host was reachable.
- The scan completed in approximately 0.98 seconds.

### Security Interpretation
Port 8000 was open because the Python HTTP test server was running during the scan.

The remaining scanned TCP ports actively rejected connection attempts. This scan assessed TCP ports only and did not assess UDP services.

### Conclusion
The full TCP scan successfully identified the open port on the local Kali machine and demonstrated how a comprehensive port scan can reveal services beyond Nmap's default 1,000 ports.
