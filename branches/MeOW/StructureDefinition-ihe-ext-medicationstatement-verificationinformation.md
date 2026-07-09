# MedicationStatement - Verification Information - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **MedicationStatement - Verification Information**

## Extension: MedicationStatement - Verification Information 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medicationstatement-verificationinformation | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:VerificationInformation |

Verification of medication line. The overview is verified as a whole, but each line is equipped with the information. The actual functional meaning and impact of this validation depends on the implementation.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medication Treatment Line](StructureDefinition-MedicationTreatmentLine.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.ph4h|current/StructureDefinition/StructureDefinition-ihe-ext-medicationstatement-verificationinformation.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medicationstatement-verificationinformation.csv), [Excel](StructureDefinition-ihe-ext-medicationstatement-verificationinformation.xlsx), [Schematron](StructureDefinition-ihe-ext-medicationstatement-verificationinformation.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medicationstatement-verificationinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medicationstatement-verificationinformation",
  "version" : "0.9.9",
  "name" : "VerificationInformation",
  "title" : "MedicationStatement - Verification Information",
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
  "description" : "Verification of medication line. The overview is verified as a whole, but each line is equipped with the information. The actual functional meaning and impact of this validation depends on the implementation.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MedicationStatement"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MedicationStatement - Verification Information",
      "definition" : "Verification of medication line. The overview is verified as a whole, but each line is equipped with the information. The actual functional meaning and impact of this validation depends on the implementation."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:verifier",
      "path" : "Extension.extension",
      "sliceName" : "verifier",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:verifier.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:verifier.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "verifier"
    },
    {
      "id" : "Extension.extension:verifier.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "Extension.extension:verificationTime",
      "path" : "Extension.extension",
      "sliceName" : "verificationTime",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:verificationTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:verificationTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "verificationTime"
    },
    {
      "id" : "Extension.extension:verificationTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medicationstatement-verificationinformation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
