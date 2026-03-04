---
layout: single
title: "Web Application Security Fundamentals & Vulnerability Analysis"
permalink: /projects/security/web-application-security-fundamentals/
sidebar:
  nav: "projects"
author_profile: true
image: /assets/images/projects/security/web-application-security/image30.png
---

## Project: Web Application Security Fundamentals & Vulnerability Analysis

**Timeline:** June 2025  
**Role:** Web Application Security Analyst  
**Platform:** HackTheBox Academy  
**Focus:** XSS, Injection Attacks, Sensitive Data Exposure, HTTP & API Analysis  

---

## Executive Summary

Conducted foundational web application security analysis covering front-end components, HTTP behavior, input handling weaknesses, and common exploitation vectors including HTML injection, Cross-Site Scripting (XSS), and command injection.

This project demonstrates practical understanding of how insecure web applications can be exploited and how vulnerabilities are classified and mitigated.

---

# Web Application Architecture

Web applications follow a layered client-server model:

- Browser (Client)
- Web Server
- Application Logic
- Database

![Web Application Architecture Overview](./assets/images/image31.png)

---

# Sensitive Data Exposure Analysis

Inspected login form source code to detect exposed credentials.

Identified embedded password value:

HiddenInPlainSight

![Login Form Source Code Inspection](./assets/images/image14.png)

### Security Risk:
Exposed credentials in client-side source can lead to unauthorized access.

---

# HTML Injection Testing

Submitted the following payload:

<a href="http://www.hackthebox.com">Click Me</a>

Observed rendered output:

Your name is Click Me

![HTML Injection Payload Execution](./assets/images/image5.png)

### Security Impact:
Improper input sanitization allows arbitrary HTML rendering.

---

# Cross-Site Scripting (XSS) Exploitation

Injected JavaScript payload to retrieve session cookie.

Retrieved cookie value:

XSSisFun

![XSS Payload Execution & Cookie Retrieval](./assets/images/image3.png)

### Security Risk:
- Session hijacking
- Credential theft
- Persistent client-side compromise

---

# Parameter Tampering & ID Enumeration

Tested GET parameter manipulation:

/index.php?id=0

Discovered elevated user:

superadmin

![Parameter Manipulation Output](./assets/images/image2.png)

### Security Risk:
Broken access control due to insufficient server-side validation.

---

# CVE & Vulnerability Research

## CVE-2014-6271

Classified under:

Command Injection

![CVE Classification Reference](./assets/images/image13.png)

---

## CVSS Severity Assessment

CVE-2017-0144 (EternalBlue)

CVSS v2 Score: 9.3

![CVSS Scoring Reference](./assets/images/image8.png)

Demonstrates ability to interpret vulnerability severity metrics.

---

# Key Security Concepts Demonstrated

- Client-side vs server-side trust boundaries
- Input validation failures
- Output encoding importance
- HTTP status code interpretation
- CVE classification and scoring
- Web attack surface analysis

---

# Enterprise Relevance

Modern cloud systems are heavily API-driven and web-based.  
Understanding web-layer vulnerabilities directly supports:

- Secure cloud application design
- WAF rule configuration
- API gateway protection
- DevSecOps pipelines
- Zero Trust architecture

---

## Conclusion

This project strengthened foundational knowledge of web application architecture and common vulnerability classes. By exploiting injection vectors and analyzing vulnerability severity, the lab reinforced the importance of secure coding practices and proactive security testing in modern web-based environments.

---

[Back to Security Projects](/projects/security/)
