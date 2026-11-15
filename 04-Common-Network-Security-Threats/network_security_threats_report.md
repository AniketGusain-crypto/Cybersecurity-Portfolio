# Common Network Security Threats

## 1. Introduction

Modern organisations depend on computer networks to exchange information, provide online services and manage important business operations. However, connecting systems to networks also creates opportunities for cybercriminals to disrupt services, intercept information and gain unauthorised access.

Network administrators therefore need to understand the different methods attackers use and the security measures that can reduce their effectiveness. This report discusses four network security threats: Denial-of-Service attacks, Man-in-the-Middle attacks, IP spoofing and DNS poisoning or hijacking. Each threat is explained using a real-world incident and practical prevention techniques.

## 2. Denial-of-Service (DoS and DDoS) Attacks

### Understanding the attack

A Denial-of-Service attack aims to prevent legitimate users from accessing a network resource or online service.

In a traditional DoS attack, the malicious traffic generally comes from one source. A Distributed Denial-of-Service attack uses multiple systems to target the same service simultaneously. Attackers may take control of vulnerable devices, such as internet-connected cameras and routers, and combine them into a botnet.

When the target receives more requests or traffic than it can handle, its available bandwidth, processing capacity or application resources may become exhausted. This can cause the service to become extremely slow or completely unavailable.

### Real-world incident: Dyn DDoS attack (2016)

In October 2016, DNS infrastructure provider Dyn was targeted by a large DDoS attack. The attack involved the Mirai botnet, which had compromised numerous internet-connected devices.

The infected devices generated large amounts of traffic directed at Dyn's infrastructure. Since many popular websites depended on Dyn's DNS services, the disruption affected users trying to access a range of online platforms.

This incident demonstrated how insecure connected devices can be combined to disrupt services far beyond the devices' individual owners.

### Possible consequences

- Customers may be unable to access websites or applications.
- Businesses can lose revenue while services are unavailable.
- Organisations may experience damage to their reputation.
- Technical teams may need to redirect resources towards incident response.
- Services that depend on the affected infrastructure may also experience disruption.

### Three recommended security measures

1. **Deploy DDoS protection:** Use specialist mitigation services, traffic-scrubbing systems or suitable content delivery network services to identify and filter malicious traffic.
2. **Monitor network traffic:** Establish traffic baselines and configure alerts for unusual increases in connections, requests or bandwidth consumption. Rate limiting can also help control excessive requests.
3. **Secure connected devices:** Change default credentials, install firmware updates and disable unnecessary services on routers, cameras and other internet-connected equipment.

## 3. Man-in-the-Middle (MITM) Attacks

### Understanding the attack

A Man-in-the-Middle attack takes place when an attacker manages to position themselves between two parties that are communicating. Instead of communicating directly, the victim's information passes through infrastructure controlled or monitored by the attacker.

Depending on the circumstances, the attacker may be able to read information, collect login credentials or modify messages.

One possible scenario involves a fraudulent public Wi-Fi hotspot. A user may connect to a wireless network that appears legitimate, unaware that the connection is controlled by an attacker.

MITM attacks can also involve compromised network equipment, malicious proxies or weaknesses in certificate validation.

### Real-world incident: DigiNotar certificate compromise (2011)

In 2011, the Dutch certificate authority DigiNotar suffered a security compromise that resulted in fraudulent digital certificates being issued for several domains.

Google reported that fraudulent certificates had been used in attempted attacks involving Google services, particularly affecting users in Iran.

Digital certificates help browsers verify the identity of websites. When a trusted certificate authority is compromised, attackers may be able to make fraudulent connections appear more trustworthy than they really are.

The incident highlighted the importance of protecting certificate authorities and maintaining reliable certificate validation.

### Possible consequences

- Attackers may collect usernames, passwords and other sensitive information.
- Private communications may be exposed.
- Information exchanged between parties may be modified.
- Victims may become targets of identity theft or financial fraud.
- Organisations may lose customer confidence.

### Three recommended security measures

1. **Protect communications with encryption:** Use properly configured HTTPS and TLS connections. Users should never ignore browser warnings about invalid or untrusted certificates.
2. **Improve wireless network security:** Use trusted Wi-Fi networks, strong wireless encryption and a reputable VPN when accessing sensitive services over untrusted connections.
3. **Strengthen account and certificate security:** Maintain valid certificates, monitor certificate warnings and implement multi-factor authentication to make stolen passwords less useful to attackers.

## 4. IP Spoofing

### Understanding the attack

IP spoofing is a technique in which an attacker falsifies the source IP address contained in network packets. This makes the packets appear to have originated from a different address.

Attackers may use this technique to make malicious traffic more difficult to trace or to exploit systems that trust traffic based on its apparent source address.

A common application is a reflection or amplification attack. The attacker sends requests to third-party servers while using the intended victim's IP address as the false source address. The servers then send their responses to the victim rather than to the attacker.

The amount of traffic received by the victim can become much larger than the original requests.

### Real-world incident: GitHub DDoS attack (2018)

In February 2018, GitHub experienced a major DDoS incident that reached approximately 1.35 terabits per second.

The attackers exploited exposed Memcached servers to generate amplified responses. By using forged source IP addresses, they caused the servers to direct their responses towards GitHub.

The incident showed how IP spoofing, combined with vulnerable internet-facing services, can produce extremely large volumes of unwanted network traffic.

### Possible consequences

- Network services may be overwhelmed by unwanted traffic.
- Legitimate users may experience service interruptions.
- Identifying the original source of malicious packets may become difficult.
- Spoofed traffic can support reflection and amplification attacks.
- Network administrators may face additional challenges during incident investigation.

### Three recommended security measures

1. **Apply source-address filtering:** Configure network infrastructure to reject packets with source addresses that are not valid for the network from which they arrive. BCP 38 provides guidance on ingress filtering.
2. **Configure firewall and router rules:** Use access control lists and anti-spoofing rules to restrict packets containing suspicious or invalid source addresses.
3. **Monitor and mitigate abnormal traffic:** Use network monitoring and upstream DDoS protection to identify unusual traffic patterns and reduce the impact of reflection attacks.

## 5. DNS Poisoning and DNS Hijacking

### Understanding the attack

The Domain Name System (DNS) allows users to access websites through readable domain names instead of remembering numerical IP addresses.

DNS poisoning occurs when incorrect information is introduced into a DNS resolver's cache. As a result, a user requesting a legitimate domain may receive an incorrect IP address and be directed somewhere else.

DNS hijacking is a broader category of attacks involving unauthorised changes to DNS settings, records or accounts. Attackers may manipulate these components to redirect users towards systems under their control.

These techniques are dangerous because users may believe they are visiting a genuine website when their connection has actually been redirected.

### Real-world incident: Sea Turtle campaign (2019)

In 2019, Cisco Talos published research describing a campaign known as Sea Turtle. The activity involved DNS hijacking against organisations in several sectors and countries.

The attackers manipulated DNS information to redirect users towards attacker-controlled infrastructure. This technique could be used to capture credentials and support further compromise of targeted organisations.

The campaign illustrated how interference with DNS infrastructure can undermine the trust users place in familiar domain names.

### Possible consequences

- Users may be redirected to fraudulent websites.
- Login credentials may be collected by attackers.
- Email and other domain-dependent services may be disrupted.
- Sensitive information may be exposed.
- Organisations may suffer financial and reputational damage.

### Three recommended security measures

1. **Protect DNS administration accounts:** Use strong, unique passwords and multi-factor authentication for domain registrar and DNS provider accounts. Limit administrative permissions to authorised personnel.
2. **Use secure DNS configurations:** Keep DNS software updated, restrict unnecessary zone transfers and implement DNSSEC validation where supported.
3. **Monitor DNS records:** Regularly review important DNS entries and configure alerts for unexpected changes. Investigate unusual DNS responses and redirect behaviour.

## 6. Comparison of Network Security Threats

| Threat | Main attack method | Potentially affected parties | General execution difficulty | General mitigation difficulty |
|---|---|---|---|---|
| DoS/DDoS | Overloading a service with excessive traffic | Online businesses, service providers and their customers | Moderate to high, depending on the attack's scale | Moderate; effective protection may require specialist services |
| MITM | Intercepting or altering communication between parties | Individuals and organisations using affected connections | Moderate; depends on access and existing security weaknesses | Moderate; encryption and secure connection practices reduce exposure |
| IP spoofing | Falsifying the source address in network packets | Network operators and services receiving spoofed traffic | Moderate; often combined with other techniques | Moderate; filtering and anti-spoofing configurations are important |
| DNS poisoning/hijacking | Manipulating DNS responses, records or settings | Domain owners, website visitors and organisations | Moderate to high, depending on the target | Moderate; secure account management and DNS protections are required |

*These ratings are broad comparisons. Actual difficulty varies according to the target environment, attacker resources and security controls already in place.*

## 7. Important Lessons for Network Administrators

1. **Use multiple layers of protection:** Firewalls alone cannot address every network threat. Organisations should combine access controls, encryption, secure configurations, network segmentation and specialist protection where necessary.
2. **Pay attention to unusual network behaviour:** Regularly review traffic patterns, DNS activity, system logs and security alerts. Early identification can reduce the impact of an incident.
3. **Maintain and protect network infrastructure:** Install security updates, remove default credentials, restrict administrative access and prepare an incident response procedure.

## 8. Conclusion

The incidents discussed in this report demonstrate that network threats can affect different parts of an organisation's infrastructure. DDoS attacks threaten service availability, MITM attacks target communication security, IP spoofing can support traffic-based attacks, and DNS manipulation can redirect users away from legitimate services.

A reliable network security strategy should not depend on a single defensive measure. Continuous monitoring, secure configuration, access restrictions, encryption and appropriate incident response arrangements are all important for reducing organisational risk.

## 9. References

1. Cloudflare. (2016). *How the Dyn outage affected Cloudflare*. https://blog.cloudflare.com/how-the-dyn-outage-affected-cloudflare/
2. Google Security Blog. (2011). *An update on attempted man-in-the-middle attacks*. https://security.googleblog.com/2011/08/update-on-attempted-man-in-middle.html
3. GitHub. (2018). *DDoS incident report*. https://github.blog/news-insights/company-news/ddos-incident-report/
4. Internet Engineering Task Force. (2000). *Network ingress filtering: Defeating denial of service attacks which employ IP source address spoofing (BCP 38)*. https://datatracker.ietf.org/doc/html/bcp38
5. Cisco Talos. (2019). *DNS hijacking abuses trust in core Internet service*. https://blog.talosintelligence.com/seaturtle/
6. Canadian Centre for Cyber Security. *Domain Name System (DNS) tampering*. https://www.cyber.gc.ca/en/guidance/domain-name-system-dns-tampering-itsap40021
