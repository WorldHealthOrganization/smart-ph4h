# Example Observation-7 - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Example Observation-7**

## Example Observation: Example Observation-7

**status**: Final

**category**: Laboratory

**code**: Bacteria identified in Isolate

**subject**: [Martha DeLarosa Female, DoB: 1972-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Bundle-ExampleIPS.md#urn-uuid-2b90dd2b-2dab-4c75-9bb9-a355e07401e8)

**effective**: 2017-12-10 08:20:00+0100

**performer**: [Organization Laboratoire de charme](Bundle-ExampleIPS.md#urn-uuid-45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)

**value**: Methicillin resistant Staphylococcus aureus

**note**: 

> 

Healthy carrier of MRSA




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "26bee0a9-5997-4557-ab9d-c6adbb05b571",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "42803-7",
      "display" : "Bacteria identified in Isolate"
    }]
  },
  "subject" : {
    "reference" : "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
  },
  "effectiveDateTime" : "2017-12-10T08:20:00+01:00",
  "performer" : [{
    "reference" : "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "115329001",
      "display" : "Methicillin resistant Staphylococcus aureus"
    }]
  },
  "note" : [{
    "text" : "Healthy carrier of MRSA"
  }]
}

```
