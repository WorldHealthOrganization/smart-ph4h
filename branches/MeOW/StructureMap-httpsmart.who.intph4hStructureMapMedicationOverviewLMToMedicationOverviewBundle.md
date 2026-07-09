# http://smart.who.int/ph4h/StructureMap/MedicationOverviewLMToMedicationOverviewBundle - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **http://smart.who.int/ph4h/StructureMap/MedicationOverviewLMToMedicationOverviewBundle**

## StructureMap: http://smart.who.int/ph4h/StructureMap/MedicationOverviewLMToMedicationOverviewBundle 

| | |
| :--- | :--- |
| *Official URL*:MedicationOverviewLMToMedicationOverviewBundle | *Version*:0.9.9 |
| Draft as of 2026-06-18 | *Computable Name*:http://smart.who.int/ph4h/StructureMap/MedicationOverviewLMToMedicationOverviewBundle |



## Resource Content

```json
{
  "resourceType" : "StructureMap",
  "id" : "httpsmart.who.intph4hStructureMapMedicationOverviewLMToMedicationOverviewBundle",
  "url" : "MedicationOverviewLMToMedicationOverviewBundle",
  "version" : "0.9.9",
  "name" : "http://smart.who.int/ph4h/StructureMap/MedicationOverviewLMToMedicationOverviewBundle",
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
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewLM",
    "mode" : "source",
    "alias" : "MedicationOverviewLM"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/PatientLM",
    "mode" : "source",
    "alias" : "PatientLM"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLineLM",
    "mode" : "source",
    "alias" : "MedicationTreatmentLineLM"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/PractitionerLM",
    "mode" : "source",
    "alias" : "PractitionerLM"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverview",
    "mode" : "target",
    "alias" : "MedicationOverviewBundle"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewComposition",
    "mode" : "target",
    "alias" : "MedicationOverviewComposition"
  },
  {
    "url" : "http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLine",
    "mode" : "target",
    "alias" : "MedicationTreatmentLine"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Patient",
    "mode" : "target",
    "alias" : "Patient"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
    "mode" : "target",
    "alias" : "Practitioner",
    "documentation" : "---------------------------------------------------------------------------"
  }],
  "group" : [{
    "name" : "MedicationOverviewLMToMedicationOverviewBundle",
    "documentation" : "Top-level group: assemble MedicationOverview Bundle (document)\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "MedicationOverviewLM",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "MedicationOverviewBundle",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "bundleType",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "document"
        }]
      }]
    },
    {
      "name" : "bundleTimestamp",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "timestamp",
        "transform" : "evaluate",
        "parameter" : [{
          "valueString" : "now()"
        }]
      }]
    },
    {
      "name" : "setEntries",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "variable" : "bid",
        "transform" : "uuid"
      },
      {
        "variable" : "cid",
        "transform" : "uuid"
      },
      {
        "variable" : "pid",
        "transform" : "uuid"
      }],
      "rule" : [{
        "name" : "bundleIdentifier",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "identifier",
          "variable" : "id"
        },
        {
          "context" : "id",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "urn:ietf:rfc:4122"
          }]
        },
        {
          "context" : "id",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "bid"
          }]
        }],
        "documentation" : "Bundle.identifier (UUID identifier per RFC 4122)"
      },
      {
        "name" : "compositionEntry",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "entry",
          "variable" : "ce"
        },
        {
          "context" : "ce",
          "element" : "fullUrl",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "cid"
          }]
        },
        {
          "context" : "ce",
          "element" : "resource",
          "variable" : "comp",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Composition"
          }]
        }],
        "rule" : [{
          "name" : "compositionContent",
          "source" : [{
            "context" : "src"
          }],
          "dependent" : [{
            "name" : "MedicationOverviewLMToComposition",
            "parameter" : [{
              "valueId" : "src"
            },
            {
              "valueId" : "comp"
            },
            {
              "valueId" : "pid"
            }]
          }]
        }],
        "documentation" : "Composition entry"
      },
      {
        "name" : "patientEntry",
        "source" : [{
          "context" : "src",
          "element" : "patient",
          "variable" : "pref"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "entry",
          "variable" : "pe"
        },
        {
          "context" : "pe",
          "element" : "fullUrl",
          "transform" : "append",
          "parameter" : [{
            "valueString" : "urn:uuid:"
          },
          {
            "valueId" : "pid"
          }]
        },
        {
          "context" : "pe",
          "element" : "resource",
          "variable" : "pat",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Patient"
          }]
        }],
        "rule" : [{
          "name" : "patientContent",
          "source" : [{
            "context" : "pref"
          }],
          "dependent" : [{
            "name" : "PatientLMToPatient",
            "parameter" : [{
              "valueId" : "pref"
            },
            {
              "valueId" : "pat"
            }]
          }]
        }],
        "documentation" : "Patient entry"
      },
      {
        "name" : "treatmentLines",
        "source" : [{
          "context" : "src",
          "element" : "medicationTreatmentLine",
          "variable" : "lref"
        }],
        "target" : [{
          "variable" : "tid",
          "transform" : "uuid"
        }],
        "rule" : [{
          "name" : "lineEntry",
          "source" : [{
            "context" : "lref"
          }],
          "target" : [{
            "context" : "tgt",
            "element" : "entry",
            "variable" : "te"
          },
          {
            "context" : "te",
            "element" : "fullUrl",
            "transform" : "append",
            "parameter" : [{
              "valueString" : "urn:uuid:"
            },
            {
              "valueId" : "tid"
            }]
          },
          {
            "context" : "te",
            "element" : "resource",
            "variable" : "ms",
            "transform" : "create",
            "parameter" : [{
              "valueString" : "MedicationStatement"
            }]
          }],
          "rule" : [{
            "name" : "lineContent",
            "source" : [{
              "context" : "lref"
            }],
            "dependent" : [{
              "name" : "MedicationTreatmentLineLMToMedicationStatement",
              "parameter" : [{
                "valueId" : "lref"
              },
              {
                "valueId" : "ms"
              },
              {
                "valueId" : "pid"
              }]
            }]
          }]
        }],
        "documentation" : "Treatment line entries — UUID generated per iteration (variable count)"
      }],
      "documentation" : "Generate fixed UUIDs once; reuse them across entries and Reference targets."
    }]
  },
  {
    "name" : "MedicationOverviewLMToComposition",
    "documentation" : "---------------------------------------------------------------------------\r\nMedicationOverviewLM -> MedicationOverviewComposition\r\nReceives the Patient entry's UUID (pid) so subject can reference it.\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "MedicationOverviewLM",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "MedicationOverviewComposition",
      "mode" : "target"
    },
    {
      "name" : "pid",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "compStatus",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "final"
        }]
      }]
    },
    {
      "name" : "compType",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "variable" : "cc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Coding"
        }]
      },
      {
        "context" : "cc",
        "element" : "system",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://loinc.org"
        }]
      },
      {
        "context" : "cc",
        "element" : "code",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "56445-0"
        }]
      },
      {
        "context" : "cc",
        "element" : "display",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Medication summary Document"
        }]
      },
      {
        "variable" : "ct",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "ct",
        "element" : "coding",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "cc"
        }]
      },
      {
        "context" : "tgt",
        "element" : "type",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "ct"
        }]
      }],
      "documentation" : "Composition.type — LOINC 56445-0 \"Medication summary Document\""
    },
    {
      "name" : "compSubject",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "variable" : "subj",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Reference"
        }]
      },
      {
        "context" : "subj",
        "element" : "reference",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "urn:uuid:"
        },
        {
          "valueId" : "pid"
        }]
      },
      {
        "context" : "tgt",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subj"
        }]
      }],
      "documentation" : "Composition.subject -> Patient entry by uuid"
    },
    {
      "name" : "compDate",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "date",
        "transform" : "evaluate",
        "parameter" : [{
          "valueString" : "now()"
        }]
      }]
    },
    {
      "name" : "compTitle",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "title",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "Medication Overview"
        }]
      }]
    },
    {
      "name" : "sectionTreatmentLines",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "section",
        "variable" : "sect"
      }],
      "rule" : [{
        "name" : "sectTitle",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "context" : "sect",
          "element" : "title",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Medication Treatment Lines"
          }]
        }]
      },
      {
        "name" : "sectCode",
        "source" : [{
          "context" : "src"
        }],
        "target" : [{
          "variable" : "scc",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Coding"
          }]
        },
        {
          "context" : "scc",
          "element" : "system",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://loinc.org"
          }]
        },
        {
          "context" : "scc",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "10160-0"
          }]
        },
        {
          "context" : "scc",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "History of Medication use Narrative"
          }]
        },
        {
          "variable" : "sc",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "CodeableConcept"
          }]
        },
        {
          "context" : "sc",
          "element" : "coding",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "scc"
          }]
        },
        {
          "context" : "sect",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "sc"
          }]
        }]
      },
      {
        "name" : "sectEntry",
        "source" : [{
          "context" : "src",
          "element" : "medicationTreatmentLine",
          "variable" : "lref"
        }],
        "target" : [{
          "variable" : "ref",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Reference"
          }]
        },
        {
          "context" : "ref",
          "element" : "display",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "Medication Treatment Line"
          }]
        },
        {
          "context" : "sect",
          "element" : "entry",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ref"
          }]
        }],
        "documentation" : "Display-only Reference per line — cross-linking to bundle entry would"
      }],
      "documentation" : "Section: MedRecordTreatmentLine"
    },
    {
      "name" : "attester",
      "source" : [{
        "context" : "src",
        "element" : "verification",
        "variable" : "v"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "attester",
        "variable" : "att"
      }],
      "rule" : [{
        "name" : "attMode",
        "source" : [{
          "context" : "v"
        }],
        "target" : [{
          "context" : "att",
          "element" : "mode",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "professional"
          }]
        }]
      },
      {
        "name" : "attTime",
        "source" : [{
          "context" : "v",
          "element" : "verificationTime",
          "variable" : "vt"
        }],
        "target" : [{
          "context" : "att",
          "element" : "time",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "vt"
          }]
        }]
      },
      {
        "name" : "attParty",
        "source" : [{
          "context" : "v",
          "element" : "practicioner",
          "variable" : "pr"
        }],
        "target" : [{
          "variable" : "party",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Reference"
          }]
        },
        {
          "context" : "party",
          "element" : "display",
          "transform" : "evaluate",
          "parameter" : [{
            "valueString" : "pr.name.text"
          }]
        },
        {
          "context" : "att",
          "element" : "party",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "party"
          }]
        }]
      }],
      "documentation" : "Attester from verification BackboneElement"
    },
    {
      "name" : "noteFromComment",
      "source" : [{
        "context" : "src",
        "element" : "comment",
        "variable" : "cm"
      }],
      "target" : [{
        "variable" : "nt",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Annotation"
        }]
      }],
      "rule" : [{
        "name" : "noteText",
        "source" : [{
          "context" : "cm",
          "element" : "commentText",
          "variable" : "ctxt"
        }],
        "target" : [{
          "context" : "nt",
          "element" : "text",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ctxt"
          }]
        }]
      },
      {
        "name" : "noteTime",
        "source" : [{
          "context" : "cm",
          "element" : "date",
          "variable" : "d"
        }],
        "target" : [{
          "context" : "nt",
          "element" : "time",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "d"
          }]
        }]
      },
      {
        "name" : "noteAuthor",
        "source" : [{
          "context" : "cm",
          "element" : "author",
          "variable" : "a"
        }],
        "target" : [{
          "variable" : "ar",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Reference"
          }]
        },
        {
          "context" : "ar",
          "element" : "display",
          "transform" : "evaluate",
          "parameter" : [{
            "valueString" : "a.name.text"
          }]
        },
        {
          "context" : "nt",
          "element" : "authorReference",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ar"
          }]
        }]
      },
      {
        "name" : "noteAssign",
        "source" : [{
          "context" : "cm"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "note",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "nt"
          }]
        }]
      }],
      "documentation" : "Composition.note from comment BackboneElement"
    }]
  },
  {
    "name" : "PatientLMToPatient",
    "documentation" : "---------------------------------------------------------------------------\r\nPatientLM -> FHIR Patient\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "PatientLM",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Patient",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "patIdentifier",
      "source" : [{
        "context" : "src",
        "element" : "identifier",
        "variable" : "id"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "identifier",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "id"
        }]
      }]
    },
    {
      "name" : "patName",
      "source" : [{
        "context" : "src",
        "element" : "name",
        "variable" : "n"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "name",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "n"
        }]
      }]
    },
    {
      "name" : "patGender",
      "source" : [{
        "context" : "src",
        "element" : "gender",
        "variable" : "g"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "gender",
        "transform" : "evaluate",
        "parameter" : [{
          "valueString" : "g.coding.code"
        }]
      }]
    },
    {
      "name" : "patBirthDate",
      "source" : [{
        "context" : "src",
        "element" : "dateOfBirth",
        "variable" : "d"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "birthDate",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "d"
        }]
      }],
      "documentation" : "dateOfBirth is dateTime in LM; birthDate is date — silent truncation expected."
    }]
  },
  {
    "name" : "MedicationTreatmentLineLMToMedicationStatement",
    "documentation" : "---------------------------------------------------------------------------\r\nMedicationTreatmentLineLM -> MedicationTreatmentLine (profile on MedicationStatement, R5)\r\nReceives the Patient entry's UUID (pid) so MS.subject can reference it.\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "MedicationTreatmentLineLM",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "MedicationTreatmentLine",
      "mode" : "target"
    },
    {
      "name" : "pid",
      "mode" : "source"
    }],
    "rule" : [{
      "name" : "identifier",
      "source" : [{
        "context" : "src",
        "element" : "identifier",
        "variable" : "id"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "identifier",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "id"
        }]
      }]
    },
    {
      "name" : "subject",
      "source" : [{
        "context" : "src"
      }],
      "target" : [{
        "variable" : "subj",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Reference"
        }]
      },
      {
        "context" : "subj",
        "element" : "reference",
        "transform" : "append",
        "parameter" : [{
          "valueString" : "urn:uuid:"
        },
        {
          "valueId" : "pid"
        }]
      },
      {
        "context" : "tgt",
        "element" : "subject",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "subj"
        }]
      }],
      "documentation" : "subject -> Patient entry by uuid (R5 MS.subject is 1..1)"
    },
    {
      "name" : "status",
      "source" : [{
        "context" : "src",
        "element" : "status",
        "variable" : "st"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "status",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "st"
        }]
      }]
    },
    {
      "name" : "medicationRef",
      "source" : [{
        "context" : "src",
        "element" : "medicationReference",
        "variable" : "mr"
      }],
      "target" : [{
        "variable" : "m",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableReference"
        }]
      },
      {
        "context" : "m",
        "element" : "reference",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "mr"
        }]
      },
      {
        "context" : "tgt",
        "element" : "medication",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "m"
        }]
      }],
      "documentation" : "medication[x] choice -> R5 CodeableReference"
    },
    {
      "name" : "medicationCC",
      "source" : [{
        "context" : "src",
        "element" : "medicationCodeableConcept",
        "variable" : "mc"
      }],
      "target" : [{
        "variable" : "m",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableReference"
        }]
      },
      {
        "context" : "m",
        "element" : "concept",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "mc"
        }]
      },
      {
        "context" : "tgt",
        "element" : "medication",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "m"
        }]
      }]
    },
    {
      "name" : "effectivePeriod",
      "source" : [{
        "context" : "src",
        "element" : "effectivePeriod",
        "variable" : "ep"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "effectivePeriod",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "ep"
        }]
      }]
    },
    {
      "name" : "recordingMetadata",
      "source" : [{
        "context" : "src",
        "element" : "recordingMetadata",
        "variable" : "rm"
      }],
      "rule" : [{
        "name" : "dateAsserted",
        "source" : [{
          "context" : "rm",
          "element" : "recordedTime",
          "variable" : "rt"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "dateAsserted",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "rt"
          }]
        }]
      },
      {
        "name" : "informationSource",
        "source" : [{
          "context" : "rm",
          "element" : "recorder",
          "variable" : "rc"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "informationSource",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "rc"
          }]
        }]
      }]
    },
    {
      "name" : "reasonIndication",
      "source" : [{
        "context" : "src",
        "element" : "indication",
        "variable" : "ind"
      }],
      "target" : [{
        "variable" : "r",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableReference"
        }]
      },
      {
        "context" : "r",
        "element" : "concept",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "ind"
        }]
      },
      {
        "context" : "tgt",
        "element" : "reason",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "r"
        }]
      }],
      "documentation" : "reason = indication + indicationText + intendedUse"
    },
    {
      "name" : "reasonIndicationText",
      "source" : [{
        "context" : "src",
        "element" : "indicationText",
        "variable" : "it"
      }],
      "target" : [{
        "variable" : "cc",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableConcept"
        }]
      },
      {
        "context" : "cc",
        "element" : "text",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "it"
        }]
      },
      {
        "variable" : "r",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableReference"
        }]
      },
      {
        "context" : "r",
        "element" : "concept",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "cc"
        }]
      },
      {
        "context" : "tgt",
        "element" : "reason",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "r"
        }]
      }]
    },
    {
      "name" : "reasonIntendedUse",
      "source" : [{
        "context" : "src",
        "element" : "intendedUse",
        "variable" : "iu"
      }],
      "target" : [{
        "variable" : "r",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "CodeableReference"
        }]
      },
      {
        "context" : "r",
        "element" : "concept",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "iu"
        }]
      },
      {
        "context" : "tgt",
        "element" : "reason",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "r"
        }]
      }]
    },
    {
      "name" : "dosage",
      "source" : [{
        "context" : "src",
        "element" : "usageInstructions",
        "variable" : "ui"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "dosage",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "ui"
        }]
      }]
    },
    {
      "name" : "prepInstructions",
      "source" : [{
        "context" : "src",
        "element" : "preparationInstructions",
        "variable" : "pi"
      }],
      "target" : [{
        "variable" : "dos",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Dosage"
        }]
      },
      {
        "context" : "dos",
        "element" : "text",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "pi"
        }]
      },
      {
        "context" : "tgt",
        "element" : "dosage",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "dos"
        }]
      }]
    },
    {
      "name" : "lineNote",
      "source" : [{
        "context" : "src",
        "element" : "comment",
        "variable" : "cm"
      }],
      "target" : [{
        "variable" : "nt",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Annotation"
        }]
      }],
      "rule" : [{
        "name" : "lineNoteText",
        "source" : [{
          "context" : "cm",
          "element" : "commentText",
          "variable" : "ct"
        }],
        "target" : [{
          "context" : "nt",
          "element" : "text",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ct"
          }]
        }]
      },
      {
        "name" : "lineNoteTime",
        "source" : [{
          "context" : "cm",
          "element" : "date",
          "variable" : "d"
        }],
        "target" : [{
          "context" : "nt",
          "element" : "time",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "d"
          }]
        }]
      },
      {
        "name" : "lineNoteAuthor",
        "source" : [{
          "context" : "cm",
          "element" : "author",
          "variable" : "a"
        }],
        "target" : [{
          "variable" : "ar",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Reference"
          }]
        },
        {
          "context" : "ar",
          "element" : "display",
          "transform" : "evaluate",
          "parameter" : [{
            "valueString" : "a.name.text"
          }]
        },
        {
          "context" : "nt",
          "element" : "authorReference",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ar"
          }]
        }]
      },
      {
        "name" : "lineNoteAssign",
        "source" : [{
          "context" : "cm"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "note",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "nt"
          }]
        }]
      }],
      "documentation" : "note = comment"
    },
    {
      "name" : "adherence",
      "source" : [{
        "context" : "src",
        "element" : "treatmentStatus",
        "variable" : "ts"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "adherence",
        "variable" : "adh"
      }],
      "rule" : [{
        "name" : "adherenceCode",
        "source" : [{
          "context" : "ts"
        }],
        "target" : [{
          "context" : "adh",
          "element" : "code",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ts"
          }]
        }]
      }],
      "documentation" : "adherence — BackboneElement; navigate."
    },
    {
      "name" : "category",
      "source" : [{
        "context" : "src",
        "element" : "category",
        "variable" : "cat"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "category",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "cat"
        }]
      }]
    },
    {
      "name" : "derivedFrom",
      "source" : [{
        "context" : "src",
        "element" : "derivedFrom",
        "variable" : "df"
      }],
      "rule" : [{
        "name" : "derivedFromRequest",
        "source" : [{
          "context" : "df",
          "element" : "request",
          "variable" : "rq"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "derivedFrom",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "rq"
          }]
        }]
      },
      {
        "name" : "derivedFromStatement",
        "source" : [{
          "context" : "df",
          "element" : "statement",
          "variable" : "stm"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "derivedFrom",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "stm"
          }]
        }]
      },
      {
        "name" : "derivedFromDispensation",
        "source" : [{
          "context" : "df",
          "element" : "dispensation",
          "variable" : "dsp"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "derivedFrom",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "dsp"
          }]
        }]
      },
      {
        "name" : "derivedFromAdministration",
        "source" : [{
          "context" : "df",
          "element" : "administration",
          "variable" : "adm"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "derivedFrom",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "adm"
          }]
        }]
      },
      {
        "name" : "derivedFromOther",
        "source" : [{
          "context" : "df",
          "element" : "other",
          "variable" : "oth"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "derivedFrom",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "oth"
          }]
        }]
      }]
    },
    {
      "name" : "extVersion",
      "source" : [{
        "context" : "src",
        "element" : "version",
        "variable" : "v"
      }],
      "target" : [{
        "variable" : "ext",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Extension"
        }]
      },
      {
        "context" : "ext",
        "element" : "url",
        "transform" : "copy",
        "parameter" : [{
          "valueString" : "http://hl7.org/fhir/StructureDefinition/artifact-version"
        }]
      },
      {
        "context" : "ext",
        "element" : "value",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "v"
        }]
      },
      {
        "context" : "tgt",
        "element" : "extension",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "ext"
        }]
      }],
      "documentation" : "Extension: artifact-version"
    },
    {
      "name" : "extVerification",
      "source" : [{
        "context" : "src",
        "element" : "verificationInformation",
        "variable" : "vi"
      }],
      "target" : [{
        "variable" : "ext",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Extension"
        }]
      }],
      "rule" : [{
        "name" : "viUrl",
        "source" : [{
          "context" : "vi"
        }],
        "target" : [{
          "context" : "ext",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ph4h/StructureDefinition/VerificationInformation"
          }]
        }]
      },
      {
        "name" : "viVerifier",
        "source" : [{
          "context" : "vi",
          "element" : "verifier",
          "variable" : "vr"
        }],
        "target" : [{
          "variable" : "e1",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Extension"
          }]
        },
        {
          "context" : "e1",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "verifier"
          }]
        },
        {
          "context" : "e1",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "vr"
          }]
        },
        {
          "context" : "ext",
          "element" : "extension",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "e1"
          }]
        }]
      },
      {
        "name" : "viTime",
        "source" : [{
          "context" : "vi",
          "element" : "verificationTime",
          "variable" : "vt"
        }],
        "target" : [{
          "variable" : "e2",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Extension"
          }]
        },
        {
          "context" : "e2",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "verificationTime"
          }]
        },
        {
          "context" : "e2",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "vt"
          }]
        },
        {
          "context" : "ext",
          "element" : "extension",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "e2"
          }]
        }]
      },
      {
        "name" : "viAssign",
        "source" : [{
          "context" : "vi"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "extension",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ext"
          }]
        }]
      }],
      "documentation" : "Extension: VerificationInformation"
    },
    {
      "name" : "extSubstitution",
      "source" : [{
        "context" : "src",
        "element" : "substitution",
        "variable" : "sub"
      }],
      "target" : [{
        "variable" : "ext",
        "transform" : "create",
        "parameter" : [{
          "valueString" : "Extension"
        }]
      }],
      "rule" : [{
        "name" : "subUrl",
        "source" : [{
          "context" : "sub"
        }],
        "target" : [{
          "context" : "ext",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "http://smart.who.int/ph4h/StructureDefinition/Substitution"
          }]
        }]
      },
      {
        "name" : "subType",
        "source" : [{
          "context" : "sub",
          "element" : "substitutionType",
          "variable" : "t"
        }],
        "target" : [{
          "variable" : "e1",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Extension"
          }]
        },
        {
          "context" : "e1",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "substitutionType"
          }]
        },
        {
          "context" : "e1",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "t"
          }]
        },
        {
          "context" : "ext",
          "element" : "extension",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "e1"
          }]
        }]
      },
      {
        "name" : "subReason",
        "source" : [{
          "context" : "sub",
          "element" : "substitutionTypeReason",
          "variable" : "r"
        }],
        "target" : [{
          "variable" : "e2",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Extension"
          }]
        },
        {
          "context" : "e2",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "substitutionTypeReason"
          }]
        },
        {
          "context" : "e2",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "r"
          }]
        },
        {
          "context" : "ext",
          "element" : "extension",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "e2"
          }]
        }]
      },
      {
        "name" : "subReasonText",
        "source" : [{
          "context" : "sub",
          "element" : "substitutionTypeReasonText",
          "variable" : "rt"
        }],
        "target" : [{
          "variable" : "e3",
          "transform" : "create",
          "parameter" : [{
            "valueString" : "Extension"
          }]
        },
        {
          "context" : "e3",
          "element" : "url",
          "transform" : "copy",
          "parameter" : [{
            "valueString" : "substitutionTypeReasonText"
          }]
        },
        {
          "context" : "e3",
          "element" : "value",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "rt"
          }]
        },
        {
          "context" : "ext",
          "element" : "extension",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "e3"
          }]
        }]
      },
      {
        "name" : "subAssign",
        "source" : [{
          "context" : "sub"
        }],
        "target" : [{
          "context" : "tgt",
          "element" : "extension",
          "transform" : "copy",
          "parameter" : [{
            "valueId" : "ext"
          }]
        }]
      }],
      "documentation" : "Extension: Substitution"
    }]
  },
  {
    "name" : "PractitionerLMToPractitioner",
    "documentation" : "---------------------------------------------------------------------------\r\nPractitionerLM -> FHIR Practitioner\r\n---------------------------------------------------------------------------",
    "input" : [{
      "name" : "src",
      "type" : "PractitionerLM",
      "mode" : "source"
    },
    {
      "name" : "tgt",
      "type" : "Practitioner",
      "mode" : "target"
    }],
    "rule" : [{
      "name" : "practIdentifier",
      "source" : [{
        "context" : "src",
        "element" : "identifier",
        "variable" : "id"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "identifier",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "id"
        }]
      }]
    },
    {
      "name" : "practName",
      "source" : [{
        "context" : "src",
        "element" : "name",
        "variable" : "n"
      }],
      "target" : [{
        "context" : "tgt",
        "element" : "name",
        "transform" : "copy",
        "parameter" : [{
          "valueId" : "n"
        }]
      }]
    }]
  }]
}

```
