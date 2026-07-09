# http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewLM - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewLM**

## StructureMap: http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewLM 

| | |
| :--- | :--- |
| *Official URL*:MedicationOverviewMinToMedicationOverviewLM | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewLM |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "httpsmart.who.intph4hStructureMapMedicationOverviewMinToMedicationOverviewLM",
  "url" : "MedicationOverviewMinToMedicationOverviewLM",
  "version" : "0.9.9",
  "name" : "http://smart.who.int/ph4h/StructureMap/MedicationOverviewMinToMedicationOverviewLM",
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
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLineMin",
    "mode" : "source",
    "alias" : "MedicationTreatmentLineMin"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewLM",
    "mode" : "target",
    "alias" : "MedicationOverviewLM"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/PatientLM",
    "mode" : "target",
    "alias" : "PatientLM"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLineLM",
    "mode" : "target",
    "alias" : "MedicationTreatmentLineLM",
    "documentation" : "---------------------------------------------------------------------------"
  }],
  "group" : [{
    "name" : "MedicationOverviewMinToMedicationOverviewLM",
    "documentation" : "Top-level group: 1 patient + 0..* medication treatment lines\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "MedicationOverviewMin",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "MedicationOverviewLM",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "patient",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "patient",
        "variable" : "patient"
      }],
      "dependent" : [{
        "name" : "MedicationOverviewMinToPatientLM",
        "parameter" : [{
          "valueId" : "src"
        },
        {
          "valueId" : "patient"
        }]
      }]
    },
    {
      "name" : "treatmentLine",
      "source" : [{
        "context" : "src",
        "element" : "m",
        "variable" : "line"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "medicationTreatmentLine",
        "variable" : "tline"
      }],
      "dependent" : [{
        "name" : "MedicationTreatmentLineMinToMedicationTreatmentLineLM",
        "parameter" : [{
          "valueId" : "line"
        },
        {
          "valueId" : "tline"
        }]
      }]
    }]
  },
  {
    "name" : "MedicationOverviewMinToPatientLM",
    "documentation" : "---------------------------------------------------------------------------\r\nMedicationOverviewMin demographic fields -> PatientLM\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "MedicationOverviewMin",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "PatientLM",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "name",
      "source" : [{
        "context" : "src",
        "element" : "n",
        "variable" : "n"
      }],
      "target" : [{
        "variable" : "hn",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "HumanName"
        }]
      },
      {
        "context" : "hn",
        "element" : "text",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "n"
        }]
      },
      {
        "context" : "tgt",
        "element" : "name",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "hn"
        }]
      }],
      "documentation" : "Name: create HumanName, populate, assign"
    },
    {
      "name" : "dateOfBirth",
      "source" : [{
        "context" : "src",
        "element" : "dob",
        "variable" : "dob"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "dateOfBirth",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dob"
        }]
      }]
    },
    {
      "name" : "gender",
      "source" : [{
        "context" : "src",
        "element" : "s",
        "variable" : "s"
      }],
      "target" : [{
        "variable" : "gc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "gc",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://hl7.org/fhir/administrative-gender"
        }]
      },
      {
        "context" : "gc",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "s"
        }]
      },
      {
        "variable" : "g",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "g",
        "element" : "coding",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "gc"
        }]
      },
      {
        "context" : "tgt",
        "element" : "gender",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "g"
        }]
      }],
      "documentation" : "Gender: create Coding, then CodeableConcept wrapping it, assign"
    },
    {
      "name" : "identifier",
      "source" : [{
        "context" : "src",
        "element" : "id",
        "variable" : "id"
      }],
      "target" : [{
        "variable" : "ident",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Identifier"
        }]
      }],
      "rule" : [{
        "name" : "identifierValue",
        "source" : [{
          "context" : "id"
        }],
        "target" : [{
          "context" : "ident",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "id"
          }]
        }]
      },
      {
        "name" : "identifierType",
        "source" : [{
          "context" : "src",
          "element" : "dt",
          "variable" : "dt"
        }],
        "target" : [{
          "variable" : "tc",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "tc",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "dt"
          }]
        },
        {
          "variable" : "t",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "t",
          "element" : "coding",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "tc"
          }]
        },
        {
          "context" : "ident",
          "element" : "type",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "t"
          }]
        }],
        "documentation" : "Identifier.type: create Coding + CodeableConcept, assign to ident.type"
      },
      {
        "name" : "identifierAssign",
        "source" : [{
          "context" : "id"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "identifier",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ident"
          }]
        }]
      }],
      "documentation" : "Identifier: create Identifier, populate (+ optional type), assign"
    }]
  },
  {
    "name" : "MedicationTreatmentLineMinToMedicationTreatmentLineLM",
    "documentation" : "---------------------------------------------------------------------------\r\nOne MedicationTreatmentLineMin -> one MedicationTreatmentLineLM\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "MedicationTreatmentLineMin",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "MedicationTreatmentLineLM",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "medication",
      "source" : [{
        "context" : "src",
        "element" : "m",
        "variable" : "med"
      }],
      "target" : [{
        "variable" : "c",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "c",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "med"
        }]
      },
      {
        "context" : "c",
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "med"
        }]
      },
      {
        "variable" : "cc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "cc",
        "element" : "coding",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "c"
        }]
      },
      {
        "context" : "tgt",
        "element" : "medicationCodeableConcept",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "cc"
        }]
      }],
      "documentation" : "Medication: create Coding, then CodeableConcept wrapping it, assign"
    },
    {
      "name" : "effectivePeriod",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "variable" : "ep",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Period"
        }]
      }],
      "rule" : [{
        "name" : "effStart",
        "source" : [{
          "context" : "src",
          "element" : "es",
          "variable" : "es"
        }],
        "target" : [{
          "context" : "ep",
          "element" : "start",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "es"
          }]
        }]
      },
      {
        "name" : "effEnd",
        "source" : [{
          "context" : "src",
          "element" : "ee",
          "variable" : "ee"
        }],
        "target" : [{
          "context" : "ep",
          "element" : "end",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ee"
          }]
        }]
      },
      {
        "name" : "effAssign",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "effectivePeriod",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ep"
          }]
        }]
      }],
      "documentation" : "Effective period: create Period, populate, assign"
    },
    {
      "name" : "dateAsserted",
      "source" : [{
        "context" : "src",
        "element" : "da",
        "variable" : "da"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "recordingMetadata",
        "variable" : "rm"
      }],
      "rule" : [{
        "name" : "recordedTime",
        "source" : [{
          "context" : "da"
        }],
        "target" : [{
          "context" : "rm",
          "element" : "recordedTime",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "da"
          }]
        }]
      }],
      "documentation" : "recordingMetadata is a BackboneElement defined inline in the LM — navigate."
    },
    {
      "name" : "dosage",
      "source" : [{
        "context" : "src",
        "element" : "d",
        "variable" : "d"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "preparationInstructions",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "d"
        }]
      }],
      "documentation" : "Dosage as free text. Route to preparationInstructions (a plain string array)"
    },
    {
      "name" : "reason",
      "source" : [{
        "context" : "src",
        "element" : "r",
        "variable" : "r"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "indicationText",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "r"
        }]
      }]
    },
    {
      "name" : "adherence",
      "source" : [{
        "context" : "src",
        "element" : "a",
        "variable" : "a"
      }],
      "target" : [{
        "variable" : "tsc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "tsc",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "a"
        }]
      },
      {
        "variable" : "ts",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "ts",
        "element" : "coding",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "tsc"
        }]
      },
      {
        "context" : "tgt",
        "element" : "treatmentStatus",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "ts"
        }]
      }],
      "documentation" : "Adherence: create Coding, then CodeableConcept wrapping it, assign"
    }]
  }]
}

```
