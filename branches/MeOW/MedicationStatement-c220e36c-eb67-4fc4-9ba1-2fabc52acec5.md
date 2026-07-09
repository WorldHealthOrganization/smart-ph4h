# Example Medication Statement-1 - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Example Medication Statement-1**

## Example MedicationStatement: Example Medication Statement-1

**identifier**: `urn:oid:1.2.3.999`/b75f92cb-61d4-469a-9387-df5ef70d25f0

**status**: Recorded

### Medications

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Medication Product containing anastrozole (medicinal product)](Bundle-ExampleIPS.md#urn-uuid-976d0804-cae0-45ae-afe3-a19f3ceba6bc) |

**subject**: [Martha DeLarosa Female, DoB: 1972-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Bundle-ExampleIPS.md#urn-uuid-2b90dd2b-2dab-4c75-9bb9-a355e07401e8)

**effective**: 2015-03 --> (ongoing)

> **dosage****timing**: Count 1 times, Once**route**: Oral use

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 1 tablet (Details: UCUM code1 = '1') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "c220e36c-eb67-4fc4-9ba1-2fabc52acec5",
  "identifier" : [{
    "system" : "urn:oid:1.2.3.999",
    "value" : "b75f92cb-61d4-469a-9387-df5ef70d25f0"
  }],
  "status" : "recorded",
  "medication" : {
    "reference" : {
      "reference" : "urn:uuid:976d0804-cae0-45ae-afe3-a19f3ceba6bc"
    }
  },
  "subject" : {
    "reference" : "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
  },
  "effectivePeriod" : {
    "start" : "2015-03"
  },
  "dosage" : [{
    "timing" : {
      "repeat" : {
        "count" : 1,
        "periodUnit" : "d"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "doseAndRate" : [{
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/dose-rate-type",
          "code" : "ordered",
          "display" : "Ordered"
        }]
      },
      "doseQuantity" : {
        "value" : 1,
        "unit" : "tablet",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }]
  }]
}

```
