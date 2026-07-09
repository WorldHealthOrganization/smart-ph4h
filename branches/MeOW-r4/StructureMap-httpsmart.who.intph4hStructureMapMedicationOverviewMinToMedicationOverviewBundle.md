# http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle**

## StructureMap: http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle 

| | |
| :--- | :--- |
| *Official URL*:MedicationOverviewMinToMedicationOverviewBundle | *Version*:0.9.9 |
| Draft as of 2026-06-24 | *Computable Name*:http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "httpsmart.who.intph4hStructureMapMedicationOverviewMinToMedicationOverviewBundle",
  "url" : "MedicationOverviewMinToMedicationOverviewBundle",
  "version" : "0.9.9",
  "name" : "http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle",
  "status" : "draft",
  "date" : "2026-06-24T12:43:15+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "structure" : [{
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewMin",
    "mode" : "source",
    "alias" : "MedicationOverviewMin"
  },
  {
    "url" : "http://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationOverviewLM",
    "mode" : "target",
    "alias" : "MedicationOverviewLM"
  },
  {
    "url" : "http://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationOverview",
    "mode" : "target",
    "alias" : "MedicationOverviewBundle"
  }],
  "import" : ["http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewLM",
  "http://smart.who.int/ph4h/StructureMap/MedicationOverviewLMToMedicationOverviewBundle"],
  "group" : [{
    "name" : "MedicationOverviewMinToMedicationOverviewBundle",
    "typeMode" : "none",
    "documentation" : "---------------------------------------------------------------------------\r\nTop-level group: chain Min -> IHE LM -> IHE Bundle\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "MedicationOverviewMin",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "MedicationOverviewBundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "chainMinToBundle",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "contextType" : "variable",
        "variable" : "lm",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "MedicationOverviewLM"
        }]
      }],
      "dependent" : [{
        "name" : "MedicationOverviewMinToMedicationOverviewLM",
        "variable" : ["src", "lm"]
      },
      {
        "name" : "MedicationOverviewLMToMedicationOverviewBundle",
        "variable" : ["lm", "tgt"]
      }]
    }]
  }]
}

```
