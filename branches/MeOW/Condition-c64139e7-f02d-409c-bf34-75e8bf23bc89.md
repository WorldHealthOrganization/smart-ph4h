# Example Condition - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Example Condition**

## Example Condition: Example Condition

**identifier**: `urn:oid:1.2.3.999`/c87bf51c-e53c-4bfe-b8b7-aa62bdd93002

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem

**severity**: Moderate

**code**: Menopausal flushing (finding)

**subject**: [Martha DeLarosa Female, DoB: 1972-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Bundle-ExampleIPS.md#urn-uuid-2b90dd2b-2dab-4c75-9bb9-a355e07401e8)

**onset**: 2015

**recordedDate**: 2016-10



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "c64139e7-f02d-409c-bf34-75e8bf23bc89",
  "identifier" : [{
    "system" : "urn:oid:1.2.3.999",
    "value" : "c87bf51c-e53c-4bfe-b8b7-aa62bdd93002"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "75326-9",
      "display" : "Problem"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA6751-7",
      "display" : "Moderate"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "198436008",
      "display" : "Menopausal flushing (finding)",
      "_display" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "nl-NL"
          },
          {
            "url" : "content",
            "valueString" : "opvliegers"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "system" : "http://hl7.org/fhir/sid/icd-10",
      "code" : "N95.1",
      "display" : "Menopausal and female climacteric states"
    }]
  },
  "subject" : {
    "reference" : "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
  },
  "onsetDateTime" : "2015",
  "recordedDate" : "2016-10"
}

```
