# Example Observation-4 - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Example Observation-4**

## Example Observation: Example Observation-4

**status**: Final

**category**: Laboratory

**code**: little c Ab [Presence] in Serum or Plasma

**subject**: [Martha DeLarosa Female, DoB: 1972-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Bundle-ExampleIPS.md#urn-uuid-2b90dd2b-2dab-4c75-9bb9-a355e07401e8)

**effective**: 2015-10-10 09:35:00+0100

**performer**: [Organization Laboratoire de charme](Bundle-ExampleIPS.md#urn-uuid-45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)

**value**: Negative



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "a6a5a1d5-c896-4c7e-b922-888fcc7e6ae3",
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
      "code" : "1156-9",
      "display" : "little c Ab [Presence] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
  },
  "effectiveDateTime" : "2015-10-10T09:35:00+01:00",
  "performer" : [{
    "reference" : "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "260385009",
      "display" : "Negative"
    }]
  }
}

```
