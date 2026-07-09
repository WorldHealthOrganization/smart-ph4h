# Medication Treatment (model) - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Medication Treatment (model)**

## Logical Model: Medication Treatment (model) 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLM | *Version*:0.9.9 |
| Active as of 2026-06-18 | *Computable Name*:MedicationTreatmentLM |

 
Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other) 

**Usages:**

* Refer to this Logical Model: [Medication Treatment Line (model)](StructureDefinition-MedicationTreatmentLineLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.ph4h|current/StructureDefinition/StructureDefinition-MedicationTreatmentLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationTreatmentLM.csv), [Excel](StructureDefinition-MedicationTreatmentLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationTreatmentLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLM",
  "version" : "0.9.9",
  "name" : "MedicationTreatmentLM",
  "title" : "Medication Treatment (model)",
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
  "description" : "Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other)",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "MedicationTreatmentLM",
      "path" : "MedicationTreatmentLM",
      "short" : "Medication Treatment (model)",
      "definition" : "Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other)"
    },
    {
      "id" : "MedicationTreatmentLM.comment",
      "path" : "MedicationTreatmentLM.comment",
      "short" : "Comment",
      "definition" : "Comment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicationTreatmentLM.treatmentPeriod",
      "path" : "MedicationTreatmentLM.treatmentPeriod",
      "short" : "The intended or effective treatment period",
      "definition" : "The intended or effective treatment period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationTreatmentLM.identifier",
      "path" : "MedicationTreatmentLM.identifier",
      "short" : "Unique identifier of the treatment",
      "definition" : "Unique identifier of the treatment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "MedicationTreatmentLM.indication",
      "path" : "MedicationTreatmentLM.indication",
      "short" : "Reason why the treatment has been prescribed to the patient, or why the patient claims to be taking it",
      "definition" : "Reason why the treatment has been prescribed to the patient, or why the patient claims to be taking it",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
