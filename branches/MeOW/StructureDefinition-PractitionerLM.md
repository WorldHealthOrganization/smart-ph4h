# Practitioner (model) - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Practitioner (model)**

## Logical Model: Practitioner (model) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/StructureDefinition/PractitionerLM | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:PractitionerLM |

 
Logical model for practitioner (basic data relevant for this use case) 

**Usages:**

* Refer to this Logical Model: [Medication Overview (model)](StructureDefinition-MedicationOverviewLM.md) and [Medication Treatment Line (model)](StructureDefinition-MedicationTreatmentLineLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.ph4h|current/StructureDefinition/StructureDefinition-PractitionerLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PractitionerLM.csv), [Excel](StructureDefinition-PractitionerLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PractitionerLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/ph4h/StructureDefinition/PractitionerLM",
  "version" : "0.9.9",
  "name" : "PractitionerLM",
  "title" : "Practitioner (model)",
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
  "description" : "Logical model for practitioner (basic data relevant for this use case)",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/ph4h/StructureDefinition/PractitionerLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PractitionerLM",
      "path" : "PractitionerLM",
      "short" : "Practitioner (model)",
      "definition" : "Logical model for practitioner (basic data relevant for this use case)"
    },
    {
      "id" : "PractitionerLM.identifier",
      "path" : "PractitionerLM.identifier",
      "short" : "Prescribing/dispensing practitioner's Identifier ",
      "definition" : "Prescribing/dispensing practitioner's Identifier ",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PractitionerLM.name",
      "path" : "PractitionerLM.name",
      "short" : "Prescribing/dispensing practitioner's name, incl first name, last name, or any other relevant name parts",
      "definition" : "Prescribing/dispensing practitioner's name, incl first name, last name, or any other relevant name parts",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "HumanName"
      }]
    },
    {
      "id" : "PractitionerLM.specialtyProfession",
      "path" : "PractitionerLM.specialtyProfession",
      "short" : "Specialty/profession of the prescribing/dispensing practitioner",
      "definition" : "Specialty/profession of the prescribing/dispensing practitioner",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "PractitionerLM.organisation",
      "path" : "PractitionerLM.organisation",
      "short" : "Facility/organisation the prescribing/dispensing practitioner represents",
      "definition" : "Facility/organisation the prescribing/dispensing practitioner represents",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "PractitionerLM.organisation.identifier",
      "path" : "PractitionerLM.organisation.identifier",
      "short" : "Organisation Identifier ",
      "definition" : "Organisation Identifier ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PractitionerLM.organisation.facilityName",
      "path" : "PractitionerLM.organisation.facilityName",
      "short" : "Facility/organisation name",
      "definition" : "Facility/organisation name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PractitionerLM.organisation.facilityAddress",
      "path" : "PractitionerLM.organisation.facilityAddress",
      "short" : "Facility/organisation address",
      "definition" : "Facility/organisation address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "PractitionerLM.contactInformation",
      "path" : "PractitionerLM.contactInformation",
      "short" : "Contact information for the prescriber/dispenser or the organisation",
      "definition" : "Contact information for the prescriber/dispenser or the organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "PractitionerLM.contactInformation.phone",
      "path" : "PractitionerLM.contactInformation.phone",
      "short" : "Phone number",
      "definition" : "Phone number",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PractitionerLM.contactInformation.email",
      "path" : "PractitionerLM.contactInformation.email",
      "short" : "Email address",
      "definition" : "Email address",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
