# http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle**

## StructureMap: http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle 

| | |
| :--- | :--- |
| *Official URL*:MedicationOverviewMinToMedicationOverviewBundle | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "httpsmart.who.intph4hStructureMapMedicationOverviewMinToMedicationOverviewBundle",
  "url" : "MedicationOverviewMinToMedicationOverviewBundle",
  "version" : "0.9.9",
  "name" : "http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewBundle",
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
  "structure" : [{
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewMin",
    "mode" : "source",
    "alias" : "MedicationOverviewMin"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewLM",
    "mode" : "produced",
    "alias" : "MedicationOverviewLM"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverview",
    "mode" : "target",
    "alias" : "MedicationOverviewBundle"
  }],
  "import" : ["http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewLM",
  "http://smart.who.int/ph4h/StructureMap/MedicationOverviewLMToMedicationOverviewBundle"],
  "group" : [{
    "name" : "MedicationOverviewMinToMedicationOverviewBundle",
    "documentation" : "---------------------------------------------------------------------------\r\nTop-level group: chain Min -> LM -> Bundle via an intermediate LM instance\r\n---------------------------------------------------------------------------",
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
        "variable" : "lm",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "MedicationOverviewLM"
        }]
      }],
      "dependent" : [{
        "name" : "MedicationOverviewMinToMedicationOverviewLM",
        "parameter" : [{
          "valueId" : "src"
        },
        {
          "valueId" : "lm"
        }]
      },
      {
        "name" : "MedicationOverviewLMToMedicationOverviewBundle",
        "parameter" : [{
          "valueId" : "lm"
        },
        {
          "valueId" : "tgt"
        }]
      }]
    }]
  }]
}

```
