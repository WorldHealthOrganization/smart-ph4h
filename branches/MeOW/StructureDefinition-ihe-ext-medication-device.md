# Medication - Device - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Medication - Device**

## Extension: Medication - Device 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-device | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:MedicationDevice |

Device, typically an administration device, included in the medicinal product.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medicinal product](StructureDefinition-IHEMedication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.ph4h|current/StructureDefinition/StructureDefinition-ihe-ext-medication-device.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medication-device.csv), [Excel](StructureDefinition-ihe-ext-medication-device.xlsx), [Schematron](StructureDefinition-ihe-ext-medication-device.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medication-device",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-device",
  "version" : "0.9.9",
  "name" : "MedicationDevice",
  "title" : "Medication - Device",
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
  "description" : "Device, typically an administration device, included in the medicinal product.",
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
      "short" : "Medication - Device",
      "definition" : "Device, typically an administration device, included in the medicinal product."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:device",
      "path" : "Extension.extension",
      "sliceName" : "device",
      "short" : "Coded or referenced device",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:device.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:device.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "device"
    },
    {
      "id" : "Extension.extension:device.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/DeviceDefinition"]
      }]
    },
    {
      "id" : "Extension.extension:quantity",
      "path" : "Extension.extension",
      "sliceName" : "quantity",
      "short" : "Number of defined devices in te package",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:quantity.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:quantity.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "quantity"
    },
    {
      "id" : "Extension.extension:quantity.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-device"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
