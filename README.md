Here's a detailed and well-structured README for your Tokenized Scholarship Grant System smart contract:

---

# 🎓 Tokenized Scholarship Grant System

A decentralized platform built on Ethereum for creating, managing, and awarding scholarships using smart contracts.

## 📜 Overview

This smart contract enables sponsors to create scholarships and students to apply for them transparently. It ensures secure tracking of applications and awards using blockchain technology.

## 🚀 Features

- **Scholarship Creation**: Sponsors can create scholarships with a name, amount, and activation status.
- **Student Applications**: Students can submit applications with justification and personal details.
- **Awarding Scholarships**: Scholarships can be awarded to selected applicants, ensuring transparency and immutability.
- **Event Logging**: Key actions like creation, application, and awarding are logged via events.

## 🏗️ Contract Structure

### 📘 Structs

- `Scholarship`
  - `id`: Unique identifier
  - `name`: Scholarship name
  - `amount`: Grant amount
  - `sponsor`: Creator of the scholarship
  - `isActive`: Status of availability
  - `isAwarded`: Whether it has been awarded
  - `awardedTo`: Recipient address

- `Application`
  - `scholarshipId`: Target scholarship
  - `student`: Applicant's address
  - `studentName`: Name of the student
  - `justification`: Reason for applying
  - `timestamp`: Submission time

### 📊 State Variables

- `scholarshipCounter`: Tracks total scholarships
- `applicationCounter`: Tracks total applications

### 🔗 Mappings

- `scholarships`: Maps scholarship ID to `Scholarship`
- `applications`: Maps application ID to `Application`
- `scholarshipApplications`: Maps scholarship ID to array of application IDs
- `studentApplications`: Maps student address to array of application IDs

### 📣 Events

- `ScholarshipCreated`: Triggered when a scholarship is created
- `ApplicationSubmitted`: Triggered when a student applies
- `ScholarshipAwarded`: Triggered when a scholarship is awarded

## Contract Details :0xd9145CCE52D386f254917e481eB44e9943F39138
<img width="1857" height="983" alt="image" src="https://github.com/user-attachments/assets/7ff0c9be-2bf3-4928-99ac-bbd441827deb" />

