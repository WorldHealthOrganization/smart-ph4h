# Medicinal product - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Medicinal product**

## Resource Profile: Medicinal product 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/ph4h/StructureDefinition/IHEMedication | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:IHEMedication |

 
Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products. 

**Usages:**

* Refer to this Profile: [Medicinal product](StructureDefinition-IHEMedication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.ph4h|current/StructureDefinition/StructureDefinition-IHEMedication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMedication.csv), [Excel](StructureDefinition-IHEMedication.xlsx), [Schematron](StructureDefinition-IHEMedication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMedication",
  "url" : "http://smart.who.int/ph4h/StructureDefinition/IHEMedication",
  "version" : "0.9.9",
  "name" : "IHEMedication",
  "title" : "Medicinal product",
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
  "description" : "Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.extension",
      "path" : "Medication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Medication.extension:productName",
      "path" : "Medication.extension",
      "sliceName" : "productName",
      "short" : "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-productname"]
      }]
    },
    {
      "id" : "Medication.extension:classification",
      "path" : "Medication.extension",
      "sliceName" : "classification",
      "short" : "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-classification"]
      }]
    },
    {
      "id" : "Medication.extension:sizeOfItem",
      "path" : "Medication.extension",
      "sliceName" : "sizeOfItem",
      "short" : "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-sizeofitem"]
      }]
    },
    {
      "id" : "Medication.extension:device",
      "path" : "Medication.extension",
      "sliceName" : "device",
      "short" : "Device, typically an administration device, included in the product.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/ihe-ext-medication-device"]
      }]
    },
    {
      "id" : "Medication.identifier",
      "path" : "Medication.identifier",
      "short" : "Identifier for the medicinal product, its generic representation, or packaged product.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "A terminology-based code for the product",
      "mustSupport" : true
    },
    {
      "id" : "Medication.doseForm",
      "path" : "Medication.doseForm",
      "short" : "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.totalVolume",
      "path" : "Medication.totalVolume",
      "short" : "Total volume or number of package items inside a package. This element should not contain overall prescribed amount, but describe the product itself. In case of complex packages, this element could be left empty, and number of different items could be indicated in the nested Medications.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "short" : "Ingredient or a part product. For combination packs, each ingredient can be a separate manufactured item with its own ingredients, dose form, and strength",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item",
      "path" : "Medication.ingredient.item",
      "short" : "Substance (Substance resource or concept from terminology) or a medicinal product (Medication resource or concept from terminology). Medicinal product can be an ingredient in case of extemporal medications or combination packs (e.g Creme + 6 tablets)",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance",
        "http://smart.who.int/ph4h/StructureDefinition/IHEMedication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.isActive",
      "path" : "Medication.ingredient.isActive",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength[x]",
      "path" : "Medication.ingredient.strength[x]",
      "mustSupport" : true
    }]
  }
}

```
