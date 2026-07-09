# Example Allergy - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Example Allergy**

## Example AllergyIntolerance: Example Allergy

**Abatement**: 2010

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: allergy

**category**: Medication

**criticality**: High Risk

**code**: Substance with penicillin structure and antibacterial mechanism of action (substance)

**patient**: [Martha DeLarosa Female, DoB: 1972-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Bundle-ExampleIPS.md#urn-uuid-2b90dd2b-2dab-4c75-9bb9-a355e07401e8)

**onset**: Absent because : unknown



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "72884cad-ebe6-4f43-a51a-2f978275f131",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/allergyintolerance-abatement",
    "valueDateTime" : "2010"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed"
    }]
  },
  "type" : {
    "coding" : [{
      "code" : "allergy"
    }]
  },
  "category" : ["medication"],
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "373270004",
      "display" : "Substance with penicillin structure and antibacterial mechanism of action (substance)"
    }]
  },
  "patient" : {
    "reference" : "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
  },
  "_onsetDateTime" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }]
  }
}

```
