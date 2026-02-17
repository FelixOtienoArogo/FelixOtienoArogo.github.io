---
layout: single
title: "Designing an Infrastructure-as-Code CI/CD Deployment Pipeline on AWS"
permalink: /projects/cloud/iac-cicd-cloudformation/
sidebar:
  nav: "projects"
author_profile: true
image: /assets/images/projects/cloud/iac-cicd-cloudformation/image32.png
---

## Project: CI/CD-Driven Infrastructure Automation with AWS CloudFormation

**Timeline:** September 2025  
**Role:** Solutions Architect (Infrastructure Automation & Platform Engineering)  
**Skills:** AWS CloudFormation, AWS CodeCommit, AWS CodePipeline, Git, Multi-Region Deployment, VPC Architecture, EC2, S3 Static Hosting  

---

## Executive Summary

Designed and implemented a Git-driven Infrastructure-as-Code (IaC) deployment pipeline using AWS CloudFormation, CodeCommit, and CodePipeline.

The solution enables:

- Version-controlled infrastructure templates
- Automated stack creation and updates
- Modular networking and application layers
- Static and dynamic website deployment
- Multi-region infrastructure replication

This architecture reflects enterprise DevOps and platform engineering practices where infrastructure updates are governed through CI/CD rather than manual configuration.

---

# Architecture Overview

The solution consists of:

- **Source Control:** AWS CodeCommit repository
- **CI/CD Engine:** AWS CodePipeline
- **Infrastructure Definition:** AWS CloudFormation templates
- **Static Website Layer:** Amazon S3
- **Network Layer:** Custom VPC & public subnet
- **Application Layer:** EC2 (Apache, MariaDB, PHP)
- **Multi-Region Deployment:** us-east-1 & us-west-2

![CI/CD Architecture Overview](./assets/images/image32.png)

---

# Phase 1 – Creating Infrastructure from Scratch (S3 Website)

Created `S3.yaml` CloudFormation template defining:

- Amazon S3 bucket
- Static website configuration
- Outputs (website URL)
- DeletionPolicy: Retain

Deployed using AWS CLI in Cloud9.

📸 **Cloud9 IDE – S3.yaml Template**
![S3 Template](./assets/images/image29.png)

📸 **CLI Stack Creation Output**
![Create Stack CLI](./assets/images/image8.png)

📸 **CloudFormation – CREATE_COMPLETE**
![Stack Complete](./assets/images/image37.png)

📸 **S3 Static Website Running**
![Static Website](./assets/images/image2.png)

This phase demonstrates foundational Infrastructure-as-Code implementation.

---

# Phase 2 – Introducing Version Control with CodeCommit

Cloned `CFTemplatesRepo` into Cloud9 and established Git workflow:

- git clone
- git add
- git commit
- git push

📸 **CodeCommit Repository Overview**
![CodeCommit Repo](./assets/images/image30.png)

📸 **Git Commit & Push in Cloud9**
![Git Push](./assets/images/image5.png)

This introduced:

- Infrastructure versioning
- Auditability
- Change tracking

---

# Phase 3 – CI/CD-Driven Network Layer Deployment

Created `cafe-network.yaml` defining:

- VPC
- Public Subnet
- Route Tables
- Internet Gateway

Committed to CodeCommit.

CodePipeline automatically:

- Detected commit
- Triggered pipeline
- Deployed CloudFormation stack

📸 **CodePipeline Execution Graph**
![Pipeline Execution](./assets/images/image24.png)

📸 **CloudFormation Stack – CREATE_COMPLETE**
![Network Stack](./assets/images/image25.png)

📸 **VPC Console – Cafe VPC**
![VPC Console](./assets/images/image7.png)

This demonstrates automated environment provisioning.

---

# Phase 4 – Controlled Infrastructure Update

Enhanced network template to export:

- VPC ID
- Subnet ID

Pushed update to repository.

Pipeline triggered stack UPDATE.

📸 **CloudFormation Change Complete**
![Update Complete](./assets/images/image33.png)

📸 **Outputs Showing Exported Values**
![Stack Outputs](./assets/images/image26.png)

This validates controlled infrastructure evolution through CI/CD.

---

# Phase 5 – Application Layer Automation

Created `cafe-app.yaml` defining:

- EC2 instance
- Security Group
- UserData installing:
  - Apache
  - MariaDB
  - PHP
- Dynamic café website

Committed to CodeCommit.

Pipeline `CafeAppPipeline` deployed automatically.

📸 **CodePipeline – Application Deployment**
![App Pipeline](./assets/images/image27.png)

📸 **EC2 Instance Running**
![EC2 Instance](./assets/images/image10.png)

📸 **Dynamic Café Website**
![Dynamic Website](./assets/images/image6.png)

This phase demonstrates automated full-stack provisioning.

---

# Phase 6 – Multi-Region Infrastructure Replication

Duplicated network and application stacks into **us-west-2 (Oregon)**.

Steps:

- CloudFormation CLI deployment
- New key pair creation
- Application stack launch
- Instance type adjustment

📸 **CLI Stack Creation – us-west-2**
![Oregon CLI](./assets/images/image14.png)

📸 **VPC Console – Oregon Region**
![Oregon VPC](./assets/images/image4.png)

📸 **EC2 in Oregon Running**
![Oregon EC2](./assets/images/image15.png)

📸 **Website Running in Oregon**
![Oregon Website](./assets/images/image1.png)

This demonstrates:

- Infrastructure portability
- Regional scalability
- Reproducible environments

---

# Architectural Outcomes

### Git-Based Infrastructure Governance
All infrastructure changes are version-controlled.

### CI/CD-Driven Stack Management
No manual console provisioning required.

### Modular Stack Separation
Network and application layers decoupled.

### Cross-Region Scalability
Infrastructure deployable in multiple AWS Regions.

### Reduced Configuration Drift
Environment state controlled via template definitions.

---

# Enterprise Impact

This project elevates Infrastructure-as-Code from basic template usage to:

- Platform engineering practice
- CI/CD-integrated deployment model
- Governed infrastructure lifecycle
- Multi-region operational readiness

It reflects how modern cloud platforms are built in enterprise environments.

---

## Conclusion

Successfully implemented a CI/CD-driven Infrastructure-as-Code pipeline using AWS CloudFormation, CodeCommit, and CodePipeline.

The solution demonstrates automation maturity, operational governance, and scalable environment replication — core competencies expected of modern cloud architects and platform engineers.

---

[Back to Projects](/projects/)
