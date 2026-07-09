# Home - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/ImplementationGuide/smart.who.int.ph4h | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:PH4H |

This WHO PH4H Implementation Guide details how to use Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR) for consistent digital representation of PH4H services.

 This implementation guide and set of artifacts are still undergoing development. 

### About the PH4H

The Pan-American Digital Health Route (PH4H) is an initiative that aims to enable connected health for all people in Latin America and the Caribbean (LAC). Led by the Inter-American Development Bank [IDB](https://www.iadb.org/en), the Pan-American Health Organization [PAHO](https://www.paho.org/en) and the countries of the region, this initiative aims to facilitate the exchange of health data in a secure, efficient and interoperable manner, both within and between countries, allowing people in the region to share and access their health information. PH4H promotes regional synergies by maximizing national investments for the exchange of health information. In addition, PH4H facilitates continuous coordination with regional organizations and networks in digital health, thus strengthening integration and efficiency in the health sector.

The main goal of PH4H is to deliver better health services to patients regardless of their location. The project seeks to improve the health care of those who temporarily move for work or other reasons. For migrants populations, it will enable sharing medical histories, which may improve their opportunities for better employment and education. In addition, the PH4H will strengthen public health surveillance, optimize access to limited human resources, and foster research and innovation, resulting in more efficient public health policies and improved regional economies. As a result, countries will be better prepared for future pandemics and other health threats. Multiple cross-border use cases that can be implemented within the PH4H will be included in this repository, countries can decide which specific use case they want.

A Governance Working Group is currently being formed to steward the development and implementation of health services under the PH4H (see [PH4H Policy](https://worldhealthorganization.github.io/smart-ph4h/trust_domain_policy.html)). Unlike a physical route, a PH4H transcends borders, allowing universal access without leaving anyone behind. The initiative, which will be officially launched at the end of 2024, is supported by the Government of Japan's Fund for Quality Infrastructure, Disaster Resilience and Health. We look forward to more partners joining us on this transformative journey.

# PH4H Usecase Taxonomy

* Digital Vaccine Certification: 
* COVID-19 (or global emergent vaccine required for travel/work)
* IHR: Yellow Fever/Polio 
 Routine Child Immunizations
* Routine Adult Immunizations
 
* Digital Certification of Health Documents 
* Prescriptions 
 Lab Results
* Medical Certificates
* Birth Certificates
* Death Certificate
 
* International Patient Summary 
* Migrant
* Tourist
* Student
 
* Digital Certification of Professional or Education Credentials 
* Health Care Worker credentials (e.g. professional registration)
* Education credentials
 
* Cross-border Telehealth 
* Provider-to-provider (e-consult/2nd opinion)
* Remote digital diagnostic interpretation (imaging, etc)
* Patient-to-provider
 
* Public Health 
* Surveillance
* Research
 
* Digital Certification of Supply Chain Integrity of Medications and Supplies 
* Medication supply chain validation
 
* Digital Health Knowledge Exchange 
* Knowledge hub
 

[The Pan-American Highway for Digital Health Flyer](https://github.com/user-attachments/files/17232390/The.Pan-American.Highway.for.Digital.Health.1-page.pdf)

[PH4H Newsletter Subscription](https://github.com/user-attachments/files/17232393/PH4H.Newsletter.Subscription.pdf)

### About this Implementation Guide

This implementation guide includes a machine-readable representation of WHO guidelines for PH4H, as documented in the WHO Digital Adaptation Kit for PH4H (link forthcoming) and explicitly encodes computer-interoperable logic, including data models, terminologies, and logic expressions, in a computable language to support implementation of PH4H use cases by WHO Member States.

The guide is part of the [WHO SMART Guidelines approach](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) to support countries to integrate WHO global health and data recommendations into digital systems accurately and consistently. It defines a series of FHIR Resources, Profiles, Extensions, and Terminology based on the WHO PH4H Digital Adaptation Kit (link forthcoming).

Supporting guidance, recommendations, resources, and standards are included in the [References](references.md) and [Dependencies](dependencies.md).

### About this implementation guide

This implementation guide is broken into the following levels of [knowledge representation](https://hl7.org/fhir/uv/cpg/documentation-approach-06-01-levels-of-knowledge-representation.html):

* [Home](trust_domain.md) - contains references to the guidance, guidelines, [policies](trust_domain_policy.md) and recommendations underpinning this implementation guide.
* [Business Requirements](business-requirements.md) - contains the requirements for this implementation guide including the definition of key concepts, use cases, and a data dictionary.
* [Data Models and Exchange](data-models-and-exchange.md) - contains the data models and data exchange protocols with actors and transactions defined.
* [Deployment Guidance ](deployment.md) - contains relevant technical specifications and guidance, testing resources, reference implementation materials, and supporting guidance for adaptation to local contexts.

This guide is prepared to facilitate digital implementation of WHO PH4H guidelines by providing FHIR-based computable representations of and implementation guidance for using the key components of the WHO PH4H digital adaptation kit (DAK):

* Health Interventions & Recommendations
* Generic Personas
* User Scenarios
* Business Processes & Workflows
* Core Data Elements
* Decision Support Logic
* Indicators & Monitoring
* Functional & Non-functional Requirements

This guide is a companion to the Digital Adaptation Kit (DAK) and should be used side-by-side with it. Implementers are strongly encouraged to make use of the Digital Adaptation Kit. The focus of this guide is on the explanation and use of the computable artifacts.

This guide assumes use of the following resources:

* [IPS Patient](http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* [CPG ActivityDefinitions](https://hl7.org/fhir/uv/cpg/artifacts.html#activitydefinition-index)
* For a complete listing of the artifacts defined in this implementation guide, refer to the [Artifact Index](artifacts.md).
* A complete offline copy of this implementation guide can be found on the [Downloads](downloads.md) page.
* This Implementation Guide makes use of [Clinical Quality Language](https://cql.hl7.org/) for the decision support artifacts including the PlanDefinitions and Measures. They are used to express how a calculation should occur and can be used with a CQL engine in order to process the decision or indicator directly from the applicable FHIR resources. Links to this specification, the FHIR Clinical Practice Guidelines Speciciation, and other helpful resources can be found in the Support dropdown.

### Disclaimer

The specification herewith documented is a demo working specification and may not be used for any implementation purposes. This draft is provided without warranty of completeness or consistency and the official publication supersedes this draft. No liability can be inferred from the use or misuse of this specification or its consequences.

{} {} {} {}



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "smart.who.int.ph4h",
  "url" : "http://smart.who.int/ph4h/ImplementationGuide/smart.who.int.ph4h",
  "version" : "0.9.9",
  "name" : "PH4H",
  "title" : "SMART PH4H",
  "status" : "draft",
  "date" : "2026-06-18T13:21:56+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "An empty Implementation Guide to be used as a starting point for building SMART Guidelines Implementation Guides",
  "packageId" : "smart.who.int.ph4h",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.2.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.3.0"
  },
  {
    "id" : "smart_who_int_base",
    "uri" : "http://smart.who.int/base/ImplementationGuide/smart.who.int.base",
    "packageId" : "smart.who.int.base",
    "version" : "0.2.0"
  },
  {
    "id" : "hl7_fhir_uv_sdc",
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "3.0.0"
  },
  {
    "id" : "hl7_fhir_uv_ips",
    "uri" : "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips",
    "packageId" : "hl7.fhir.uv.ips",
    "version" : "1.1.0"
  },
  {
    "id" : "ihe_iti_pcf",
    "uri" : "https://profiles.ihe.net/ITI/PCF/ImplementationGuide/ihe.iti.pcf",
    "packageId" : "ihe.iti.pcf",
    "version" : "1.1.0"
  },
  {
    "id" : "hl7_fhir_uv_cpg",
    "uri" : "http://hl7.org/fhir/uv/cpg/ImplementationGuide/hl7.fhir.uv.cpg",
    "packageId" : "hl7.fhir.uv.cpg",
    "version" : "2.0.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DosagingInformation"
      },
      "name" : "Dosaging (model)",
      "description" : "Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/72884cad-ebe6-4f43-a51a-2f978275f131"
      },
      "name" : "Example Allergy",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/c64139e7-f02d-409c-bf34-75e8bf23bc89"
      },
      "name" : "Example Condition",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/c4597aa2-688a-401b-a658-70acc6de28c5"
      },
      "name" : "Example Condition-2",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/ex-documentreference1"
      },
      "name" : "Example DocumentReference Consent Paperwork",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      }],
      "reference" : {
        "reference" : "DocumentReference/ex-documentreference"
      },
      "name" : "Example DocumentReference Consent Paperwork",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      }],
      "reference" : {
        "reference" : "MedicationStatement/c220e36c-eb67-4fc4-9ba1-2fabc52acec5"
      },
      "name" : "Example Medication Statement-1",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      }],
      "reference" : {
        "reference" : "MedicationStatement/47524493-846a-4a26-bae2-4ab03e60f02d"
      },
      "name" : "Example Medication Statement-2",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/976d0804-cae0-45ae-afe3-a19f3ceba6bb"
      },
      "name" : "Example Medication-1",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/8adc0999-9468-4ac9-9557-680fa133d625"
      },
      "name" : "Example Medication-2",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/ExampleMedicationOverviewBundle"
      },
      "name" : "Example MedicationOverview Bundle (transformed)",
      "description" : "FHIR Bundle resulting from applying the MedicationOverviewMin -> MedicationOverview StructureMap to ExampleMedicationOverviewMin.",
      "isExample" : true,
      "profile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationOverview"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-resource-format",
        "valueCode" : "application/fhir+json"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Binary"
      }],
      "reference" : {
        "reference" : "Binary/574687583"
      },
      "name" : "Example MedicationOverviewMin (compact QR payload)",
      "description" : "Minimal medication overview payload for Martha DeLarosa with two medication lines, suitable for QR code transmission.",
      "isExample" : true,
      "profile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewMin"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/b4916505-a06b-460c-9be8-011609282456"
      },
      "name" : "Example Obsersvation-3",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/aa11a2be-3e36-4be7-b58a-6fc3dace2740"
      },
      "name" : "Example Observation",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/6e39ccf3-f997-4a2b-8f28-b4b71c778c79"
      },
      "name" : "Example Observation-2",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/a6a5a1d5-c896-4c7e-b922-888fcc7e6ae3"
      },
      "name" : "Example Observation-4",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/2639657a-c19a-48e2-82cc-471e13b8ad93"
      },
      "name" : "Example Observation-5",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/cc354e00-a419-47ea-8b6c-1768b2a01645"
      },
      "name" : "Example Observation-6",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/26bee0a9-5997-4557-ab9d-c6adbb05b571"
      },
      "name" : "Example Observation-7",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd6"
      },
      "name" : "Example Org",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/890751f4-2924-4636-bab7-efffc7f3cf14"
      },
      "name" : "Example Organization",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e7"
      },
      "name" : "Example Patient",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/1c616b24-3895-48c4-9a02-9a64110351ee"
      },
      "name" : "Example Practitioner",
      "description" : "Example copied from FHIR-IPS used for Composition",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Consent"
      }],
      "reference" : {
        "reference" : "Consent/c7781f44-6df8-4a8b-9e06-0b34263a47c6"
      },
      "name" : "Example SMART Consent",
      "description" : "Example SMART Consent",
      "isExample" : true,
      "profile" : ["http://smart.who.int/ph4h/StructureDefinition/SmartConsent"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/ExampleIPS"
      },
      "name" : "Example SMART IPS",
      "description" : "SMART IPS Example",
      "isExample" : true,
      "profile" : ["http://smart.who.int/ph4h/StructureDefinition/SmartIPS"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      }],
      "reference" : {
        "reference" : "Composition/ExampleComposition"
      },
      "name" : "Example SMART IPS Composition",
      "description" : "SMART IPS Composition Example",
      "isExample" : true,
      "profile" : ["http://smart.who.int/ph4h/StructureDefinition/SmartIPSComposition"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-classification"
      },
      "name" : "Medication - Classification",
      "description" : "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc..",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-device"
      },
      "name" : "Medication - Device",
      "description" : "Device, typically an administration device, included in the medicinal product.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-productname"
      },
      "name" : "Medication - Product Name",
      "description" : "Name of the medicinal product. Optionally the type of name (Full official name, prescribing name, invented name) and language of the name can be specified. The extension is a simplified approach of what is used in MedicinalProductDefinition resource.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-sizeofitem"
      },
      "name" : "Medication - Size of Item",
      "description" : "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationOverviewMin"
      },
      "name" : "Medication Overview (Minimal)",
      "description" : "Minimal medication overview payload for use within a QR code payload. Based on the IHE Pharmacy Medication Overview logical model, with short element labels (one or two letters) and simple data",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationOverviewLM"
      },
      "name" : "Medication Overview (model)",
      "description" : "Logical model for the whole medication overview (medication schema)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationOverview"
      },
      "name" : "Medication Overview Bundle",
      "description" : "The profile for the full Medication overview as a Bundle type Document",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationOverviewComposition"
      },
      "name" : "Medication Overview Composition",
      "description" : "The profile for how to organize the information in a medication overview",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationTreatment"
      },
      "name" : "Medication Treatment",
      "description" : "The profile for Medication Treatment in a Medication Record - a set of treatment lines/items",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationTreatmentLM"
      },
      "name" : "Medication Treatment (model)",
      "description" : "Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationTreatmentLine"
      },
      "name" : "Medication Treatment Line",
      "description" : "The profile for Medication Treatment Line - a single recorded item/line of a medication treatment",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationTreatmentLineMin"
      },
      "name" : "Medication Treatment Line (Minimal)",
      "description" : "Minimal medication treatment line payload for use within a QR code payload. Based on the IHE Pharmacy Medication Treatment Line logical model, with short element labels (one or two letters) and simple data types suitable for encoding in a compact QR code payload.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicationTreatmentLineLM"
      },
      "name" : "Medication Treatment Line (model)",
      "description" : "Logical model for representing one line/medication in medication overview.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medicationstatement-substitution"
      },
      "name" : "MedicationStatement - Substitution",
      "description" : "Whether and which type of substitution is allowed for this medication treatment line",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medicationstatement-verificationinformation"
      },
      "name" : "MedicationStatement - Verification Information",
      "description" : "Verification of medication line. The overview is verified as a whole, but each line is equipped with the information. The actual functional meaning and impact of this validation depends on the implementation.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IHEMedication"
      },
      "name" : "Medicinal product",
      "description" : "Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicinalProductLM"
      },
      "name" : "Medicinal product (model)",
      "description" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PatientLM"
      },
      "name" : "Patient (model)",
      "description" : "Logical model for patient (basic data relevant for this use case)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PractitionerLM"
      },
      "name" : "Practitioner (model)",
      "description" : "Logical model for practitioner (basic data relevant for this use case)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/SmartIPS"
      },
      "name" : "SMART Bundle (IPS)",
      "description" : "This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) for use within the SMART Guidelines.\n\nNote: The profile expects atleast one SMART Consent entry to be present.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/SmartIPSComposition"
      },
      "name" : "SMART Composition (IPS)",
      "description" : "This profile represents the constraints applied to the Composition resource by the International Patient Summary (IPS) for use within the SMART Guidelines\n\nNote: The profile expects atleast one SMART Consent entry to be present within Advance Directives section",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/SmartConsent"
      },
      "name" : "SMART Consent",
      "description" : "A profile of the consent resource to track consent of a pilgrim to participate\n\nFHIR R5 upgrade notes (need this implemented as a structure map):\n * make cardinality of decision 1.. and should stop using it in lieu of verification.verified\n * use verification.verifiedBy instead of Consent.organization\n * the period extenion should be replaced by Consent.period\n * the Consent.patient should be replaced by Consent.subject\n * Consent.verification.verifiedBy should be used instead of Consent.organization",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/httpsmart.who.intph4hStructureMapMedicationOverviewLMToMedicationOverviewBundle"
      },
      "name" : "http://smart.who.int/ph4h/StructureMap/MedicationOverviewLMToMedicationOverviewBundle"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/httpsmart.who.intph4hStructureMapMedicationOverviewMinToMedicationOverviewLM"
      },
      "name" : "http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewLM"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/httpsmart.who.intph4hStructureMapMedicationOverviewMinToMedicationOverviewBundle"
      },
      "name" : "http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle"
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "changes.html",
          "name" : "changes.html",
          "title" : "Changes",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "dependencies.html",
          "name" : "dependencies.html",
          "title" : "Dependencies",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "references.html",
          "name" : "references.html",
          "title" : "References",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "adapting.html",
          "name" : "adapting.html",
          "title" : "Adapting Guidelines for Country use",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "license.html",
          "name" : "license.html",
          "title" : "License",
          "generation" : "markdown"
        }]
      },
      {
        "sourceUrl" : "business-requirements.html",
        "name" : "business-requirements.html",
        "title" : "Business Requirements",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "concepts.html",
          "name" : "concepts.html",
          "title" : "Concepts",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "personas.html",
          "name" : "personas.html",
          "title" : "Generic Personas",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "scenarios.html",
          "name" : "scenarios.html",
          "title" : "User Scenarios",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "business-processes.html",
          "name" : "business-processes.html",
          "title" : "Business Processes",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "dictionary.html",
          "name" : "dictionary.html",
          "title" : "Data Dictionary",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "decision-logic.html",
          "name" : "decision-logic.html",
          "title" : "Decision-support logic",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "indicators.html",
          "name" : "indicators.html",
          "title" : "Indicator and Performance Metrics",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "functional-requirements.html",
          "name" : "functional-requirements.html",
          "title" : "Functional Requirements",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "non-functional-requirements.html",
          "name" : "non-functional-requirements.html",
          "title" : "Non-functional Requirements",
          "generation" : "markdown"
        }]
      },
      {
        "sourceUrl" : "data-models-and-exchange.html",
        "name" : "data-models-and-exchange.html",
        "title" : "Data Models and Exchange",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "system-actors.html",
          "name" : "system-actors.html",
          "title" : "System Actors",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "sequence-diagrams.html",
          "name" : "sequence-diagrams.html",
          "title" : "Sequence Diagrams",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "transactions.html",
          "name" : "transactions.html",
          "title" : "Transactions",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "indicators-measures.html",
          "name" : "indicators-measures.html",
          "title" : "Indicators and Measures",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "codings.html",
          "name" : "codings.html",
          "title" : "Codings",
          "generation" : "markdown"
        }]
      },
      {
        "sourceUrl" : "deployment.html",
        "name" : "deployment.html",
        "title" : "Deployment",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "security-privacy.html",
          "name" : "security-privacy.html",
          "title" : "Security and Privacy Considerations",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "testing.html",
          "name" : "testing.html",
          "title" : "Testing",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "test-data.html",
          "name" : "test-data.html",
          "title" : "Test Data",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "reference-implementations.html",
          "name" : "reference-implementations.html",
          "title" : "Reference Implementations",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "trust_domain.html",
          "name" : "trust_domain.html",
          "title" : "Trust Domains",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "trust_domain_policy.html",
          "name" : "trust_domain_policy.html",
          "title" : "PH4H Trust Domain Policy",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "trust_domain_specifications.html",
          "name" : "trust_domain_specifications.html",
          "title" : "PH4H Technical Specifications",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "trust_domain_use_cases.html",
          "name" : "trust_domain_use_cases.html",
          "title" : "PH4H Use Cases",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "downloads.html",
          "name" : "downloads.html",
          "title" : "Downloads",
          "generation" : "markdown"
        }]
      },
      {
        "sourceUrl" : "indices.html",
        "name" : "indices.html",
        "title" : "Indices",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "artifacts.html",
          "name" : "artifacts.html",
          "title" : "Artifact Index",
          "generation" : "html"
        },
        {
          "sourceUrl" : "maps.html",
          "name" : "maps.html",
          "title" : "Mappings",
          "generation" : "markdown"
        }]
      },
      {
        "sourceUrl" : "dak-api.html",
        "name" : "dak-api.html",
        "title" : "DAK API Documentation Hub",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2023+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "ci-build"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/maps"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "http://smart.who.int/ph4h/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```
