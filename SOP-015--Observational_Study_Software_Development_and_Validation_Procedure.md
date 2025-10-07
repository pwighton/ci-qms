# __NewInstitue__ Quality Manual
## SOP-014: Observational Study Software Development and Validation Procedure
-----------------------------------------------------------------------

## 1.0 PURPOSE

This Standard Operating Procedure (SOP) establishes the systematic approach for
developing, validating, and maintaining software used to collect, process, and
analyze subject data in *observational studies* conducted by __NewInstitue__.
It ensures software reliability, data integrity, and compliance with applicable
regulations throughout the software lifecycle.

## 2.0 SCOPE

This procedure applies to all software used in NewInstitue observational
studies for:

- Collection of subject data (including but not limited to wearable devices,
mobile applications, web-based applications, and electronic data capture
systems)
- Processing, transformation, or analysis of subject data

Software systems are validated using risk-based approaches defined in
[SOP-004: Computer System Validation, Data Integrity and Data Management Procedure](SOP-004--Computer_System_Validation_Data_Integrity_and_Data_Management_Procedure.md).

Software developed by external vendors is managed according to
[SOP-006: Outsourced Activities Procedure](SOP-006--Outsourced_Activities_Procedure.md)
for vendor qualification and oversight.

Software-related documentation is controlled under 
[SOP-002: Document and Records Controls Procedure](SOP-002--Document_and_Records_Controls_Procedure.md)
with records maintained in the TMF.

Changes to validated software are managed under
[SOP-013: Change Control Procedure](SOP-013--Change_Control_Procedure.md).

Risk assessment for software development is performed using
[SOP-003: Risk Management and Quality Risk Management Procedure](SOP-003--Risk_Management_and_Quality_Risk_Management_Procedure.md)
and [SOP-004--Computer_System_Validation_Data_Integrity_and_Data_Management_Procedure.md](SOP-004--Computer_System_Validation_Data_Integrity_and_Data_Management_Procedure.md)

## 3.0 REFERENCES, TERMS AND ACRONYMS

### 3.1 Guidance and Regulatory References
-----------------------------------------------------------------------

- 21 CFR Part 11 (Electronic Records; Electronic Signatures)

- ICH E6(R2) Sections 4.9 and 5.5

- GAMP 5 (Good Automated Manufacturing Practice)

- FDA Guidance "Digital Health Technologies for Remote Data Acquisition in
  Clinical Investigations" (2023)

- FDA Guidance "Electronic Systems, Electronic Records, and Electronic
  Signatures in Clinical Investigations" (2023)

### 3.2 __NewInstitue__ References 
-----------------------------------------------------------------------

### 3.3 Terms
-----------------------------------------------------------------------

-   **ALCOA+ Principles**: Data integrity principles requiring data to be
    Attributable, Legible, Contemporaneous, Original, Accurate, Complete,
    Consistent, Enduring, and Available.
    
-   **Data Collection Software**: Software applications used to capture
    subject data directly from participants or research activities, including
    mobile apps, wearables, web portals, and EDC systems.

-   **Data Processing Software**: Software used to transform, analyze, or
    derive results from subject data after collection.

-   **Software Validation**: Confirmation by examination and provision of
    objective evidence that software specifications conform to user needs and
    intended uses, and that the particular requirements implemented through
    software can be consistently fulfilled.

-   **Version Control**: The management and tracking of changes to software
    code, configuration, and documentation to ensure traceability and
    reproducibility.

### 3.4 Acronyms
-----------------------------------------------------------------------

- **ALCOA+**

- **DHT**: Digital Health Technology

- **EDC**: Electronic Data Capture

- **GAMP**: Good Automated Manufacturing Practice

- **TMF**: Trial Master File

## 4.0

### 4.1 Overview
-----------------------------------------------------------------------

Covered Activities

- Software requirements specification
- Software design and architecture documentation
- Software development and coding practices
- Version control and configuration management
- Software testing and validation
- User acceptance testing
- Software release and deployment
- Training and user documentation
- Software maintenance and support
- Defect tracking and resolution
- Software retirement and data migration
- Audit trail and logging requirements

Key Principles

-   **Version Tracking**: All software used to collect or process subject data
    **SHALL** record and maintain the software version used for each data
    collection or processing activity.

-   **Data Preservation**: Software that processes subject data SHALL NOT
    overwrite or destroy original source data. All transformations and derived
    data must be traceable to original source data.

-   **ALCOA+ Compliance**: All software SHALL implement controls to ensure
    data meets ALCOA+ principles throughout the data lifecycle.

-   **Risk-Based Validation**: Software validation rigor **SHALL** be
    proportionate to the risk to data integrity and subject safety as determined
    through risk assessment.
