# Social Engineering Attacks

## 1. Introduction

Cybersecurity incidents do not always begin with an attacker exploiting a technical weakness. In many situations, the attacker first attempts to manipulate a person into making a mistake. This approach is known as social engineering.

Social engineering uses psychological techniques to influence people's decisions. Attackers may take advantage of trust, curiosity, fear, urgency or a person's willingness to help. Their objective may be to obtain confidential information, gain access to an organisation's systems or persuade someone to carry out an unsafe action.

The Verizon 2024 Data Breach Investigations Report highlights the continuing role of human behaviour in security incidents. This makes employee awareness an important part of protecting organisational information.

This report examines four social engineering techniques: phishing, pretexting, baiting and quid pro quo attacks.

## 2. Phishing

### Definition and attack process

Phishing involves sending fraudulent communications that imitate trusted organisations or individuals. The attacker attempts to convince the recipient to disclose information, visit a malicious website, download an infected file or authorise a payment.

A typical phishing message may claim that an account has been locked, a payment requires attention or an urgent security problem needs to be resolved. The recipient is encouraged to act quickly, often without checking whether the request is genuine.

Phishing can be delivered through email, text messages, phone calls and other communication platforms.

### Common forms of phishing

- **Spear phishing:** A personalised attack directed at a particular individual or organisation. The attacker may include genuine details about the recipient to make the communication appear authentic.
- **Whaling:** A form of targeted phishing aimed at senior personnel, such as executives and directors, who may have access to sensitive information or financial authority.
- **Vishing:** A fraudulent phone call or voice message designed to obtain information or persuade someone to take an unsafe action.
- **Smishing:** A phishing attempt delivered through SMS or text messaging, often containing a suspicious link or an urgent request.

### Documented incident: RSA security breach (2011)

RSA disclosed a security incident in 2011 that began with a targeted email sent to employees. The message contained a spreadsheet attachment designed to encourage the recipient to open it.

Opening the attachment helped the attackers exploit a software vulnerability and establish access within the organisation's environment.

Information associated with RSA's SecurID authentication products was subsequently compromised. The incident is an important example of how an apparently ordinary email can become the entry point for a much larger security problem.

### Four ways to reduce phishing risk

1. **Train employees to examine messages carefully:** Awareness sessions should cover suspicious links, unexpected attachments, misleading sender addresses and messages that pressure recipients to act immediately.
2. **Confirm unusual requests before responding:** Requests involving payments, passwords or confidential information should be checked through a separate, trusted communication channel.
3. **Strengthen email protection:** Use spam filtering, malicious attachment detection, link inspection and domain authentication measures such as SPF, DKIM and DMARC.
4. **Adopt phishing-resistant authentication:** Use methods such as passkeys or FIDO2 security keys where possible. These offer stronger protection against credential theft than passwords alone.

## 3. Pretexting

### Definition and attack process

Pretexting occurs when someone invents a believable situation to gain another person's cooperation. The attacker adopts a false identity or role and uses that identity to make a request appear legitimate.

For example, a criminal might claim to be an organisation's IT technician and contact an employee about an alleged account problem. The attacker may ask for login details or an authentication code, claiming that the information is needed to restore access.

Pretexting often involves preparation. Attackers may research an organisation's employees, internal departments, job titles and procedures before contacting their targets.

### Documented incident: Twitter security breach (2020)

Twitter experienced a major security incident in July 2020. Investigations found that attackers had used social engineering to approach employees while pretending to be members of the company's internal IT help desk.

The attackers used the false support identity to persuade employees to provide access to internal systems. They subsequently gained access to internal tools and compromised several high-profile accounts.

The incident demonstrated that attackers do not always need to break through a technical security barrier directly. Manipulating employees who already have legitimate access can also create a serious security risk.

### Three ways to prevent pretexting

1. **Introduce identity verification procedures:** Employees should confirm the identity of anyone requesting sensitive information or access, particularly when the request arrives unexpectedly.
2. **Keep authentication information private:** Passwords and one-time MFA codes must never be disclosed to someone claiming to provide technical assistance.
3. **Restrict and monitor access:** Apply least-privilege permissions, additional approval for sensitive actions and monitoring for unusual account activity.

## 4. Baiting

### Definition and attack process

Baiting is based on offering something that encourages a person to take a risky action. The attacker creates an opportunity that appears attractive, useful or interesting, hoping that the victim will lower their guard.

The bait may be a physical object or a digital offer.

### Physical baiting

One example involves leaving an unfamiliar USB drive in a workplace or public location. The device might carry a label suggesting that it contains important or interesting information.

Someone who connects the device to a work computer may unintentionally expose that computer to malicious software or other security risks.

### Digital baiting

Digital baiting may involve websites advertising free applications, games, documents or downloads. A file that appears useful may contain malicious code or lead the user to a fraudulent website.

Users should be particularly careful when downloading software from unknown websites or accepting unexpected offers.

### Research example: Unattended USB drives (2016)

Researchers published a study titled *Users Really Do Plug in USB Drives They Find* in 2016. The researchers distributed 297 USB drives in public locations to examine how people would respond to finding them.

The research showed that many people picked up and connected the devices. This demonstrated that curiosity can influence people to interact with unknown removable media.

The study provides evidence of the human behaviour that physical USB baiting attempts to exploit. It was a behavioural experiment rather than a confirmed malware attack.

### Three ways to prevent baiting

1. **Follow removable-device policies:** Employees should not connect USB drives unless their origin and safety have been verified.
2. **Control the use of external devices:** Organisations can use endpoint security tools and device restrictions to prevent unauthorised removable media from accessing company computers.
3. **Use trusted download sources:** Employees should obtain software from approved sources and avoid unexpected offers or suspicious downloads.

## 5. Quid Pro Quo

### Definition and attack process

Quid pro quo is a social engineering technique in which an attacker promises a benefit or service in return for the victim's cooperation.

The attacker may pretend to offer technical support, solve a computer problem or provide access to a useful service. In exchange, the victim may be asked to reveal credentials, install software or grant remote access.

For example, an individual might receive an unsolicited call from someone claiming to be a support technician. The caller offers to fix a supposed computer issue but asks the employee to install a remote-access application.

The promised assistance is used to create trust and persuade the victim to give the attacker an opportunity to access their device.

### Prevention measures

- Contact IT support through officially published organisational channels rather than relying on unsolicited calls.
- Do not install remote-access applications at the request of an unverified person.
- Never exchange passwords or authentication codes for technical assistance.
- Report suspicious offers and support requests to the organisation's security team.

## 6. Comparison of Social Engineering Techniques

| Attack type | Main target | Psychological approach | Recommended defence |
|---|---|---|---|
| Phishing | Email, SMS and messaging users | Urgency, fear and impersonation | Employee awareness and email security controls |
| Pretexting | Employees and people with access to information | Authority, familiarity and trust | Independent identity verification |
| Baiting | Employees and curious individuals | Curiosity and the expectation of a reward | Removable media restrictions and safe download practices |
| Quid pro quo | People seeking help or services | Helpfulness and the promise of a benefit | Verify support requests through official channels |

## 7. Employee Security Awareness: Five-Point Checklist

Organisations should regularly reinforce the following practices through employee training:

1. **Identify suspicious messages:** Employees should learn to recognise unusual sender addresses, unexpected attachments, suspicious links and requests that create pressure to act quickly.
2. **Check the identity of the requester:** Unexpected requests for money, confidential information or system access should be independently verified.
3. **Protect account credentials:** Employees should understand that passwords and MFA codes are private and should not be shared with callers or message senders.
4. **Use devices and software responsibly:** Unknown USB drives and unapproved downloads should not be used on organisational devices.
5. **Report suspicious activity:** Employees should know how to contact the security team and report possible incidents as soon as they notice them.

## 8. Conclusion

Social engineering attacks take advantage of human decision-making rather than depending entirely on weaknesses in computer systems. Phishing attempts to deceive people through fraudulent communications, pretexting relies on invented identities, baiting uses attractive offers or objects, and quid pro quo promises a benefit in exchange for cooperation.

Organisations can reduce these risks by combining employee education with secure authentication, identity verification, access restrictions and clear reporting procedures.

Employees also play an important role in maintaining security. Taking time to question unexpected requests and verify unfamiliar people or offers can prevent a small mistake from becoming a serious security incident.

## 9. References

1. Verizon. (2024). *2024 Data Breach Investigations Report*. https://www.verizon.com/business/resources/Tdca/reports/2024-dbir-data-breach-investigations-report.pdf
2. New York State Department of Financial Services. (2023). *Twitter investigation report*. https://www.dfs.ny.gov/reports-and-publications/other-reports/Twitter_Report
3. Microsoft. (2011). *Microsoft Security Chronicles: RSA security incident coverage*. https://download.microsoft.com/download/E/5/8/E582E744-3347-40F3-B6FE-E863A5E9292E/Microsoft_Security_Chronicles_April14_2011.pdf
4. Google Research. (2016). *Users Really Do Plug in USB Drives They Find*. https://research.google/pubs/users-really-do-plug-in-usb-drives-they-find/
5. Cybersecurity and Infrastructure Security Agency. *Recognize and report phishing*. https://www.cisa.gov/secure-our-world/recognize-and-report-phishing
6. Cybersecurity and Infrastructure Security Agency. *Implementing phishing-resistant MFA*. https://www.cisa.gov/sites/default/files/publications/fact-sheet-implementing-phishing-resistant-mfa-508c.pdf
