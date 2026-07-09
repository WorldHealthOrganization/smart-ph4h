# Medication - Size of Item - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Medication - Size of Item**

## Extension: Medication - Size of Item 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-sizeofitem | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:MedicationSizeOfItem |

Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medicinal product](StructureDefinition-IHEMedication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.ph4h|current/StructureDefinition/StructureDefinition-ihe-ext-medication-sizeofitem.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medication-sizeofitem.csv), [Excel](StructureDefinition-ihe-ext-medication-sizeofitem.xlsx), [Schematron](StructureDefinition-ihe-ext-medication-sizeofitem.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medication-sizeofitem",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-sizeofitem",
  "version" : "0.9.9",
  "name" : "MedicationSizeOfItem",
  "title" : "Medication - Size of Item",
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
  "description" : "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials.",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Medication - Size of Item",
      "definition" : "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-sizeofitem"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
