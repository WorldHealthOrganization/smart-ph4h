# DAK API Documentation Hub - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* **DAK API Documentation Hub**

## DAK API Documentation Hub

# DAK API Documentation Hub

This page provides access to Data Access Kit (DAK) API documentation and schemas.

## Table of Contents

1. [DAK API Documentation Hub](#dak-api-documentation-hub)

### API Enumeration Endpoints

These endpoints provide lists of all available schemas and vocabularies of each type:

#### LogicalModels.schema.json

Enumeration of all available Logical Model schemas

##### Available Endpoints:

* [StructureDefinition-MedicationOverviewLM.schema.json](schemas/StructureDefinition-MedicationOverviewLM.schema.json) - JSON Schema for Medication Overview (model)
* [StructureDefinition-MedicationTreatmentLM.schema.json](schemas/StructureDefinition-MedicationTreatmentLM.schema.json) - JSON Schema for Medication Treatment (model)
* [StructureDefinition-MedicationOverviewMin.schema.json](schemas/StructureDefinition-MedicationOverviewMin.schema.json) - JSON Schema for Medication Overview (Minimal)
* [StructureDefinition-DosagingInformation.schema.json](schemas/StructureDefinition-DosagingInformation.schema.json) - JSON Schema for Dosaging (model)
* [StructureDefinition-MedicinalProductLM.schema.json](schemas/StructureDefinition-MedicinalProductLM.schema.json) - JSON Schema for Medicinal product (model)
* [StructureDefinition-PractitionerLM.schema.json](schemas/StructureDefinition-PractitionerLM.schema.json) - JSON Schema for Practitioner (model)
* [StructureDefinition-MedicationTreatmentLineLM.schema.json](schemas/StructureDefinition-MedicationTreatmentLineLM.schema.json) - JSON Schema for Medication Treatment Line (model)
* [StructureDefinition-PatientLM.schema.json](schemas/StructureDefinition-PatientLM.schema.json) - JSON Schema for Patient (model)
* [StructureDefinition-MedicationTreatmentLineMin.schema.json](schemas/StructureDefinition-MedicationTreatmentLineMin.schema.json) - JSON Schema for Medication Treatment Line (Minimal)

### Logical Model Schemas (9 available)

JSON Schema definitions for FHIR Logical Models, defining structured data elements and their relationships:

#### Medication Overview (model)

Logical model for the whole medication overview (medication schema)

[🩺 FHIR](StructureDefinition-MedicationOverviewLM.md)
[📄 JSON Schema](schemas/StructureDefinition-MedicationOverviewLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationOverviewLM.openapi.json)

#### Medication Treatment (model)

Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other)

[🩺 FHIR](StructureDefinition-MedicationTreatmentLM.md)
[📄 JSON Schema](schemas/StructureDefinition-MedicationTreatmentLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationTreatmentLM.openapi.json)

#### Medication Overview (Minimal)

Minimal medication overview payload for use within a QR code payload. Based on the IHE Pharmacy Medication Overview logical model, with short element labels (one or two letters) and simple data

[🩺 FHIR](StructureDefinition-MedicationOverviewMin.md)
[📄 JSON Schema](schemas/StructureDefinition-MedicationOverviewMin.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationOverviewMin.openapi.json)

#### Dosaging (model)

Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type.

[🩺 FHIR](StructureDefinition-DosagingInformation.md)
[📄 JSON Schema](schemas/StructureDefinition-DosagingInformation.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-DosagingInformation.openapi.json)

#### Medicinal product (model)

Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile.

[🩺 FHIR](StructureDefinition-MedicinalProductLM.md)
[📄 JSON Schema](schemas/StructureDefinition-MedicinalProductLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicinalProductLM.openapi.json)

#### Practitioner (model)

Logical model for practitioner (basic data relevant for this use case)

[🩺 FHIR](StructureDefinition-PractitionerLM.md)
[📄 JSON Schema](schemas/StructureDefinition-PractitionerLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PractitionerLM.openapi.json)

#### Medication Treatment Line (model)

Logical model for representing one line/medication in medication overview.

[🩺 FHIR](StructureDefinition-MedicationTreatmentLineLM.md)
[📄 JSON Schema](schemas/StructureDefinition-MedicationTreatmentLineLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationTreatmentLineLM.openapi.json)

#### Patient (model)

Logical model for patient (basic data relevant for this use case)

[🩺 FHIR](StructureDefinition-PatientLM.md)
[📄 JSON Schema](schemas/StructureDefinition-PatientLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PatientLM.openapi.json)

#### Medication Treatment Line (Minimal)

Minimal medication treatment line payload for use within a QR code payload. Based on the IHE Pharmacy Medication Treatment Line logical model, with short element labels (one or two letters) and simple data types suitable for encoding in a compact QR code payload.

[🩺 FHIR](StructureDefinition-MedicationTreatmentLineMin.md)
[📄 JSON Schema](schemas/StructureDefinition-MedicationTreatmentLineMin.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationTreatmentLineMin.openapi.json)

### OpenAPI Documentation

Complete API specification documentation for all available endpoints:

#### StructureDefinition-MedicationOverviewLM Endpoints

API endpoints for Medication Overview (model)

[📄 JSON Schema](schemas/StructureDefinition-MedicationOverviewLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationOverviewLM.openapi.json)

#### StructureDefinition-MedicationTreatmentLM Endpoints

API endpoints for Medication Treatment (model)

[📄 JSON Schema](schemas/StructureDefinition-MedicationTreatmentLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationTreatmentLM.openapi.json)

#### StructureDefinition-MedicationOverviewMin Endpoints

API endpoints for Medication Overview (Minimal)

[📄 JSON Schema](schemas/StructureDefinition-MedicationOverviewMin.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationOverviewMin.openapi.json)

#### StructureDefinition-DosagingInformation Endpoints

API endpoints for Dosaging (model)

[📄 JSON Schema](schemas/StructureDefinition-DosagingInformation.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-DosagingInformation.openapi.json)

#### StructureDefinition-MedicinalProductLM Endpoints

API endpoints for Medicinal product (model)

[📄 JSON Schema](schemas/StructureDefinition-MedicinalProductLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicinalProductLM.openapi.json)

#### StructureDefinition-PractitionerLM Endpoints

API endpoints for Practitioner (model)

[📄 JSON Schema](schemas/StructureDefinition-PractitionerLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PractitionerLM.openapi.json)

#### StructureDefinition-MedicationTreatmentLineLM Endpoints

API endpoints for Medication Treatment Line (model)

[📄 JSON Schema](schemas/StructureDefinition-MedicationTreatmentLineLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationTreatmentLineLM.openapi.json)

#### StructureDefinition-PatientLM Endpoints

API endpoints for Patient (model)

[📄 JSON Schema](schemas/StructureDefinition-PatientLM.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-PatientLM.openapi.json)

#### StructureDefinition-MedicationTreatmentLineMin Endpoints

API endpoints for Medication Treatment Line (Minimal)

[📄 JSON Schema](schemas/StructureDefinition-MedicationTreatmentLineMin.schema.json)
[🔗 OpenAPI](schemas/StructureDefinition-MedicationTreatmentLineMin.openapi.json)

#### LogicalModels Enumeration Endpoint

Complete list of all available Logical Model schemas

[📄 JSON Schema](LogicalModels.schema.json)
[🔗 OpenAPI](LogicalModels-enumeration.openapi.json)

#### StructureDefinition-MedicinalProductLM API

OpenAPI specification for StructureDefinition-MedicinalProductLM

[📖 Documentation](StructureDefinition-MedicinalProductLM.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-MedicinalProductLM.openapi.json)

#### StructureDefinition-PatientLM API

OpenAPI specification for StructureDefinition-PatientLM

[📖 Documentation](StructureDefinition-PatientLM.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PatientLM.openapi.json)

#### StructureDefinition-MedicationTreatmentLM API

OpenAPI specification for StructureDefinition-MedicationTreatmentLM

[📖 Documentation](StructureDefinition-MedicationTreatmentLM.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-MedicationTreatmentLM.openapi.json)

#### StructureDefinition-DosagingInformation API

OpenAPI specification for StructureDefinition-DosagingInformation

[📖 Documentation](StructureDefinition-DosagingInformation.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-DosagingInformation.openapi.json)

#### StructureDefinition-MedicationOverviewMin API

OpenAPI specification for StructureDefinition-MedicationOverviewMin

[📖 Documentation](StructureDefinition-MedicationOverviewMin.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-MedicationOverviewMin.openapi.json)

#### StructureDefinition-PractitionerLM API

OpenAPI specification for StructureDefinition-PractitionerLM

[📖 Documentation](StructureDefinition-PractitionerLM.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-PractitionerLM.openapi.json)

#### StructureDefinition-MedicationOverviewLM API

OpenAPI specification for StructureDefinition-MedicationOverviewLM

[📖 Documentation](StructureDefinition-MedicationOverviewLM.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-MedicationOverviewLM.openapi.json)

#### StructureDefinition-MedicationTreatmentLineLM API

OpenAPI specification for StructureDefinition-MedicationTreatmentLineLM

[📖 Documentation](StructureDefinition-MedicationTreatmentLineLM.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-MedicationTreatmentLineLM.openapi.json)

#### StructureDefinition-MedicationTreatmentLineMin API

OpenAPI specification for StructureDefinition-MedicationTreatmentLineMin

[📖 Documentation](StructureDefinition-MedicationTreatmentLineMin.md)
[🔗 OpenAPI Spec](schemas/StructureDefinition-MedicationTreatmentLineMin.openapi.json)

### Using the DAK API

#### Schema Validation

Each JSON Schema can be used to validate data structures in your applications.

* Type definitions and constraints
* Property descriptions and examples
* Required field specifications
* Enumeration values with links to definitions

#### JSON-LD Semantic Integration

The JSON-LD vocabularies provide semantic web integration for ValueSet enumerations.

#### Integration with FHIR

All schemas are derived from the FHIR definitions in this implementation guide.

#### API Endpoints

The enumeration endpoints provide machine-readable lists of all available schemas.

-------

**This documentation hub is automatically generated from the available schema and API definitions.**

