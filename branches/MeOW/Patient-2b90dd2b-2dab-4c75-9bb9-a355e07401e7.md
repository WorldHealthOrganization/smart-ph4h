# Example Patient - SMART PH4H v0.9.9

* [**Table of Contents**](toc.md)
* [**Indices**](indices.md)
* [**Artifact Index**](artifacts.md)
* **Example Patient**

## Example Patient: Example Patient

Martha DeLarosa Female, DoB: 1972-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | * [+31788700800](tel:+31788700800)
* Laan Van Europa 1600 Dordrecht 3317 DB NL 
 |
| mother: | * Martha Mum 
* Promenade des Anglais 111 Lyon 69001 FR 
* [+33-555-20036](tel:+33-555-20036)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "2b90dd2b-2dab-4c75-9bb9-a355e07401e7",
  "identifier" : [{
    "system" : "urn:oid:2.16.840.1.113883.2.4.6.3",
    "value" : "574687583"
  }],
  "active" : true,
  "name" : [{
    "family" : "DeLarosa",
    "given" : ["Martha"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+31788700800",
    "use" : "home"
  }],
  "gender" : "female",
  "birthDate" : "1972-05-01",
  "address" : [{
    "line" : ["Laan Van Europa 1600"],
    "city" : "Dordrecht",
    "postalCode" : "3317 DB",
    "country" : "NL"
  }],
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "MTH"
      }]
    }],
    "name" : {
      "family" : "Mum",
      "given" : ["Martha"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+33-555-20036",
      "use" : "home"
    }],
    "address" : {
      "line" : ["Promenade des Anglais 111"],
      "city" : "Lyon",
      "postalCode" : "69001",
      "country" : "FR"
    }
  }]
}

```
