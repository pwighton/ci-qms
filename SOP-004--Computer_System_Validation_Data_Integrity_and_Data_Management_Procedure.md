---
title: "__NewInstitute__ Quality Manual"
subtitle: "SOP-004: Computer System Validation, Data Integrity and Data Management Procedure"
---

## 1.0 PURPOSE

This Standard Operating Procedure (SOP) establishes the
systematic approach for validating computer systems and
managing study data throughout *observational studies*
conducted by __NewInstitute__. It ensures that computer
systems are fit for their intended use, that data integrity
is maintained throughout the study data lifecycle, and that
electronic records comply with applicable regulatory
requirements.

## 2.0 SCOPE

This procedure applies to all computer systems and study
data used in *observational studies* conducted by
__NewInstitute__.

This procedure covers two areas:

- **Computer system validation** (Section 4.0): Validation of
  all computerized systems used in the conduct of
  observational studies, including infrastructure software,
  commercial off-the-shelf software, configurable software
  platforms, and the validation of custom software developed
  under
  [SOP-015: Observational Study Software Development and
  Validation
  Procedure](SOP-015--Observational_Study_Software_Development_and_Validation_Procedure.md).
  SOP-015 governs how custom software is developed; this
  procedure governs how all software, including custom
  software, is validated.

- **Study data management** (Section 5.0): Management of
  source data and derived data throughout the study
  lifecycle, including acquisition, storage, processing
  provenance, and archival. Documents and records are
  managed under
  [SOP-002: Document and Records Controls
  Procedure](SOP-002--Document_and_Records_Controls_Procedure.md);
  this procedure governs study data that falls outside the
  scope of SOP-002.

This procedure implements technical controls for risks
identified under
[SOP-003: Risk Management and Quality Risk Management
Procedure](SOP-003--Risk_Management_and_Quality_Risk_Management_Procedure.md).

Changes to validated systems are managed under
[SOP-013: Change Control
Procedure](SOP-013--Change_Control_Procedure.md) with
validation impact assessment performed according to this
procedure.

Vendor computer systems are subject to vendor assessment
under
[SOP-006: Outsourced Activities
Procedure](SOP-006--Outsourced_Activities_Procedure.md) with
validation per this procedure.

This procedure applies to all __NewInstitute__ employees and
vendors involved in:

- System validation activities
- Data management operations
- IT infrastructure support
- Quality assurance for computerized systems
- System administration and security

## 3.0 REFERENCES, TERMS AND ACRONYMS

### 3.1 Guidance and Regulatory References

- [21 CFR Part 11](https://www.ecfr.gov/current/title-21/chapter-I/subchapter-A/part-11):
  Electronic Records; Electronic Signatures

- [ICH E6(R2)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/e6r2-good-clinical-practice-integrated-addendum-ich-e6r1):
  Good Clinical Practice: Integrated Addendum to ICH E6(R1)
  - Section 4.9 (Records and Reports)
  - Section 5.5 (Trial Management, Data Handling, and
    Recordkeeping)

- [ICH E8(R1)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/e8r1-general-considerations-clinical-studies):
  General Considerations for Clinical Studies
  - Section 3.2 (Critical to Quality Factors)

- [GAMP 5 (Second Edition)](https://guidance-docs.ispe.org/doi/book/10.1002/9781946964571):
  A Risk-Based Approach to Compliant GxP Computerized
  Systems

- [ICH Q9(R1)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/q9r1-quality-risk-management):
  Quality Risk Management

- [FDA Guidance: Computer Software Assurance for Production
  and Quality System Software
  (2022)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/computer-software-assurance-production-and-quality-system-software):
  Risk-based approach to software assurance

- [FDA Guidance: Electronic Systems, Electronic Records, and
  Electronic Signatures in Clinical Investigations
  (2024)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/electronic-systems-electronic-records-and-electronic-signatures-clinical-investigations-questions)

- [FDA Guidance: Electronic Source Data in Clinical
  Investigations
  (2013)](https://www.fda.gov/media/85183/download)

- [FDA Guidance: Digital Health Technologies for Remote Data
  Acquisition in Clinical Investigations
  (2024)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/digital-health-technologies-remote-data-acquisition-clinical-investigations)

### 3.2 __NewInstitute__ References

1.  [QM-001: Quality
    Manual](QM-001--QualityManual.md)

2.  [SOP-002: Document and Records Controls
    Procedure](SOP-002--Document_and_Records_Controls_Procedure.md)

3.  [SOP-003: Risk Management and Quality Risk Management
    Procedure](SOP-003--Risk_Management_and_Quality_Risk_Management_Procedure.md)

4.  [SOP-006: Outsourced Activities
    Procedure](SOP-006--Outsourced_Activities_Procedure.md)

5.  [SOP-013: Change Control
    Procedure](SOP-013--Change_Control_Procedure.md)

6.  [SOP-015: Observational Study Software Development
    and Validation
    Procedure](SOP-015--Observational_Study_Software_Development_and_Validation_Procedure.md)

### 3.3 Terms

### 3.4 Acronyms

## 4.0 COMPUTER SYSTEM VALIDATION

This section defines the requirements for validating
computerized systems used in observational studies. The
validation approach is based on GAMP 5 principles: systems
are classified by category, and validation activities are
scaled to the complexity and risk of each system.

### 4.1 Overview

Computer system validation ensures that a system is fit for
its intended use and will consistently perform as expected
throughout its operational lifecycle.

The validation approach defined in this procedure follows
five principles from GAMP 5:

- **Product and process understanding**: Validation
  activities are informed by an understanding of how the
  system supports study processes and what data it handles.
- **Lifecycle approach**: Systems are managed from concept
  through retirement within the QMS, not validated once at
  deployment.
- **Scalable lifecycle activities**: Validation effort is
  proportionate to the system's complexity and risk. Not
  all systems require the same level of documentation and
  testing.
- **Science-based quality risk management**: Validation
  decisions are driven by risk assessment per SOP-003,
  focusing effort on what matters most for subject safety,
  data integrity, and study validity.
- **Leveraging supplier involvement**: For commercial
  systems, existing vendor documentation, testing, and
  quality systems are used where possible rather than
  re-validating from scratch.

The validation lifecycle covers the following activities,
scaled by system category (Section 4.3):

- System classification and risk assessment
- Validation planning
- Specification (requirements, functional, design)
- Testing (IQ, OQ, PQ)
- Validation reporting
- Ongoing operation and maintenance
- System retirement

Systems used for custom software developed under SOP-015
follow the development lifecycle defined in that procedure.
Validation of those systems is performed per this procedure.

### 4.2 Roles and Responsibilities

### 4.3 System Classification

Every computerized system used in the conduct of an
observational study **SHALL** be classified before validation
activities begin. Classification determines the scope of
validation activities required.

#### 4.3.1 GAMP Software Categories

Systems **SHALL** be classified into one of the following
categories based on GAMP 5:

- **Category 1 (Infrastructure Software)**: Operating
  systems, databases, network components, and other
  foundational software that supports application software
  but does not contain study-specific logic. Examples
  include operating systems, database management systems,
  and network infrastructure.

- **Category 3 (Non-Configurable Software)**: Commercial
  off-the-shelf software used as installed without
  modification or configuration. Examples include standard
  laboratory instruments with embedded software, data
  viewers, and reference tools.

- **Category 4 (Configurable Software)**: Commercial
  software that is configured to meet study-specific needs
  using the vendor's built-in tools, without modification
  to the underlying source code. Examples include
  electronic data capture systems, laboratory information
  management systems, and document management systems.

- **Category 5 (Custom Software)**: Software developed
  specifically for __NewInstitute__ or heavily customized
  from existing software involving changes to source code.
  Development of Category 5 software is governed by
  SOP-015. Validation is governed by this procedure.

**Note**: GAMP 5 does not define a Category 2. Earlier versions of
GAMP used Category 2 for firmware; this category was retired
in GAMP 5 and such software is now classified under the
categories above.

A system **MAY** contain components that fall into different
categories. In such cases, each component **SHALL** be
classified individually, and the validation approach for each
component **SHALL** correspond to its category.

Appendix A provides a decision tree to assist with category
determination.

#### 4.3.2 GxP Risk Assessment

In addition to category classification, each system **SHALL**
be assessed for its GxP impact to determine the appropriate
level of validation rigor within its category.

The risk assessment **SHALL** consider:

- Whether the system creates, processes, stores, or
  transmits study data (source data or derived data)
- Whether the system supports decisions affecting subject
  safety
- Whether the system maintains records required by
  regulatory authorities
- The consequences of system failure on data integrity
  and study validity

Systems **SHALL** be classified as either:

- **GxP-critical**: The system directly affects subject
  safety, data integrity, or regulatory compliance.
  Full validation per the applicable category is required.
- **GxP-relevant**: The system indirectly supports study
  processes but does not directly affect subject safety or
  data integrity. Reduced validation proportionate to risk
  is permitted.
- **Non-GxP**: The system has no impact on study data,
  subject safety, or regulatory compliance. No validation
  under this procedure is required.

The GxP risk assessment **SHALL** be documented and
maintained as part of the system inventory (Section 4.3.3).

#### 4.3.3 System Inventory

__NewInstitute__ **SHALL** maintain an inventory of all
computerized systems classified as GxP-critical or
GxP-relevant (per Section 4.3.2). Systems classified as
non-GxP do not require inclusion in the inventory; however,
the rationale for the non-GxP classification **SHALL** be
documented and retained.

- System name and version
- GAMP category (per Section 4.3.1)
- GxP impact classification (per Section 4.3.2)
- Intended use
- Vendor (for commercial systems)
- Validation status
- System owner

The system inventory **SHALL** be reviewed at least annually
and updated when systems are added, changed, or retired.
The system inventory **MAY** be maintained at the
organizational level, the study level, or both, as
appropriate.

### 4.4 Validation Planning

#### 4.4.1 Validation Plan

A Validation Plan **SHALL** be prepared before validation
activities begin for each GxP-critical or GxP-relevant
system. The Validation Plan **SHALL** include:

- System description and intended use
- GAMP category and GxP impact classification
- Validation approach and lifecycle activities to be
  performed (per Section 4.5)
- Acceptance criteria
- Roles and responsibilities for validation activities
- Deliverables to be produced
- Timeline

For low-complexity systems (e.g., Category 1 or Category 3
systems classified as GxP-relevant), the Validation Plan
**MAY** be a brief document or a completed template rather
than a standalone plan.

The Validation Plan **SHALL** be reviewed and approved before
validation activities begin.

#### 4.4.2 Scalable Lifecycle Activities

Validation activities **SHALL** be scaled to the system's
GAMP category and GxP impact classification. Not every
lifecycle activity defined in Section 4.6 is required for
every system.

The minimum validation activities by category are defined in
Section 4.5 and summarized in Appendix B. Additional
activities **MAY** be added based on the GxP risk assessment
(Section 4.3.2) when the risk warrants it.

The rationale for including or excluding lifecycle activities
**SHALL** be documented in the Validation Plan.

#### 4.4.3 Leveraging Supplier Documentation

For commercial systems (Categories 1, 3, and 4), existing
supplier documentation **SHOULD** be leveraged to reduce
validation effort where the documentation is adequate and
available. Supplier documentation that **MAY** be leveraged
includes:

- Supplier quality certifications (e.g., ISO 9001,
  ISO 27001)
- Supplier testing and release documentation
- Functional specifications and user guides
- Supplier audit reports

When supplier documentation is used in place of
__NewInstitute__-generated documentation, the Validation
Plan **SHALL** document what supplier materials are being
relied upon and confirm their adequacy for the intended use.

For Category 5 systems developed by external vendors,
supplier assessment **SHALL** be performed per
[SOP-006: Outsourced Activities
Procedure](SOP-006--Outsourced_Activities_Procedure.md)
in addition to the validation activities defined in this
procedure.

### 4.5 Validation by Category

This section defines the minimum validation activities
required for each GAMP software category. Additional
activities **MAY** be added based on the GxP risk assessment
(Section 4.3.2). Appendix B provides a summary table of
required deliverables by category.

#### 4.5.1 Category 1: Infrastructure Software

Infrastructure software is validated through installation
verification and confirmation that the infrastructure
supports the applications running on it.

Minimum validation activities:

- Installation Qualification (IQ) per Section 4.6.2
- Documentation of version and configuration

Supplier documentation **SHOULD** be leveraged per
Section 4.4.3.

#### 4.5.2 Category 3: Non-Configurable Software

Non-configurable commercial software is validated by
confirming that it is installed correctly and performs as
expected for its intended use.

Minimum validation activities:

- User Requirements Specification (URS) per Section 4.6.1
- Installation Qualification (IQ) per Section 4.6.2
- Operational Qualification (OQ) per Section 4.6.2,
  focused on confirming functionality relevant to the
  intended use

Supplier documentation **SHOULD** be leveraged per
Section 4.4.3. Where the supplier provides adequate
evidence of testing, OQ **MAY** be limited to verification
of intended-use functionality rather than comprehensive
functional testing.

#### 4.5.3 Category 4: Configurable Software

Configurable software is validated by confirming that the
configuration meets study-specific requirements and that
the system performs as expected in its configured state.

Minimum validation activities:

- User Requirements Specification (URS) per Section 4.6.1
- Functional Specification (FS) per Section 4.6.1,
  documenting the study-specific configuration
- Installation Qualification (IQ) per Section 4.6.2
- Operational Qualification (OQ) per Section 4.6.2,
  covering configured functionality
- Performance Qualification (PQ) per Section 4.6.2, if
  the system processes study data under production
  conditions
- Traceability Matrix per Section 4.6.3
- Validation Report per Section 4.6.4

Supplier documentation **SHOULD** be leveraged per
Section 4.4.3 for baseline functionality. Validation
effort **SHALL** focus on the study-specific configuration
and any customized workflows.

#### 4.5.4 Category 5: Custom Software

Custom software requires full lifecycle validation.
Development activities are governed by SOP-015; validation
activities are governed by this procedure.

Minimum validation activities:

- User Requirements Specification (URS) per Section 4.6.1
- Functional Specification (FS) per Section 4.6.1
- Design Specification (DS) per Section 4.6.1
- Installation Qualification (IQ) per Section 4.6.2
- Operational Qualification (OQ) per Section 4.6.2
- Performance Qualification (PQ) per Section 4.6.2
- Traceability Matrix per Section 4.6.3
- Validation Report per Section 4.6.4

For Category 5 systems developed by external vendors,
supplier assessment **SHALL** be performed per SOP-006
and supplier development documentation **SHALL** be
evaluated as part of validation planning.

### 4.6 Validation Lifecycle Activities

This section defines the lifecycle activities referenced in
Section 4.5. The level of detail and formality of each
activity **SHALL** be proportionate to the system's GAMP
category and GxP impact classification.

#### 4.6.1 Specification

Specification documents define what the system is required
to do and how it will do it. The following specification
levels are recognized, in order of increasing detail:

- **User Requirements Specification (URS)**: Describes what
  the system must do from the user's perspective, in terms
  of intended use and required functionality. The URS
  **SHALL** be written in terms that are testable or
  verifiable. Required for Categories 3, 4, and 5.

- **Functional Specification (FS)**: Describes how the
  system will meet the user requirements, including
  specific functions, configuration settings, data flows,
  and interfaces. For Category 4 systems, the FS documents
  the study-specific configuration. Required for
  Categories 4 and 5.

- **Design Specification (DS)**: Describes the technical
  design and architecture of the system, including software
  design, data structures, and algorithms. Required for
  Category 5 only. For Category 5 systems developed under
  SOP-015, the design documentation produced during
  development **MAY** serve as the DS.

Specification documents **SHALL** be reviewed and approved
before testing begins. For low-complexity systems,
specification levels **MAY** be combined into a single
document provided all required content is addressed.

#### 4.6.2 Testing

Testing confirms that the system meets its specifications
and is fit for its intended use. The following testing
levels are recognized:

- **Installation Qualification (IQ)**: Verifies that the
  system is installed correctly in the target environment,
  that all components are present, and that the installed
  version matches the validated version. Required for all
  categories.

- **Operational Qualification (OQ)**: Verifies that the
  system functions as specified across its expected
  operating range. Test cases **SHALL** be derived from the
  URS and FS. OQ **SHALL** include testing of intended-use
  functionality and, for GxP-critical systems, testing of
  data integrity controls (audit trails, access controls,
  electronic signatures) where applicable. Required for
  Categories 3, 4, and 5.

- **Performance Qualification (PQ)**: Verifies that the
  system performs as expected under production conditions
  with representative study data. PQ is conducted in the
  production environment or an environment representative
  of production. Required for Categories 4 and 5 when the
  system processes study data.

Each test **SHALL** have defined acceptance criteria and a
documented pass/fail result. Test failures **SHALL** be
documented, investigated, and resolved before the system is
released for use. Resolved failures **SHALL** be retested.

Automated testing tools **MAY** be used where appropriate.
Testing performed by the supplier **MAY** be leveraged per
Section 4.4.3 to reduce or focus __NewInstitute__ testing
activities.

#### 4.6.3 Traceability

A Traceability Matrix **SHALL** be maintained for systems
requiring both specification and testing activities
(Categories 4 and 5, and Category 3 systems classified as
GxP-critical).

The Traceability Matrix **SHALL** demonstrate that:

- Each user requirement is addressed by at least one test
- Each test is linked to at least one requirement
- All requirements have been verified

The Traceability Matrix **MAY** be a standalone document, a
section of the Validation Report, or maintained within a
test management tool.

#### 4.6.4 Validation Report

A Validation Report **SHALL** be prepared upon completion of
validation activities for each GxP-critical or GxP-relevant
system. The Validation Report **SHALL** include:

- System identification (name, version, GAMP category,
  GxP classification)
- Summary of validation activities performed
- Reference to specifications and test documentation
- Summary of test results, including any deviations and
  their resolution
- Confirmation that acceptance criteria were met
- Known issues or limitations, if any
- Conclusion regarding whether the system is fit for its
  intended use
- Approval to release the system for operational use

The Validation Report **SHALL** be reviewed and approved
before the system is placed into production use.

### 4.7 Data Integrity Controls

Computerized systems classified as GxP-critical or
GxP-relevant **SHALL** implement data integrity controls
proportionate to their GxP impact classification. These
controls are verified during validation testing
(Section 4.6.2).

#### 4.7.1 ALCOA+ Compliance

Systems that create, process, store, or transmit study data
or records **SHALL** support the ALCOA+ principles:

- **Attributable**: The system identifies who performed an
  action and when
- **Legible**: Data is readable and permanent throughout its
  retention period
- **Contemporaneous**: Data is recorded at the time the
  activity is performed
- **Original**: The original record is preserved or a
  certified copy is available
- **Accurate**: Data is correct, truthful, and free from
  errors
- **Complete**: All data is present, including any
  modifications
- **Consistent**: Data elements do not contradict each other
- **Enduring**: Data is recorded on durable media and
  remains intact throughout its retention period
- **Available**: Data is accessible for review and
  inspection throughout its retention period

The extent to which each principle is implemented **SHALL**
be proportionate to the system's GxP impact classification
and the criticality of the data it handles.

#### 4.7.2 Audit Trails

Systems that create, modify, or delete GxP records or study
data **SHALL** maintain audit trails that capture:

- The identity of the person performing the action
- The date and time of the action
- The nature of the action (create, modify, delete)
- The original value and the new value (for modifications)

Audit trails **SHALL** be secure, computer-generated, and
time-stamped. Audit trail entries **SHALL NOT** be
modifiable by system users.

Audit trails **SHALL** be retained for at least as long as
the records or data they support, per SOP-002 Section 5.4.

Systems classified as GxP-relevant that do not directly
modify study data **MAY** implement reduced audit trail
requirements proportionate to their risk, documented in the
Validation Plan.

#### 4.7.3 Electronic Records and Signatures

Systems that maintain electronic records subject to 21 CFR
Part 11 **SHALL** implement controls to ensure that
electronic records are trustworthy, reliable, and equivalent
to paper records. These controls include:

- Validation of the system per this procedure
- Protection of records to enable accurate and ready
  retrieval throughout the retention period
- Limiting system access to authorized individuals
- Audit trails per Section 4.7.2
- Operational system checks to enforce permitted sequencing
  of steps and events, as appropriate

Electronic signatures used within validated systems
**SHALL**:

- Be unique to an individual and not reused or reassigned
- Include the printed name of the signer, the date and
  time of the signature, and the meaning of the signature
  (e.g., review, approval, authorship)
- Be linked to the associated electronic record such that
  the signature cannot be transferred to another record

Systems using electronic signatures **SHALL** employ at
least one method to ensure that the signer's identity is
verified before the signature is applied (e.g., password,
biometric, or multi-factor authentication).

#### 4.7.4 Access Controls and User Management

Systems classified as GxP-critical or GxP-relevant **SHALL**
implement access controls that:

- Restrict system access to authorized individuals
- Assign permissions based on job function and
  responsibility
- Prevent unauthorized modification or deletion of data
  and records
- Require unique user identification (shared accounts are
  not permitted for GxP-critical systems)

User accounts **SHALL** be managed through a documented
process that includes:

- Provisioning of new accounts with appropriate
  permissions
- Periodic review of user access to confirm continued
  appropriateness
- Timely deactivation of accounts when access is no longer
  required

Access control configurations for GxP-critical systems
**SHALL** be documented and maintained as part of the
system validation documentation.

### 4.8 System Operation and Maintenance

Once a system is validated and released for operational use,
it **SHALL** be maintained in a validated state throughout
its operational lifecycle.

#### 4.8.1 Change Control for Validated Systems

Changes to validated systems **SHALL** be managed per
[SOP-013: Change Control
Procedure](SOP-013--Change_Control_Procedure.md).

Before implementation, each proposed change **SHALL** be
assessed for its impact on the validated state of the
system. The assessment **SHALL** consider:

- Whether the change affects GxP-critical functionality
- Whether the change affects data integrity controls
- Whether the change requires retesting or revalidation
- The scope of retesting required (full or partial)

Changes that affect GxP-critical functionality or data
integrity controls **SHALL** be retested before the change
is released to production. The scope of retesting **SHALL**
be documented and proportionate to the change.

Changes that do not affect the validated state (e.g.,
hardware replacements with equivalent components, operating
system security patches that do not alter application
functionality) **MAY** be implemented with documented
rationale and without retesting.

#### 4.8.2 Periodic Review

Validated systems **SHALL** be reviewed periodically to
confirm they remain in a validated state and continue to
be fit for their intended use.

Periodic reviews **SHALL** be conducted at least annually
for GxP-critical systems. GxP-relevant systems **SHOULD**
be reviewed at least annually.

The periodic review **SHALL** consider:

- Change history since the last review
- Incident and problem history
- Audit findings related to the system
- Continued adequacy of access controls and user accounts
- Continued availability and integrity of audit trails
- Whether the system's intended use has changed
- Whether the system's GxP classification remains
  appropriate

The periodic review **SHALL** be documented and any
corrective actions tracked to completion.

#### 4.8.3 Incident and Problem Management

System incidents (unplanned events that may affect system
functionality or data integrity) **SHALL** be documented
and assessed for their impact on data integrity and study
conduct.

Incidents that affect or may have affected the integrity
of study data **SHALL** be:

- Investigated to determine the scope of impact
- Escalated per SOP-010 if the incident constitutes a
  nonconformance
- Reported to the Study Director or Principal Investigator
  if study data may be affected

Resolution of incidents **SHALL** be documented, including
any corrective actions taken.

#### 4.8.4 Backup and Recovery

Systems that store or process study data or GxP records
**SHALL** have documented backup and recovery procedures.

Backup procedures **SHALL** address:

- Frequency of backups, proportionate to the rate of data
  change and the acceptable level of data loss
- Backup storage location, separate from the primary
  system
- Verification that backups are successful and recoverable

Recovery procedures **SHALL** be tested periodically to
confirm that data can be restored. Recovery testing
**SHALL** be documented.

#### 4.8.5 Study Continuity and Disaster Recovery

For GxP-critical systems, a plan **SHALL** be documented
that addresses how study activities will continue if the
system becomes unavailable. The plan **SHALL** include:

- Maximum acceptable downtime
- Alternative procedures for continuing study activities
  during system unavailability
- Recovery priorities and responsibilities
- Criteria for determining when normal operations can
  resume

The scope and detail of business continuity planning
**SHALL** be proportionate to the system's criticality
and the impact of unavailability on study conduct and
subject safety.

### 4.9 System Retirement

When a validated system is no longer needed, it **SHALL** be
retired through a documented process.

Before retirement, the system owner **SHALL** confirm that:

- All study data and GxP records have been migrated to
  another validated system or archived per Section 5.7
- Data migration, if performed, has been verified for
  completeness and accuracy
- Audit trail data has been preserved for the required
  retention period
- No active studies depend on the system

System retirement **SHALL** be documented, including the
date of retirement, the disposition of data, and
confirmation that the above requirements were met.

The system inventory (Section 4.3.3) **SHALL** be updated
to reflect the retired status.

## 5.0 STUDY DATA MANAGEMENT

### 5.1 Overview

### 5.2 Data Classification

#### 5.2.1 Source Data
#### 5.2.2 Derived Data
#### 5.2.3 Relationship to Documents and Records

### 5.3 Source Data Management

#### 5.3.1 Data Acquisition and Capture
#### 5.3.2 Data Formats and Standards
#### 5.3.3 Data Transfer and Transmission
#### 5.3.4 Source Data Preservation

### 5.4 Derived Data Management

#### 5.4.1 Processing Provenance and Traceability
#### 5.4.2 Reproducibility Requirements
#### 5.4.3 Software and Parameter Documentation

### 5.5 Data Storage and Security

#### 5.5.1 Storage Requirements
#### 5.5.2 Data De-identification
#### 5.5.3 Access Controls
#### 5.5.4 Data Backup

### 5.6 Data Quality

#### 5.6.1 Data Quality Checks
#### 5.6.2 Query Management
#### 5.6.3 Data Cleaning and Correction

### 5.7 Database Lock and Archival

#### 5.7.1 Database Lock Procedures
#### 5.7.2 Long-Term Format Preservation
#### 5.7.3 Data Archival and Retention

## 6.0 RECORDS AND DOCUMENTATION

## 7.0 TRAINING

## APPENDIX A: GAMP CATEGORY DECISION TREE

## APPENDIX B: VALIDATION DELIVERABLES BY CATEGORY
