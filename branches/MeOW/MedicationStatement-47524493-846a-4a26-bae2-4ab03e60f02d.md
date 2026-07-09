# Example Medication Statement-2 - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Example Medication Statement-2**

## Example MedicationStatement: Example Medication Statement-2

**identifier**: `urn:oid:1.2.3.999`/9e312d6b-c6b6-439a-a730-6efaa5dcf8bc

**status**: Recorded

### Medications

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Medication Cimicifuga racemosa extract (substance)](Bundle-ExampleIPS.md#urn-uuid-8adc0999-9468-4ac9-9557-680fa133d626) |

**subject**: [Martha DeLarosa Female, DoB: 1972-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Bundle-ExampleIPS.md#urn-uuid-2b90dd2b-2dab-4c75-9bb9-a355e07401e8)

**effective**: 2016-01 --> (ongoing)

### Dosages

| | |
| :--- | :--- |
| - | **Route** |
| * | Oral use |



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "47524493-846a-4a26-bae2-4ab03e60f02d",
  "identifier" : [{
    "system" : "urn:oid:1.2.3.999",
    "value" : "9e312d6b-c6b6-439a-a730-6efaa5dcf8bc"
  }],
  "status" : "recorded",
  "medication" : {
    "reference" : {
      "reference" : "urn:uuid:8adc0999-9468-4ac9-9557-680fa133d626"
    }
  },
  "subject" : {
    "reference" : "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
  },
  "effectivePeriod" : {
    "start" : "2016-01"
  },
  "dosage" : [{
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    }
  }]
}

```
