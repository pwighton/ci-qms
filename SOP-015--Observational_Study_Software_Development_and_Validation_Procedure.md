---
title: "__NewInstitute__ Quality Manual"
subtitle: "SOP-015: Observational Study Software Development and Validation Procedure"
---

## 1.0 PURPOSE

This Standard Operating Procedure (SOP) establishes requirements for developing
custom software used to collect, process, or analyze subject data in
*observational studies* conducted by __NewInstitute__.

This procedure ensures that:

- Software requirements are specified and documented
- Software design and architecture are documented
- Development practices maintain code quality and traceability
- Testing is proportionate to risk
- Software releases are controlled and documented
- Defects are tracked and resolved
- Software is maintained throughout its lifecycle

## 2.0 SCOPE

This procedure applies to custom software developed by __NewInstitute__ for use
in *observational studies*, including:

- Software used to collect subject data (e.g., mobile applications, web-based
  applications, wearable device interfaces)
- Software used to process, transform, or analyze subject data

This procedure covers software development practices from requirements
specification through maintenance and retirement.

This procedure does **NOT** apply to:

- Commercial off-the-shelf (COTS) software, which is managed under
  [SOP-004: Computer System Validation, Data Integrity and Data Management
  Procedure](SOP-004--Computer_System_Validation_Data_Integrity_and_Data_Management_Procedure.md)
- Configuration of commercial software platforms (e.g., REDCap, EDC systems),
  which is managed under SOP-004
- Software developed by external vendors, which is managed under
  [SOP-006: Outsourced Activities
  Procedure](SOP-006--Outsourced_Activities_Procedure.md) with validation per
  SOP-004

Software validation, including risk-based validation methodology and formal
validation documentation, is managed under SOP-004. This procedure establishes
development practices that support validation activities.

Software-related documents are controlled under
[SOP-002: Document and Records Controls
Procedure](SOP-002--Document_and_Records_Controls_Procedure.md) and maintained
in the TMF.

Changes to validated software are managed under
[SOP-013: Change Control Procedure](SOP-013--Change_Control_Procedure.md) with
validation impact assessment performed per SOP-004.

This procedure applies to all __NewInstitute__ employees and subcontractors
involved in:

- Software requirements specification
- Software design and development
- Software testing
- Software release and deployment
- Software maintenance

## 3.0 REFERENCES, TERMS AND ACRONYMS

### 3.1 Guidance and Regulatory References

- [21 CFR Part 11](https://www.ecfr.gov/current/title-21/chapter-I/subchapter-A/part-11):
  Electronic Records; Electronic Signatures

- [ICH E6(R2)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/e6r2-good-clinical-practice-integrated-addendum-ich-e6r1):
  Good Clinical Practice: Integrated Addendum to ICH E6(R1)
  - Section 4.9 (Records and Reports)
  - Section 5.5 (Trial Management, Data Handling, and Recordkeeping)

- [GAMP 5](https://guidance-docs.ispe.org/doi/book/10.1002/9781946964571):
  A Risk-Based Approach to Compliant GxP Computerized Systems

- [FDA Guidance: Digital Health Technologies for Remote Data Acquisition in
  Clinical Investigations (2024)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/digital-health-technologies-remote-data-acquisition-clinical-investigations)

- [FDA Guidance: Electronic Systems, Electronic Records, and Electronic
  Signatures in Clinical Investigations (2024)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/electronic-systems-electronic-records-and-electronic-signatures-clinical-investigations-questions)

### 3.2 __NewInstitute__ References

1. [QM-001: Quality Manual](QM-001--QualityManual.md)

2. [SOP-002: Document and Records Controls
   Procedure](SOP-002--Document_and_Records_Controls_Procedure.md)

3. [SOP-004: Computer System Validation, Data Integrity and Data Management
   Procedure](SOP-004--Computer_System_Validation_Data_Integrity_and_Data_Management_Procedure.md)

4. [SOP-006: Outsourced Activities
   Procedure](SOP-006--Outsourced_Activities_Procedure.md)

5. [SOP-013: Change Control Procedure](SOP-013--Change_Control_Procedure.md)

### 3.3 Terms

- **ALCOA+ Principles**: Data integrity principles requiring data to be
  Attributable, Legible, Contemporaneous, Original, Accurate, Complete,
  Consistent, Enduring, and Available.

- **Defect**: An error, flaw, or fault in software that causes it to produce
  incorrect or unexpected results, or to behave in unintended ways.

- **Release**: A distribution of a software product that has been approved for
  deployment and use.

- **Software Requirements Specification**: A document that describes what the
  software must do, including functional requirements, performance requirements,
  and constraints.

- **Source Code**: The human-readable instructions written by developers that
  are compiled or interpreted to create executable software.

- **Version Control**: The management and tracking of changes to software source
  code, configuration, and documentation to ensure traceability and
  reproducibility.

### 3.4 Acronyms

- **ALCOA+**: Attributable, Legible, Contemporaneous, Original, Accurate,
  Complete, Consistent, Enduring, Available
- **COTS**: Commercial Off-the-Shelf
- **EDC**: Electronic Data Capture
- **GAMP**: Good Automated Manufacturing Practice
- **TMF**: Trial Master File

## 4.0 PROCEDURE

### 4.1 Overview

This procedure establishes requirements for:

- Specifying software requirements
- Documenting software design and architecture
- Implementing development practices that support quality and traceability
- Testing software proportionate to risk
- Controlling software releases
- Managing defects
- Maintaining software throughout its lifecycle

All custom software used to collect or process subject data **SHALL** implement
controls to ensure data meets ALCOA+ principles throughout the data lifecycle.

Software that processes subject data **SHALL NOT** overwrite or destroy original
source data. All transformations and derived data **SHALL** be traceable to
original source data.

### 4.2 Software Requirements Specification

#### 4.2.1 Requirements Documentation

Before development begins, software requirements **SHALL** be documented in a
Software Requirements Specification (SRS) or equivalent document.

The SRS **SHALL** include:

- Intended use and purpose of the software
- Functional requirements (what the software must do)
- Data requirements (inputs, outputs, data formats)
- Performance requirements (response time, capacity, availability)
- Security requirements (access controls, authentication, data protection)
- Interface requirements (integration with other systems)
- Regulatory requirements (ALCOA+ compliance, audit trail, 21 CFR Part 11)
- Constraints and assumptions

#### 4.2.2 Requirements Review

Software requirements **SHALL** be reviewed and approved before development
begins.

Review **SHALL** verify that requirements are:

- Complete and unambiguous
- Testable
- Traceable to intended use
- Consistent with regulatory requirements

### 4.3 Software Design and Architecture

#### 4.3.1 Design Documentation

Software design **SHALL** be documented to describe how the software will meet
the specified requirements.

Design documentation **SHALL** include:

- System architecture (components, modules, data flow)
- Data model (data structures, storage, relationships)
- Security architecture (authentication, authorization, encryption)
- Audit trail implementation
- Error handling approach
- Interface specifications

The level of detail **SHALL** be proportionate to the complexity and risk of the
software.

#### 4.3.2 Design Review

Software design **SHALL** be reviewed before implementation to verify that:

- Design addresses all specified requirements
- Design supports ALCOA+ compliance
- Security and data integrity controls are adequate
- Design is feasible and maintainable

### 4.4 Development Practices

#### 4.4.1 Coding Standards

Software development **SHALL** follow documented coding standards appropriate
to the programming language(s) used.

Coding standards **SHOULD** address:

- Code formatting and style
- Naming conventions
- Code documentation and comments
- Error handling
- Security practices

#### 4.4.2 Version Control

All source code **SHALL** be maintained under version control.

Version control **SHALL** provide:

- Complete history of all changes to source code
- Identification of who made each change and when
- Ability to retrieve any previous version
- Branching and merging capabilities for parallel development

Each commit **SHOULD** include a description of the changes made.

#### 4.4.3 Code Review

Code changes **SHOULD** be reviewed by a person other than the author before
being merged into the main codebase.

Code review **SHOULD** verify:

- Code meets requirements
- Code follows coding standards
- Code is readable and maintainable
- Security and data integrity are not compromised

### 4.5 Testing and Validation

#### 4.5.1 Testing Requirements

Software **SHALL** be tested before release. Testing **SHALL** be proportionate
to the risk to data integrity and subject safety.

Testing **SHALL** verify that:

- Software meets specified requirements
- Data integrity controls function correctly
- Audit trails capture required information
- Error handling works as designed

#### 4.5.2 Validation

Formal validation of software for its intended use **SHALL** be performed per
[SOP-004: Computer System Validation, Data Integrity and Data Management
Procedure](SOP-004--Computer_System_Validation_Data_Integrity_and_Data_Management_Procedure.md).

Validation **SHALL** be completed before software is used in a study.

### 4.6 Release and Deployment

#### 4.6.1 Release Approval

Software releases **SHALL** be approved before deployment.

Release approval **SHALL** verify:

- All requirements have been addressed
- Testing has been completed satisfactorily
- Validation has been completed per SOP-004
- Documentation is complete
- Known defects have been evaluated and documented

#### 4.6.2 Version Identification

Each software release **SHALL** have a unique version identifier.

All software used to collect or process subject data **SHALL** record the
software version used for each data collection or processing activity.

#### 4.6.3 Release Documentation

Release documentation **SHALL** include:

- Version number
- Release date
- Summary of changes from previous version
- Known limitations or defects
- Deployment instructions

#### 4.6.4 Deployment

Deployment procedures **SHALL** ensure:

- Correct version is deployed to the intended environment
- Configuration is verified
- Deployment is documented

### 4.7 Defect Management

#### 4.7.1 Defect Identification and Documentation

Software defects **SHALL** be documented when identified, including:

- Description of the defect
- Steps to reproduce
- Severity assessment
- Impact on data integrity or subject safety

#### 4.7.2 Defect Resolution

Defects **SHALL** be evaluated and prioritized based on severity and impact.

Defect resolution **SHALL** be documented, including:

- Root cause (if determined)
- Corrective action taken
- Verification that the defect is resolved
- Impact assessment for any affected data

#### 4.7.3 Defect Tracking

A defect log **SHALL** be maintained for each software product, documenting:

- All reported defects
- Status (open, in progress, resolved, closed)
- Resolution details

### 4.8 Maintenance and Retirement

#### 4.8.1 Software Maintenance

Software maintenance activities **SHALL** include:

- Corrective maintenance (defect fixes)
- Adaptive maintenance (changes for new environments or requirements)
- Preventive maintenance (updates to prevent future problems)

All maintenance changes **SHALL** follow the development practices in this
procedure and be subject to change control per SOP-013.

#### 4.8.2 Software Retirement

When software is retired from use:

- A retirement plan **SHALL** be documented
- Data migration or archiving **SHALL** be addressed
- Access to historical data **SHALL** be maintained as required for record
  retention
- Retirement **SHALL** be documented

## 5.0 TRAINING

All personnel involved in software development activities **SHALL** be trained
on this procedure and maintain documented evidence of training according to
[QM-001 Section 6.1.1](QM-001--QualityManual.md#611-people).

Training **SHALL** include:

- Software requirements specification
- Development practices and coding standards
- Version control usage
- Testing requirements
- Release and deployment procedures
- Defect management

Personnel **SHALL** also be trained on applicable regulatory requirements,
including ALCOA+ principles and 21 CFR Part 11.

Training records **SHALL** be maintained per SOP-002.

## 6.0 RECORDS

The following records **SHALL** be maintained in the TMF:

| Record | Retention |
|--------|-----------|
| Software Requirements Specification | Per SOP-002 |
| Software design documentation | Per SOP-002 |
| Version control history | Per SOP-002 |
| Code review records | Per SOP-002 |
| Test records | Per SOP-002 |
| Validation documentation | Per SOP-004 |
| Release documentation | Per SOP-002 |
| Deployment records | Per SOP-002 |
| Defect log | Per SOP-002 |
| Retirement documentation | Per SOP-002 |
| Training records | Per SOP-002 |

Software is developed for a specific study, and all development records are
maintained in that study's TMF.

If software developed for one study is reused in another study, the software
**SHALL** be reviewed and adopted for the new study per this procedure. The
adopting study's TMF **SHALL** include documentation of the review and adoption
decision, along with any study-specific requirements, testing, or validation.
