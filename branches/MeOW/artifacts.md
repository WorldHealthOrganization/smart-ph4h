# Artifact Index - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* **Artifact Index**

## Artifact Index

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Dosaging (model)](StructureDefinition-DosagingInformation.md) | Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. |
| [Medication Overview (Minimal)](StructureDefinition-MedicationOverviewMin.md) | Minimal medication overview payload for use within a QR code payload. Based on the IHE Pharmacy Medication Overview logical model, with short element labels (one or two letters) and simple data |
| [Medication Overview (model)](StructureDefinition-MedicationOverviewLM.md) | Logical model for the whole medication overview (medication schema) |
| [Medication Treatment (model)](StructureDefinition-MedicationTreatmentLM.md) | Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other) |
| [Medication Treatment Line (Minimal)](StructureDefinition-MedicationTreatmentLineMin.md) | Minimal medication treatment line payload for use within a QR code payload. Based on the IHE Pharmacy Medication Treatment Line logical model, with short element labels (one or two letters) and simple data types suitable for encoding in a compact QR code payload. |
| [Medication Treatment Line (model)](StructureDefinition-MedicationTreatmentLineLM.md) | Logical model for representing one line/medication in medication overview. |
| [Medicinal product (model)](StructureDefinition-MedicinalProductLM.md) | Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. |
| [Patient (model)](StructureDefinition-PatientLM.md) | Logical model for patient (basic data relevant for this use case) |
| [Practitioner (model)](StructureDefinition-PractitionerLM.md) | Logical model for practitioner (basic data relevant for this use case) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Medication Overview Bundle](StructureDefinition-MedicationOverview.md) | The profile for the full Medication overview as a Bundle type Document |
| [Medication Overview Composition](StructureDefinition-MedicationOverviewComposition.md) | The profile for how to organize the information in a medication overview |
| [Medication Treatment](StructureDefinition-MedicationTreatment.md) | The profile for Medication Treatment in a Medication Record - a set of treatment lines/items |
| [Medication Treatment Line](StructureDefinition-MedicationTreatmentLine.md) | The profile for Medication Treatment Line - a single recorded item/line of a medication treatment |
| [Medicinal product](StructureDefinition-IHEMedication.md) | Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products. |
| [SMART Bundle (IPS)](StructureDefinition-SmartIPS.md) | This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) for use within the SMART Guidelines.Note: The profile expects atleast one SMART Consent entry to be present. |
| [SMART Composition (IPS)](StructureDefinition-SmartIPSComposition.md) | This profile represents the constraints applied to the Composition resource by the International Patient Summary (IPS) for use within the SMART GuidelinesNote: The profile expects atleast one SMART Consent entry to be present within Advance Directives section |
| [SMART Consent](StructureDefinition-SmartConsent.md) | A profile of the consent resource to track consent of a pilgrim to participateFHIR R5 upgrade notes (need this implemented as a structure map):* make cardinality of decision 1.. and should stop using it in lieu of verification.verified
* use verification.verifiedBy instead of Consent.organization
* the period extenion should be replaced by Consent.period
* the Consent.patient should be replaced by Consent.subject
* Consent.verification.verifiedBy should be used instead of Consent.organization
 |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Medication - Classification](StructureDefinition-ihe-ext-medication-classification.md) | Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc.. |
| [Medication - Device](StructureDefinition-ihe-ext-medication-device.md) | Device, typically an administration device, included in the medicinal product. |
| [Medication - Product Name](StructureDefinition-ihe-ext-medication-productname.md) | Name of the medicinal product. Optionally the type of name (Full official name, prescribing name, invented name) and language of the name can be specified. The extension is a simplified approach of what is used in MedicinalProductDefinition resource. |
| [Medication - Size of Item](StructureDefinition-ihe-ext-medication-sizeofitem.md) | Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials. |
| [MedicationStatement - Substitution](StructureDefinition-ihe-ext-medicationstatement-substitution.md) | Whether and which type of substitution is allowed for this medication treatment line |
| [MedicationStatement - Verification Information](StructureDefinition-ihe-ext-medicationstatement-verificationinformation.md) | Verification of medication line. The overview is verified as a whole, but each line is equipped with the information. The actual functional meaning and impact of this validation depends on the implementation. |

### Terminology: Structure Maps 

These define transformations to convert between data structures used by systems conforming to this implementation guide.

| |
| :--- |
| [http://smart.who.int/ph4h/StructureMap/MedicationOverviewLMToMedicationOverviewBundle](StructureMap-httpsmart.who.intph4hStructureMapMedicationOverviewLMToMedicationOverviewBundle.md) |
| [http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle](StructureMap-httpsmart.who.intph4hStructureMapMedicationOverviewMinToMedicationOverviewBundle.md) |
| [http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewLM](StructureMap-httpsmart.who.intph4hStructureMapMedicationOverviewMinToMedicationOverviewLM.md) |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example Allergy](AllergyIntolerance-72884cad-ebe6-4f43-a51a-2f978275f131.md) | Example copied from FHIR-IPS used for Composition |
| [Example Condition](Condition-c64139e7-f02d-409c-bf34-75e8bf23bc89.md) | Example copied from FHIR-IPS used for Composition |
| [Example Condition-2](Condition-c4597aa2-688a-401b-a658-70acc6de28c5.md) | Example copied from FHIR-IPS used for Composition |
| [Example DocumentReference Consent Paperwork](DocumentReference-ex-documentreference.md) | Example copied from FHIR-IPS used for Composition |
| [Example DocumentReference Consent Paperwork](DocumentReference-ex-documentreference1.md) | Example copied from FHIR-IPS used for Composition |
| [Example Medication Statement-1](MedicationStatement-c220e36c-eb67-4fc4-9ba1-2fabc52acec5.md) | Example copied from FHIR-IPS used for Composition |
| [Example Medication Statement-2](MedicationStatement-47524493-846a-4a26-bae2-4ab03e60f02d.md) | Example copied from FHIR-IPS used for Composition |
| [Example Medication-1](Medication-976d0804-cae0-45ae-afe3-a19f3ceba6bb.md) | Example copied from FHIR-IPS used for Composition |
| [Example Medication-2](Medication-8adc0999-9468-4ac9-9557-680fa133d625.md) | Example copied from FHIR-IPS used for Composition |
| [Example MedicationOverview Bundle (transformed)](Bundle-ExampleMedicationOverviewBundle.md) | FHIR Bundle resulting from applying the MedicationOverviewMin -> MedicationOverview StructureMap to ExampleMedicationOverviewMin. |
| [Example MedicationOverviewMin (compact QR payload)](Binary-574687583.md) | Minimal medication overview payload for Martha DeLarosa with two medication lines, suitable for QR code transmission. |
| [Example Obsersvation-3](Observation-b4916505-a06b-460c-9be8-011609282456.md) | Example copied from FHIR-IPS used for Composition |
| [Example Observation](Observation-aa11a2be-3e36-4be7-b58a-6fc3dace2740.md) | Example copied from FHIR-IPS used for Composition |
| [Example Observation-2](Observation-6e39ccf3-f997-4a2b-8f28-b4b71c778c79.md) | Example copied from FHIR-IPS used for Composition |
| [Example Observation-4](Observation-a6a5a1d5-c896-4c7e-b922-888fcc7e6ae3.md) | Example copied from FHIR-IPS used for Composition |
| [Example Observation-5](Observation-2639657a-c19a-48e2-82cc-471e13b8ad93.md) | Example copied from FHIR-IPS used for Composition |
| [Example Observation-6](Observation-cc354e00-a419-47ea-8b6c-1768b2a01645.md) | Example copied from FHIR-IPS used for Composition |
| [Example Observation-7](Observation-26bee0a9-5997-4557-ab9d-c6adbb05b571.md) | Example copied from FHIR-IPS used for Composition |
| [Example Org](Organization-45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd6.md) | Example copied from FHIR-IPS used for Composition |
| [Example Organization](Organization-890751f4-2924-4636-bab7-efffc7f3cf14.md) | Example copied from FHIR-IPS used for Composition |
| [Example Patient](Patient-2b90dd2b-2dab-4c75-9bb9-a355e07401e7.md) | Example copied from FHIR-IPS used for Composition |
| [Example Practitioner](Practitioner-1c616b24-3895-48c4-9a02-9a64110351ee.md) | Example copied from FHIR-IPS used for Composition |
| [Example SMART Consent](Consent-c7781f44-6df8-4a8b-9e06-0b34263a47c6.md) | Example SMART Consent |
| [Example SMART IPS](Bundle-ExampleIPS.md) | SMART IPS Example |
| [Example SMART IPS Composition](Composition-ExampleComposition.md) | SMART IPS Composition Example |

