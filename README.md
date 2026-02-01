
# Pharmacy Management System

**A comprehensive digital solution for modernizing pharmacy operations**
Developed as part of MBI801: Information Systems Analysis and Design

---

## Table of Contents

* Overview
* Problem Statement
* System Features
* Architecture
* Technical Documentation
* Project Team
* Risk Analysis
* Cultural Considerations
* License

---

## Overview

The Pharmacy Management System is an integrated digital platform designed to automate and streamline pharmacy operations. This project addresses critical inefficiencies in manual prescription handling, inventory management, and customer service processes that are common in small to medium-sized pharmacies.

**Key Statistics:**

* 50% reduction in prescription processing time
* Real-time inventory tracking
* 100% secure prescription uploads
* Multi-channel order placement

---

## Problem Statement

Many community pharmacies currently face significant operational challenges:

| Challenge                      | Impact                                                              | Our Solution                                                 |
| ------------------------------ | ------------------------------------------------------------------- | ------------------------------------------------------------ |
| Manual Prescription Processing | Customers must deliver prescriptions in person, leading to delays   | Secure online prescription upload with automated validation  |
| Limited Inventory Control      | Frequent stock shortages and overstocking issues                    | Real-time inventory monitoring with automatic reorder alerts |
| Poor Customer Tracking         | Lost purchase history makes managing long-term treatments difficult | Comprehensive customer profiles with full medication history |
| Payment Delays                 | Manual processing extends checkout times and increases errors       | Integrated secure payment gateway with instant confirmations |

**Consequences:**

* Lower operational efficiency
* Rising operational costs
* Higher risk of medication errors
* Declining customer satisfaction

---

## System Features

### 1. Prescription Management

* Secure Online Upload: Customers can upload prescriptions remotely
* Automated Validation: System validates format, authenticity, and doctor signatures
* Pharmacist Review Interface: Digital workflow for approval or rejection
* Status Tracking: Real-time updates on prescription processing

### 2. Inventory Control

* Real-Time Monitoring: Live stock level tracking
* Automatic Alerts: Low-stock notifications to pharmacists
* Supplier Integration: Automated reorder notifications
* Expiry Date Management: Track and alert on medications nearing expiry

### 3. Order & Payment Processing

* Multi-Channel Orders: Online and in-store ordering support
* Secure Payment Gateway: Compliant transaction processing
* Order Tracking: Real-time status updates for customers
* Digital Receipts: Automated receipt generation and delivery

### 4. Customer Management

* Profile Maintenance: Comprehensive customer information storage
* Purchase History: Complete medication usage tracking
* Personalized Recommendations: AI-driven medication suggestions
* Communication Hub: Automated notifications and updates

---

## Architecture

The system follows a Three-Layer Architecture pattern for optimal scalability and maintainability:

VIEW LAYER
(User Interactions: Customer, Pharmacist, Doctor)

CONTROLLER LAYER
(Business Logic: PrescriptionHandler, InventoryManager)

DOMAIN LAYER
(Data & Services: Database, NotificationService)

### Layer Responsibilities

#### View Layer

* Actors: Customer, Pharmacist, Doctor, Supplier
* Responsibility: User interface and interaction handling
* Components: Web forms, mobile interfaces, admin dashboards

#### Controller Layer

* Components:

  * PrescriptionHandler: Manages prescription workflow
  * InventoryManager: Controls stock operations
* Responsibility: Business logic, validation, workflow coordination

#### Domain Layer

* Components:

  * Database: Centralized data storage
  * NotificationService: Automated messaging
  * Inventory: Stock management
  * Medication: Drug information repository
* Responsibility: Data persistence, automated services, external integrations

---

## Technical Documentation

### Diagrams & Models

| Document Type     | Description                                   |
| ----------------- | --------------------------------------------- |
| Use Case Diagrams | System interactions and actor relationships   |
| Sequence Diagrams | Step-by-step process flows for core use cases |
| Activity Diagrams | Workflow and decision logic visualization     |
| Class Diagrams    | System structure and relationships            |
| ER Diagrams       | Database schema and entity relationships      |
| CRC Cards         | Class responsibilities and collaborations     |

### Core Use Cases

#### 1. Upload Prescription

**Primary Actor:** Customer
**Goal:** Securely submit prescription for pharmacist review

**Key Steps:**

1. Customer logs in and uploads prescription file
2. System validates format and authenticity
3. Doctor signature verification
4. Encrypted storage in database
5. Pharmacist notification
6. Customer receives confirmation

#### 2. Preparing Medication

**Primary Actors:** Pharmacist, Customer
**Goal:** Prepare medication accurately and notify customer

**Key Steps:**

1. Pharmacist reviews approved prescriptions
2. System checks inventory availability
3. If stock available: Prepare medication, update status, notify customer
4. If stock unavailable: Alert supplier, inform customer of delay
5. Doctor notification for hold status if needed

---

## Project Team

**Course:** MBI801 - Information Systems Analysis and Design
**Tutor:** Saranya Selvarangan
**Group:** 5

| Team Member                | Student ID | Primary Contributions                                                         |
| -------------------------- | ---------- | ----------------------------------------------------------------------------- |
| Jiajia Li                  | 270778593  | System Vision Document, Event Decomposition, Use Case List, CRC Card Modeling |
| Abirami                    | 270780482  | Detailed Use Case Descriptions, System Sequence Diagrams                      |
| Bryan Emmanuel Ferdinandus | 270736497  | Domain Model Class Diagram, ER Diagram                                        |
| Umanga Joshi               | 270487280  | Use Case Diagrams, Activity Diagrams                                          |

### My Contribution (Abirami)

As the Sequence Diagram Specialist for this project, I was responsible for:

#### System Sequence Diagrams

Created detailed sequence diagrams for:

1. Upload Prescription
2. Preparing Medication

#### Detailed Use Case Descriptions

Authored comprehensive documentation including:

* Actor identification
* Step-by-step flows
* Exception handling
* Edge case analysis

**Timeline:** Completed September 13-15, 2025
---

## Risk Analysis

### Scalability Risks

| Risk                      | Impact          | Mitigation Strategy         |
| ------------------------- | --------------- | --------------------------- |
| Performance Bottlenecks   | System slowdown | Regular performance testing |
| Inadequate Infrastructure | System crashes  | Cloud infrastructure        |
| Poor Database Design      | Slow retrieval  | Proper indexing             |
| Integration Limits        | Service failure | Fallback mechanisms         |

### Data Integrity Risks

| Risk                | Impact          | Mitigation Strategy  |
| ------------------- | --------------- | -------------------- |
| Human Error         | Inaccurate data | Automated validation |
| System Failures     | Data loss       | Regular backups      |
| Unauthorized Access | Breaches        | Encryption           |
| Sync Issues         | Inconsistency   | Real-time protocols  |

### Security Measures

* ACID principles
* End-to-end encryption
* Role-based access control
* Security audits
* Regulatory compliance

---

## Cultural Considerations

The system design incorporates principles to ensure cultural inclusivity and respect for Aotearoa New Zealand’s bicultural foundation.

### Core Principles

* Relationship-centered design
* Respectful handling of information
* Ethical stewardship of data

### Inclusive Design Features

* Bilingual Interface
* Accessible UI
* Multi-device Support
* Digital Literacy Support


---

## License

This project was developed for academic purposes as part of the MBI801 course at the Yoobee College of Creative Innovation. All rights reserved by the project team.


---

## Acknowledgments

* Tutor: Saranya Selvarangan
* Yoobee College of Creative Innovation 
* Course: MBI801

---

## Contact

Project inquiries related to MBI801 – Yoobee College of Creative Innovation 


---

