# Medication Overview Composition - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Medication Overview Composition**

## Resource Profile: Medication Overview Composition 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewComposition | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:MedicationOverviewComposition |

 
The profile for how to organize the information in a medication overview 

**Usages:**

* Use this Profile: [Medication Overview Bundle](StructureDefinition-MedicationOverview.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.ph4h|current/StructureDefinition/StructureDefinition-MedicationOverviewComposition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationOverviewComposition.csv), [Excel](StructureDefinition-MedicationOverviewComposition.xlsx), [Schematron](StructureDefinition-MedicationOverviewComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationOverviewComposition",
  "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewComposition",
  "version" : "0.9.9",
  "name" : "MedicationOverviewComposition",
  "title" : "Medication Overview Composition",
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
  "description" : "The profile for how to organize the information in a medication overview",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Composition.section:MedRecordTreatment",
      "path" : "Composition.section",
      "sliceName" : "MedRecordTreatment",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:MedRecordTreatment.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationTreatment"]
      }]
    },
    {
      "id" : "Composition.section:MedRecordTreatmentLine",
      "path" : "Composition.section",
      "sliceName" : "MedRecordTreatmentLine",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:MedRecordTreatmentLine.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLine"]
      }]
    },
    {
      "id" : "Composition.section:MedRecordMedicationSummaryView",
      "path" : "Composition.section",
      "sliceName" : "MedRecordMedicationSummaryView",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:detailsRecord",
      "path" : "Composition.section",
      "sliceName" : "detailsRecord",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:detailsRecord.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationStatement",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
        "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"]
      }]
    }]
  }
}

```
