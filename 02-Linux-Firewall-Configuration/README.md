# Linux Firewall Configuration Using UFW

## Project Overview
This project demonstrates the configuration and management of a Linux firewall using UFW (Uncomplicated Firewall) in Kali Linux.

## Objectives
- Configure default incoming and outgoing firewall policies.
- Enable and verify the UFW firewall.
- Inspect firewall rules.
- Understand how firewall policies control network traffic.

## Tools and Environment
- Kali Linux
- UFW (Uncomplicated Firewall)
- Oracle VirtualBox

## Firewall Configuration

| Setting | Configuration |
|---|---|
| Incoming traffic | Deny by default |
| Outgoing traffic | Allow by default |
| Logging | Low |
| Firewall status | Active |
| Startup | Enabled |

## Verification
The firewall configuration was verified using:

```bash
sudo ufw status verbose
sudo ufw status numbered
```

The firewall reported an active status with incoming traffic denied and outgoing traffic allowed by default.

## Testing Limitations
An independent external connectivity test was not completed. The project focuses on firewall configuration, policy management and status verification.

## Conclusion
This project provided practical experience configuring a Linux firewall, applying default traffic policies, enabling UFW and verifying firewall rules.

## Project Files

| File | Description |
|---|---|
| `configure_firewall.sh` | Bash script that configures UFW firewall policies, enables low-level logging and allows the user to enable the firewall. |
| `ufw_status.txt` | Records the firewall's active status, default policies and logging configuration. |
| `ufw_rules.txt` | Records the configured firewall rules. |
| `screenshots/` | Contains screenshots of the firewall status, numbered rules and configuration script. |

## How to Run the Script

1. Open a terminal in the project directory.
2. Make the script executable:

   ```bash
   chmod +x configure_firewall.sh
