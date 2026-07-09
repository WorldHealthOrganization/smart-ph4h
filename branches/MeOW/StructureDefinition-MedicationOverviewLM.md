# Medication Overview (model) - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Medication Overview (model)**

## Logical Model: Medication Overview (model) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewLM | *Version*:0.9.9 |
| Active as of 2026-06-18 | *Computable Name*:MedicationOverviewLM |

 
Logical model for the whole medication overview (medication schema) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.ph4h|current/StructureDefinition/StructureDefinition-MedicationOverviewLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationOverviewLM.csv), [Excel](StructureDefinition-MedicationOverviewLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationOverviewLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewLM",
  "version" : "0.9.9",
  "name" : "MedicationOverviewLM",
  "title" : "Medication Overview (model)",
  "status" : "active",
  "date" : "2026-06-18T13:21:56+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "Logical model for the whole medication overview (medication schema)",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "MedicationOverviewLM",
      "path" : "MedicationOverviewLM",
      "short" : "Medication Overview (model)",
      "definition" : "Logical model for the whole medication overview (medication schema)"
    },
    {
      "id" : "MedicationOverviewLM.patient",
      "path" : "MedicationOverviewLM.patient",
      "short" : "Patient",
      "definition" : "Patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "http://smart.who.int/ph4h/StructureDefinition/PatientLM"
      }]
    },
    {
      "id" : "MedicationOverviewLM.medicationTreatmentLine",
      "path" : "MedicationOverviewLM.medicationTreatmentLine",
      "short" : "List item in the list of all current medication based treatments. Each line can be verified or unverified.",
      "definition" : "List item in the list of all current medication based treatments. Each line can be verified or unverified.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLineLM"
      }]
    },
    {
      "id" : "MedicationOverviewLM.verification",
      "path" : "MedicationOverviewLM.verification",
      "short" : "Verification of overview",
      "definition" : "Verification of overview",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicationOverviewLM.verification.practicioner",
      "path" : "MedicationOverviewLM.verification.practicioner",
      "short" : "HCP verifying the treatments/overview",
      "definition" : "HCP verifying the treatments/overview",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ph4h/StructureDefinition/PractitionerLM"]
      }]
    },
    {
      "id" : "MedicationOverviewLM.verification.verificationTime",
      "path" : "MedicationOverviewLM.verification.verificationTime",
      "short" : "Time of the verification of the overview",
      "definition" : "Time of the verification of the overview",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicationOverviewLM.comment",
      "path" : "MedicationOverviewLM.comment",
      "short" : "Comment on the full overview",
      "definition" : "Comment on the full overview",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicationOverviewLM.comment.author",
      "path" : "MedicationOverviewLM.comment.author",
      "short" : "author of the comment (pharmacist, doctor, social carer)",
      "definition" : "author of the comment (pharmacist, doctor, social carer)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ph4h/StructureDefinition/PractitionerLM"]
      }]
    },
    {
      "id" : "MedicationOverviewLM.comment.date",
      "path" : "MedicationOverviewLM.comment.date",
      "short" : "time of comment",
      "definition" : "time of comment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicationOverviewLM.comment.commentText",
      "path" : "MedicationOverviewLM.comment.commentText",
      "short" : "content of the comment",
      "definition" : "content of the comment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicationOverviewLM.comment.subject",
      "path" : "MedicationOverviewLM.comment.subject",
      "short" : "What the comment is about. It can reference either a treatment line, treatment, or full overview",
      "definition" : "What the comment is about. It can reference either a treatment line, treatment, or full overview",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
