# Example Observation - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Example Observation**

## Example Observation: Example Observation

**status**: Final

**category**: Laboratory

**code**: ABO and Rh group [Type] in Blood

**subject**: [Martha DeLarosa Female, DoB: 1972-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Bundle-ExampleIPS.md#urn-uuid-2b90dd2b-2dab-4c75-9bb9-a355e07401e8)

**effective**: 2015-10-10 09:15:00+0100

**performer**: [Organization Laboratoire de charme](Bundle-ExampleIPS.md#urn-uuid-45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)

**value**: Blood group A Rh(D) positive



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "aa11a2be-3e36-4be7-b58a-6fc3dace2740",
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
      "code" : "882-1",
      "display" : "ABO and Rh group [Type] in Blood"
    }]
  },
  "subject" : {
    "reference" : "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
  },
  "effectiveDateTime" : "2015-10-10T09:15:00+01:00",
  "performer" : [{
    "reference" : "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "278149003",
      "display" : "Blood group A Rh(D) positive"
    }]
  }
}

```
