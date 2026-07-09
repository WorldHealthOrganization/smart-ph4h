# Example MedicationOverview Bundle (transformed) - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Example MedicationOverview Bundle (transformed)**

## Example Bundle: Example MedicationOverview Bundle (transformed)



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ExampleMedicationOverviewBundle",
  "meta" : {
    "profile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationOverview"]
  },
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:6f5b0e8a-7c3d-4f5e-9a1b-2c3d4e5f6a7b"
  },
  "type" : "document",
  "timestamp" : "2026-05-21T12:00:00+00:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:11111111-1111-1111-1111-111111111111",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "ExampleMOBComposition",
      "meta" : {
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationOverviewComposition"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_ExampleMOBComposition\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition ExampleMOBComposition</b></p><a name=\"ExampleMOBComposition\"> </a><a name=\"hcExampleMOBComposition\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MedicationOverviewComposition.html\">Medication Overview Composition</a></p></div><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 56445-0}\">Medication summary Document</span></p><p><b>date</b>: 2026-05-21 12:00:00+0000</p><p><b>author</b>: <a href=\"Bundle-ExampleMedicationOverviewBundle.html#urn-uuid-22222222-2222-2222-2222-222222222222\">Martha DeLarosa Female, DoB: 1972-05-01 ( 574687583)</a></p><p><b>title</b>: Medication Overview</p></div>"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "56445-0",
          "display" : "Medication summary Document"
        }]
      },
      "subject" : [{
        "reference" : "urn:uuid:22222222-2222-2222-2222-222222222222"
      }],
      "date" : "2026-05-21T12:00:00+00:00",
      "author" : [{
        "reference" : "urn:uuid:22222222-2222-2222-2222-222222222222"
      }],
      "title" : "Medication Overview",
      "section" : [{
        "title" : "Medication Treatment Lines",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "10160-0",
            "display" : "History of Medication use Narrative"
          }]
        },
        "entry" : [{
          "reference" : "urn:uuid:33333333-3333-3333-3333-333333333333"
        },
        {
          "reference" : "urn:uuid:44444444-4444-4444-4444-444444444444"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:22222222-2222-2222-2222-222222222222",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "ExampleMOBPatient",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_ExampleMOBPatient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient ExampleMOBPatient</b></p><a name=\"ExampleMOBPatient\"> </a><a name=\"hcExampleMOBPatient\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Martha DeLarosa Female, DoB: 1972-05-01 ( 574687583)</p><hr/></div>"
      },
      "identifier" : [{
        "value" : "574687583"
      }],
      "name" : [{
        "text" : "Martha DeLarosa"
      }],
      "gender" : "female",
      "birthDate" : "1972-05-01"
    }
  },
  {
    "fullUrl" : "urn:uuid:33333333-3333-3333-3333-333333333333",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "ExampleMOBLine1",
      "meta" : {
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLine"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_ExampleMOBLine1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement ExampleMOBLine1</b></p><a name=\"ExampleMOBLine1\"> </a><a name=\"hcExampleMOBLine1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MedicationTreatmentLine.html\">Medication Treatment Line</a></p></div><p><b>status</b>: Recorded</p><h3>Medications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">L02BG03</span></td></tr></table><p><b>subject</b>: <a href=\"Bundle-ExampleMedicationOverviewBundle.html#urn-uuid-22222222-2222-2222-2222-222222222222\">Martha DeLarosa Female, DoB: 1972-05-01 ( 574687583)</a></p><p><b>effective</b>: 2015-03-01 --&gt; (ongoing)</p><p><b>dateAsserted</b>: 2015-03-15</p><h3>Reasons</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">treatment for breast cancer</span></td></tr></table><p><b>note</b>: </p><blockquote><div><p>1 tablet once daily</p>\n</div></blockquote></div>"
      },
      "status" : "recorded",
      "medication" : {
        "concept" : {
          "coding" : [{
            "code" : "L02BG03",
            "display" : "L02BG03"
          }]
        }
      },
      "subject" : {
        "reference" : "urn:uuid:22222222-2222-2222-2222-222222222222"
      },
      "effectivePeriod" : {
        "start" : "2015-03-01"
      },
      "dateAsserted" : "2015-03-15",
      "reason" : [{
        "concept" : {
          "text" : "treatment for breast cancer"
        }
      }],
      "note" : [{
        "text" : "1 tablet once daily"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:44444444-4444-4444-4444-444444444444",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "ExampleMOBLine2",
      "meta" : {
        "profile" : ["http://smart.who.int/ph4h/StructureDefinition/MedicationTreatmentLine"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_ExampleMOBLine2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement ExampleMOBLine2</b></p><a name=\"ExampleMOBLine2\"> </a><a name=\"hcExampleMOBLine2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-MedicationTreatmentLine.html\">Medication Treatment Line</a></p></div><p><b>status</b>: Recorded</p><h3>Medications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">G02CX04</span></td></tr></table><p><b>subject</b>: <a href=\"Bundle-ExampleMedicationOverviewBundle.html#urn-uuid-22222222-2222-2222-2222-222222222222\">Martha DeLarosa Female, DoB: 1972-05-01 ( 574687583)</a></p><p><b>effective</b>: 2016-01-01 --&gt; (ongoing)</p><p><b>note</b>: </p><blockquote><div><p>as directed</p>\n</div></blockquote></div>"
      },
      "status" : "recorded",
      "medication" : {
        "concept" : {
          "coding" : [{
            "code" : "G02CX04",
            "display" : "G02CX04"
          }]
        }
      },
      "subject" : {
        "reference" : "urn:uuid:22222222-2222-2222-2222-222222222222"
      },
      "effectivePeriod" : {
        "start" : "2016-01-01"
      },
      "note" : [{
        "text" : "as directed"
      }]
    }
  }]
}

```
