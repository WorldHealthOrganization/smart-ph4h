# Medication Overview Bundle - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Medication Overview Bundle**

## Resource Profile: Medication Overview Bundle 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/StructureDefinition/MedicationOverview | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:MedicationOverviewBundle |

 
The profile for the full Medication overview as a Bundle type Document 

**Usages:**

* Examples for this Profile: [Bundle/ExampleMedicationOverviewBundle](Bundle-ExampleMedicationOverviewBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.ph4h|current/StructureDefinition/StructureDefinition-MedicationOverview.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationOverview.csv), [Excel](StructureDefinition-MedicationOverview.xlsx), [Schematron](StructureDefinition-MedicationOverview.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationOverview",
  "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverview",
  "version" : "0.9.9",
  "name" : "MedicationOverviewBundle",
  "title" : "Medication Overview Bundle",
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
  "description" : "The profile for the full Medication overview as a Bundle type Document",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "document",
      "definition" : "Bundle is a document",
      "fixedCode" : "document"
    },
    {
      "id" : "Bundle.total",
      "path" : "Bundle.total",
      "max" : "0"
    },
    {
      "id" : "Bundle.link",
      "path" : "Bundle.link",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "description" : "Slicing based on the profile conformance of the sliced element",
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Bundle.entry:Composition",
      "path" : "Bundle.entry",
      "sliceName" : "Composition",
      "short" : "Composition",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Composition.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Composition",
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewComposition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient",
      "short" : "Patient for whom the record is concerned",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordTreatment",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordTreatment",
      "short" : "Treatments associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordTreatment.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "CarePlan",
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationTreatment"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordTreatmentLine",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordTreatmentLine",
      "short" : "Treatment lines associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordTreatmentLine.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationStatement",
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLine"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordOrder",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordOrder",
      "short" : "Medication summaries associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordOrder.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordDispense",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordDispense",
      "short" : "Medication summaries associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordDispense.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationDispense"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordAdministration",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordAdministration",
      "short" : "Medication summaries associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordAdministration.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationAdministration"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordUsage",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordUsage",
      "short" : "Medication summaries associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordUsage.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationStatement"
      }],
      "mustSupport" : true
    }]
  }
}

```
