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

- [ICH E6(R2)](https://database.ich.org/sites/default/files/E6_R2_Addendum.pdf):
  Good Clinical Practice: Integrated Addendum to ICH E6(R1)
  - Section 4.9 (Records and Reports)
  - Section 5.5 (Trial Management, Data Handling, and
    Recordkeeping)

- [ICH E8(R1)](https://database.ich.org/sites/default/files/E8-R1_Guideline_Step4_2021_1006.pdf):
  General Considerations for Clinical Studies
  - Section 3.2 (Critical to Quality Factors)

- [GAMP 5 (Second Edition)](https://guidance-docs.ispe.org/doi/book/10.1002/9781946964571):
  A Risk-Based Approach to Compliant GxP Computerized
  Systems

- [ICH Q9(R1)](https://database.ich.org/sites/default/files/ICH_Q9%28R1%29_Guideline_Step4_2023_0126_0.pdf):
  Quality Risk Management

- [FDA Guidance: Computer Software Assurance for Production
  and Quality Management System Software
  (2025)](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/computer-software-assurance-production-and-quality-management-system-software):
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

5.  [SOP-007: Study Closeout and Archiving
    Procedure](SOP-007--Study_Closeout_and_Archiving_Procedure.md)

6.  [SOP-009: Monitoring and Oversight
    Procedure](SOP-009--Monitoring_and_Oversight_Procedure.md)

7.  [SOP-010: Control of Nonconforming Observational Study Activities
    Procedure](SOP-010--Control_of_Nonconforming_Observational_Study_Activities_Procedure.md)

8.  [SOP-013: Change Control
    Procedure](SOP-013--Change_Control_Procedure.md)

9.  [SOP-015: Observational Study Software Development
    and Validation
    Procedure](SOP-015--Observational_Study_Software_Development_and_Validation_Procedure.md)

### 3.3 Terms

-   **Audit Trail**: A secure, computer-generated, time-stamped record of
    the creation, modification, or deletion of electronic records and
    data, identifying who performed each action and when.

-   **Computer System Validation**: The documented process of establishing
    that a computerized system consistently performs according to its
    specifications and is fit for its intended use.

-   **Computerized System**: The hardware, software, and network
    components of a system, together with its controlled functions and
    associated documentation, used to create, process, store, transmit,
    or manage study data or records.

-   **Derived Data**: Data produced by processing, transforming, or
    analyzing source data, as defined in SOP-002 Section 3.3.

-   **GAMP Category**: The GAMP 5 software classification (Category 1, 3,
    4, or 5) that scales the required validation activities.

-   **GxP Impact Classification**: The classification of a computerized
    system as GxP-critical, GxP-relevant, or non-GxP according to its
    effect on subject safety, data integrity, and regulatory compliance.

-   **Source Data**: All information in original records and certified
    copies of original records of clinical findings, observations, or
    other activities in a study necessary for the reconstruction and
    evaluation of the study, as defined in SOP-002 Section 3.3
    [ICH E6(R2) 1.51].

### 3.4 Acronyms

- **ALCOA+**: Attributable, Legible, Contemporaneous, Original, Accurate,
  plus Complete, Consistent, Enduring, and Available
- **BIDS**: Brain Imaging Data Structure
- **CRF**: Case Report Form
- **DICOM**: Digital Imaging and Communications in Medicine
- **DS**: Design Specification
- **EDC**: Electronic Data Capture
- **FS**: Functional Specification
- **GAMP**: Good Automated Manufacturing Practice
- **GxP**: Good Practice regulations and guidance collectively (for
  example, good clinical, laboratory, and manufacturing practice)
- **HIPAA**: Health Insurance Portability and Accountability Act
- **IEC**: Independent Ethics Committee
- **IQ**: Installation Qualification
- **IRB**: Institutional Review Board
- **OQ**: Operational Qualification
- **PQ**: Performance Qualification
- **QMS**: Quality Management System
- **URS**: User Requirements Specification

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

This section assigns computer system validation and data management
responsibilities to the roles defined in QM-001 Appendix A. Roles not
listed here have no standing duties under this procedure and act only
through the procedures referenced from this SOP.

| Role | Responsibilities under this procedure |
|---|---|
| System Owner (per validated computer system) | Owns the system's validation lifecycle: classification (§4.3), preparation of the Validation Plan (§4.4.1), execution of the lifecycle activities (§4.5, §4.6), change control (§4.8.1), periodic review (§4.8.2), incident management (§4.8.3), backup and recovery (§4.8.4), and retirement (§4.9). Maintains the system's inventory entry (§4.3.3). |
| Data Manager | Operates the data integrity controls (§4.7) and manages study data per Section 5.0: source and derived data (§5.3, §5.4), storage and security (§5.5), data quality (§5.6), and database lock mechanics (§5.7). |
| QA Representative | Independent quality oversight of validation and data management activities. Approves Validation Plans (§4.4.1) and Validation Reports (§4.6.4). Per QM-001 Appendix A, independent of the activity concerned. |
| Software Lead | For Category 5 software developed by __NewInstitute__, owns the development lifecycle per SOP-015 (§4.5.4). Combination with the System Owner role is permitted per QM-001 Appendix A. |
| Study Director / Principal Investigator or delegate | Study-level authorizations: authorizes database lock and unlock (§5.7.1, with SOP-007 Section 4.4). Notified of incidents that affect or could affect study data (§4.8.3). |

Where validation or data management activities are performed by a vendor,
the arrangement is governed per SOP-006 and supplier documentation is
leveraged per Section 4.4.3; responsibility for the validated state of the
system remains with __NewInstitute__.

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

#### 4.8.1 Validated System and Software Change Control

Changes to a validated computer system, or to deployed
custom software validated under SOP-015, **SHALL** be
managed through the change-control process defined in
this section before they are released to production.

Before implementation, each proposed change **SHALL** be
classified and assessed for its impact on the validated
state of the system. The assessment **SHALL** consider:

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

Each change **SHALL** be approved by the System Owner and
the QA Representative before release. A change **SHALL** be
released to production only after the required approvals are
recorded and any required retesting is complete.

The change description, impact assessment, retesting
evidence, and approvals **SHALL** be retained as system
validation records per SOP-002 Section 5.4.

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

This section defines the requirements for managing study
data throughout the study lifecycle. Study data includes
source data (original observations and recordings) and
derived data (products of processing or analyzing source
data). The management of documents and records is governed
by
[SOP-002: Document and Records Controls
Procedure](SOP-002--Document_and_Records_Controls_Procedure.md);
this section governs study data that falls outside that
scope.

Study data **SHALL** be managed in systems validated per
Section 4.0.

### 5.1 Overview

Study data management ensures that data collected during
observational studies is trustworthy, traceable, and
available throughout its lifecycle, from acquisition through
processing to archival.

The study data management approach defined in this section
follows ALCOA+ principles (Section 4.7.1) and supports the
data integrity requirements of ICH E6(R2) Section 5.5.

The Study Protocol **SHALL** define the study-specific data
management approach, including:

- Types of data to be collected (and their formats)
- Systems used for data collection, processing, and storage
- Roles and responsibilities for data management activities
- Data flow from collection through processing to storage

Data management activities **SHALL** be proportionate to the
criticality of the data, as determined by the risk assessment
per SOP-003.

### 5.2 Data Classification

All study data **SHALL** be classified to determine the
applicable management requirements under this procedure.

#### 5.2.1 Source Data

Source data is all information in original records and
certified copies of original records of clinical findings,
observations, or other activities in a study necessary for
the reconstruction and evaluation of the study
(ICH E6(R2) 1.51).

Source data is recorded in source documents, which are the
original documents, data, and records where source data are
first recorded (ICH E6(R2) 1.52).

Examples of source data in observational studies include:

- Medical imaging files (e.g., MRI, PET, CT)
- Audio or video recordings of assessments
- Physiological recordings and sensor data
- Laboratory results from original instruments
- Questionnaire responses as originally captured
- Clinical observations recorded by investigators

Source data **SHALL NOT** be modified after initial capture
except through the correction processes defined in SOP-002
Section 5.3.5 (for records) or Section 5.3.3 of this
procedure (for electronic study data).

#### 5.2.2 Derived Data

Derived data is data produced by processing, transforming,
or analyzing source data. Derived data is not source data;
it is a product of computation or interpretation applied to
source data.

Examples of derived data include:

- Metrics or measurements extracted from imaging data
- Scores computed from assessment recordings
- Statistical summaries or analysis outputs
- Processed signals or filtered data

Derived data **SHALL** be traceable to the source data and
the specific processing steps that produced it
(Section 5.4).

#### 5.2.3 Relationship to Documents and Records

Source data and derived data are distinct from documents
and records as defined in SOP-002:

- **Documents** provide instructions, requirements, or
  specifications for performing work (e.g., protocols,
  SOPs, analysis plans). Documents are managed under
  SOP-002.
- **Records** provide evidence that work was performed
  (e.g., completed CRFs, consent forms, training records).
  Records are managed under SOP-002.
- **Source data** are the original observations and
  measurements collected during the study. Source data are
  managed under this procedure.
- **Derived data** are products of processing source data.
  Derived data are managed under this procedure.

In some cases, the same item may serve as both a record and
source data. For example, a completed CRF is a record under
SOP-002, but the data values entered on the CRF are source
data under this procedure. When this overlap occurs, the
item **SHALL** meet the requirements of both procedures.

The Study Protocol **SHALL** identify which study data
elements are source data and which systems serve as source
documents.

### 5.3 Source Data Management

#### 5.3.1 Data Acquisition and Capture

Source data **SHALL** be captured in a manner that preserves
the original observation or measurement. Data **SHALL** be
recorded contemporaneously, at the time the activity is
performed or as soon as practical thereafter.

The Study Protocol **SHALL** specify the method of capture
for each type of source data (e.g., direct electronic
capture from an instrument, manual entry into an EDC system,
paper form).

When source data is captured directly by an electronic
system (e.g., an imaging scanner, a wearable device, an
electronic questionnaire), the electronic record is the
source document.

When source data is first recorded on paper and subsequently
entered into an electronic system, the paper record is the
source document. Electronic entry of paper-sourced data is
subject to the verification requirements of SOP-002
Section 5.3.7.

#### 5.3.2 Data Formats and Standards

The Study Protocol **SHALL** identify the expected data
formats for each type of source data.

Where established community standards exist for a data type
(e.g., DICOM for medical imaging, BIDS for neuroimaging),
those standards **SHOULD** be used unless the Study Protocol
documents a rationale for an alternative format.

Source data **SHALL** be stored in formats that are:

- Non-proprietary or widely supported, to the extent
  feasible
- Capable of preserving the full fidelity of the original
  data
- Readable without dependence on a single vendor or
  software application, or accompanied by documentation
  sufficient to enable future access (Section 5.7.2)

#### 5.3.3 Data Transfer and Transmission

When source data is transferred between systems (e.g., from
an acquisition instrument to a storage system, from a site
to a central repository), the transfer process **SHALL**
ensure that data is not altered, lost, or corrupted during
transmission.

Data transfer procedures **SHALL** include:

- Verification that transferred data is complete and
  accurate (e.g., checksum validation, record count
  reconciliation)
- Documentation of the transfer (source system, destination
  system, date, method, and verification result)
- Secure transmission methods appropriate for the
  sensitivity of the data

When data transfer is automated, the transfer process
**SHALL** be validated as part of the system validation per
Section 4.0.

#### 5.3.4 Source Data Preservation

Source data **SHALL** be preserved in its original form
throughout the retention period defined in SOP-002
Section 5.4.

Source data **SHALL NOT** be overwritten, deleted, or
modified by any processing activity. Processing of source
data **SHALL** produce derived data (Section 5.4) as
separate outputs, leaving the source data unchanged.

Backup procedures for source data **SHALL** comply with
Section 4.8.4.

### 5.4 Derived Data Management

#### 5.4.1 Processing Provenance and Traceability

Derived data **SHALL** be traceable to:

- The source data from which it was derived
- The processing steps that produced it
- The software (including version) used
- The parameters, settings, or configuration applied
- The person or automated process that initiated the
  processing
- The date and time the processing was performed

This information constitutes the processing provenance of
the derived data and **SHALL** be documented and retained
alongside the derived data.

#### 5.4.2 Reproducibility Requirements

Processing of source data into derived data **SHOULD** be
reproducible: applying the same software, version, and
parameters to the same source data **SHOULD** produce the
same derived data.

When processing is not fully reproducible (e.g., due to
stochastic algorithms, hardware-dependent computation, or
machine learning models), this **SHALL** be documented in
the processing provenance along with a description of the
expected variability.

#### 5.4.3 Software and Parameter Documentation

Software used to produce derived data **SHALL** be:

- Validated per Section 4.0, or
- Documented in the Study Protocol with a rationale for
  its use if validation per Section 4.0 is not feasible
  (e.g., widely adopted open-source tools with established
  community validation)

For each processing step that produces derived data, the
following **SHALL** be documented:

- Software name and version
- Configuration files, scripts, or parameter sets used
- Input data (by reference to source data identifiers)
- Output data (by reference to derived data identifiers)

Processing parameter sets **SHOULD** be stored as
machine-readable files (e.g., configuration files, scripts)
rather than documented only in narrative form, to support
reproducibility.

### 5.5 Data Storage and Security

#### 5.5.1 Storage Requirements

Study data **SHALL** be stored in systems validated per
Section 4.0 or, for data that does not require a validated
system (e.g., non-GxP data), in systems with documented
access controls.

Storage systems **SHALL** provide:

- Sufficient capacity for the expected volume of study data
- Protection against data loss (per Section 4.8.4)
- Controlled access (per Section 5.5.3)
- Retention of data for the required retention period
  (per SOP-002 Section 5.4)

The Study Protocol **SHALL** specify the storage location
and system for each type of study data.

#### 5.5.2 Data De-identification

When study data contains information that could identify
study subjects, de-identification **SHALL** be performed
in accordance with the Study Protocol and applicable
regulatory requirements (e.g., HIPAA, institutional data
use agreements).

The de-identification method **SHALL** be documented,
including:

- The identifiers removed or transformed
- The method used (e.g., removal, pseudonymization,
  coding)
- The location of the identification key, if a coded
  approach is used
- Who has access to the identification key

De-identification **SHALL** preserve the integrity of the
study data; data elements required for analysis **SHALL
NOT** be removed or altered during de-identification.

Source data **SHALL** be de-identified before transfer
outside __NewInstitute__ unless a regulatory requirement,
data use agreement, or IRB/IEC-approved protocol permits
the transfer of identifiable data.

When de-identification is limited to removal or
pseudonymization of identifiers without altering the
underlying observations or measurements, the
de-identified data retains its classification as source
data. When de-identification requires transformation of
the data itself (e.g., spatial processing of images,
shifting of dates), the de-identified output is
classified as derived data and **SHALL** be managed per
Section 5.4, with the original unmodified source data
preserved per Section 5.3.4.

#### 5.5.3 Access Controls

Access to study data **SHALL** be restricted to authorized
personnel based on their role and responsibilities.

Access controls **SHALL** distinguish between:

- Read-only access (viewing and extracting data)
- Write access (entering or modifying data)
- Administrative access (managing system configuration
  and user accounts)

Access to source data write functions **SHALL** be limited
to personnel authorized to perform data correction per
SOP-002 Section 5.3.5 or Section 5.3.4 of this procedure's
source data preservation requirements.

Access permissions **SHALL** be documented and reviewed
periodically as part of the system periodic review
(Section 4.8.2).

#### 5.5.4 Data Backup

Backup requirements for study data **SHALL** comply with
Section 4.8.4.

For source data, backup procedures **SHALL** ensure that a
complete, recoverable copy of all source data exists in a
location separate from the primary storage system.

The Study Protocol **SHOULD** specify the acceptable level
of data loss (recovery point objective) for each type of
study data, proportionate to the difficulty and cost of
re-acquiring the data.

### 5.6 Data Quality

#### 5.6.1 Data Quality Checks

Study data **SHALL** be subject to automated quality checks
proportionate to the criticality of the data as determined
by the risk assessment per SOP-003.

Automated quality checks **MAY** include:

- Completeness checks (all expected data elements are
  present)
- Range and consistency checks (values fall within
  expected ranges and do not contradict related data
  elements)
- Timeliness checks (data was captured within expected
  timeframes)
- Format checks (data conforms to expected formats and
  standards per Section 5.3.2)

Automated quality checks implemented in validated systems
are verified during system validation (Section 4.6.2).

Centralized data review and oversight of data quality
across sites is managed under
[SOP-009: Monitoring and Oversight
Procedure](SOP-009--Monitoring_and_Oversight_Procedure.md).

The Study Protocol **SHALL** specify the automated quality
checks to be performed for each type of study data.

#### 5.6.2 Query Management

When a data quality check identifies a potential issue, a
query **SHALL** be raised and documented.

Queries **SHALL** include:

- The data element in question
- The nature of the issue identified
- The date the query was raised
- The person or system that raised the query

Query resolution **SHALL** be documented, including the
resolution action taken (correction, confirmation that the
original value is correct, or other explanation) and the
person who resolved the query.

Corrections to source data resulting from query resolution
**SHALL** follow the record correction procedures in
SOP-002 Section 5.3.5.

#### 5.6.3 Data Cleaning and Correction

Data cleaning activities (systematic review and correction
of data prior to analysis) **SHALL** be documented,
including:

- The cleaning rules applied
- The data elements affected
- Whether cleaning was performed manually or through
  automated procedures

Data cleaning **SHALL NOT** alter source data. Corrections
to source data follow SOP-002 Section 5.3.5. Systematic
data transformations applied during cleaning (e.g.,
recoding, unit conversions, outlier handling) produce
derived data per Section 5.4 and **SHALL** be documented
with full processing provenance per Section 5.4.1.

The Study Protocol or Data Management Plan **SHALL** specify
the data cleaning approach, including when cleaning occurs
relative to database lock (Section 5.7.1).

### 5.7 Database Lock and Archival

#### 5.7.1 Database Lock Procedures

Database lock is the point at which the study's
analysis-ready dataset is frozen for statistical analysis.
This includes source data captured in the study database
and derived data produced through data cleaning and
processing activities. After database lock, no further
changes to the locked dataset **SHALL** be permitted except
through a formal unlock procedure.

Before database lock, the study team **SHALL** confirm that:

- All data quality checks (Section 5.6.1) have been
  completed
- All open queries (Section 5.6.2) have been resolved or
  documented as unresolvable
- Data cleaning activities (Section 5.6.3) have been
  completed
- Monitoring activities per SOP-009 have been completed
  or are at a stage that supports lock

Database lock **SHALL** be documented, including the date,
the person authorizing the lock, and confirmation that the
above requirements were met.

If the database must be unlocked after lock (e.g., to
correct a critical error), the unlock **SHALL** be:

- Authorized by the Study Director or Principal
  Investigator
- Documented with the rationale for the unlock
- Limited in scope to the specific corrections required
- Followed by re-lock with documentation

#### 5.7.2 Long-Term Format Preservation

Study data **SHALL** be archived in formats that remain
accessible for the full retention period defined in SOP-002
Section 5.4.

For data stored in proprietary formats, the archival
**SHALL** include one or more of the following:

- Conversion to a non-proprietary format that preserves
  the essential content of the data
- Retention of the software (including version) necessary
  to read the data, or documentation sufficient to enable
  future access
- Documentation of the format specification sufficient for
  a knowledgeable person to develop a reader

The Study Protocol **SHOULD** identify data types at risk
of format obsolescence and specify the preservation
approach for each.

#### 5.7.3 Data Archival and Retention

Upon study completion, all study data (source data, derived
data, and processing provenance documentation) **SHALL** be
archived per
[SOP-007: Study Closeout and Archiving
Procedure](SOP-007--Study_Closeout_and_Archiving_Procedure.md).

Archived study data **SHALL** be:

- Complete (all source data, derived data, and associated
  provenance per Section 5.4.1)
- Protected against modification (write-protected or
  stored in a system that prevents alteration)
- Accessible for retrieval during the retention period to
  support regulatory inspections, audits, and secondary
  analyses
- Stored separately from active study systems

Retention periods for study data **SHALL** comply with
SOP-002 Section 5.4.

## 6.0 RECORDS AND DOCUMENTATION

Records generated under this procedure **SHALL** be maintained per SOP-002
(in the TMF for study-specific records, and as quality records for
system-level records) and retained per SOP-002 Section 5.4.

Records **MAY** include but are not limited to:

- The system inventory and GxP risk assessments, including documented
  rationales for non-GxP classifications
- Validation Plans and Validation Reports
- Specification documents (URS, FS, DS)
- Test records (IQ, OQ, PQ), including test failures, their investigation,
  and retest results
- Traceability Matrices
- Supplier assessment records and leveraged supplier documentation
- Change control records for validated systems
- Periodic review records
- Incident and problem records
- Backup, recovery, and restoration test records
- System retirement records
- Data management records, including the Data Management Plan, data
  transfer records, processing and provenance records, query and data
  cleaning records, and database lock and unlock records
- Training records per Section 7.0

## 7.0 TRAINING

Personnel holding responsibilities under Section 4.2 **SHALL** be trained
on this procedure commensurate with those responsibilities before
exercising them, and maintain documented evidence of training per QM-001
Section 6.1.1.

Users of validated systems **SHALL** be trained on the system functions
relevant to their role before access is granted (Section 4.7.4).
Retraining **SHALL** be conducted when significant changes are made to
this procedure or to the systems on which personnel were trained.

## APPENDIX A: GAMP CATEGORY DECISION TREE

Apply the following questions, in order, to each system. Where a system
contains components of different kinds, classify each component
individually (Section 4.3.1). GAMP 5 does not define a Category 2; it is
not used.

1. Is the software foundational infrastructure (for example, an operating
   system, database management system, or network component) that supports
   application software but contains no study-specific logic?
   - **Yes**: **Category 1 (Infrastructure Software)**
   - **No**: continue to question 2

2. Was the software developed specifically for __NewInstitute__, or
   customized through changes to its source code?
   - **Yes**: **Category 5 (Custom Software)**. Development is governed by
     SOP-015; validation by this procedure.
   - **No**: continue to question 3

3. Is the software configured to meet study-specific needs using the
   vendor's built-in tools, without modification of the underlying source
   code?
   - **Yes**: **Category 4 (Configurable Software)**
   - **No**: **Category 3 (Non-Configurable Software)**

Note: a configurable product operated entirely with its default,
out-of-the-box configuration is used "as installed" and is classified
Category 3.

After determining the GAMP category, assess the system's GxP impact per
Section 4.3.2. The category and the GxP impact classification together
determine the required validation activities (Sections 4.4.2 and 4.5, and
Appendix B).

## APPENDIX B: VALIDATION DELIVERABLES BY CATEGORY

This appendix summarizes the minimum validation deliverables by GAMP
category. Sections 4.4 through 4.6 are canonical; where this summary and
the body differ, the body governs. Within each category, the rigor of each
deliverable scales with the system's GxP impact classification per
Section 4.4.2, and supplier documentation **MAY** be leveraged per
Section 4.4.3.

| Deliverable | Cat 1 | Cat 3 | Cat 4 | Cat 5 |
|---|---|---|---|---|
| Version and configuration documentation (§4.5.1) | Required | N/A | N/A | N/A |
| User Requirements Specification (§4.6.1) | N/A | Required | Required | Required |
| Functional Specification (§4.6.1) | N/A | N/A | Required | Required |
| Design Specification (§4.6.1) | N/A | N/A | N/A | Required (1) |
| Installation Qualification (§4.6.2) | Required | Required | Required | Required |
| Operational Qualification (§4.6.2) | N/A | Required (2) | Required | Required |
| Performance Qualification (§4.6.2) | N/A | N/A | Required (3) | Required (3) |
| Traceability Matrix (§4.6.3) | N/A | (4) | Required | Required |
| Validation Report (§4.6.4) | Required (5) | Required (5) | Required (5) | Required (5) |

Notes:

1. For Category 5 systems developed under SOP-015, the design
   documentation produced during development **MAY** serve as the DS
   (Section 4.6.1).
2. OQ **MAY** be limited where the supplier provides adequate test
   evidence (Section 4.5.2).
3. PQ is required when the system processes study data under production
   conditions (Sections 4.5.3, 4.5.4, and 4.6.2).
4. Required for Category 3 systems classified as GxP-critical
   (Section 4.6.3).
5. A Validation Report is prepared for each GxP-critical or GxP-relevant
   system, whatever its category (Section 4.6.4).

For low-complexity systems, specification levels **MAY** be combined into
a single document per Section 4.6.1.
