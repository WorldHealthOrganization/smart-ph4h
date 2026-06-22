// Example pair illustrating the chained StructureMap
// (MedicationOverviewMin -> MedicationOverview Bundle), R4 branch.
//
//   1. ExampleMedicationOverviewMin   — the compact QR-payload form (source)
//   2. ExampleMedicationOverviewBundle — a representative R4 FHIR Bundle the
//                                        chained map would produce (target)
//
// Notes for the R4 branch:
//   * The Bundle uses plain Bundle / Composition / MedicationStatement / Patient
//     rather than the IHE MEOW profiles (MedicationOverview / MedicationTreatmentLine /
//     MedicationOverviewComposition). The IHE profiles require an adherence
//     extension and other constraints that the Min source can't satisfy.
//   * R4 paths: medicationCodeableConcept (NOT R5 medication.concept), reasonCode
//     (NOT R5 reason.concept), status #active (NOT R5 #recorded).

Alias: $loinc = http://loinc.org


// ---------------------------------------------------------------------------
// SOURCE: MedicationOverviewMin (compact, suitable for QR encoding)
// ---------------------------------------------------------------------------
Instance: ExampleMedicationOverviewMin
InstanceOf: MedicationOverviewMin
Title: "Example MedicationOverviewMin (compact QR payload)"
Description: "Minimal medication overview payload for Martha DeLarosa with two medication lines, suitable for QR code transmission."
Usage: #example
* n   = "Martha DeLarosa"
* dob = "1972-05-01"
* s   = #female
* id  = "574687583"

* m[0].m  = #L02BG03
* m[0].es = "2015-03-01"
* m[0].da = "2015-03-15"
* m[0].d  = "1 tablet once daily"
* m[0].r  = "treatment for breast cancer"

* m[1].m  = #G02CX04
* m[1].es = "2016-01-01"
* m[1].d  = "as directed"


// ---------------------------------------------------------------------------
// TARGET: Bundle (document) — representative output of the chained
// MedicationOverviewMin -> MedicationOverview StructureMap. Uses plain R4 types.
// ---------------------------------------------------------------------------
Instance: ExampleMedicationOverviewBundle
InstanceOf: Bundle
Title: "Example MedicationOverview Bundle (transformed, R4)"
Description: "Representative R4 FHIR Bundle resulting from applying the MedicationOverviewMin -> MedicationOverview StructureMap to ExampleMedicationOverviewMin."
Usage: #example
* identifier.system = "urn:ietf:rfc:4122"
* identifier.value  = "6f5b0e8a-7c3d-4f5e-9a1b-2c3d4e5f6a7b"
* type              = #document
* timestamp         = "2026-05-21T12:00:00+00:00"

* entry[0].fullUrl  = "urn:uuid:11111111-1111-1111-1111-111111111111"
* entry[0].resource = ExampleMOBComposition

* entry[+].fullUrl  = "urn:uuid:22222222-2222-2222-2222-222222222222"
* entry[=].resource = ExampleMOBPatient

* entry[+].fullUrl  = "urn:uuid:33333333-3333-3333-3333-333333333333"
* entry[=].resource = ExampleMOBLine1

* entry[+].fullUrl  = "urn:uuid:44444444-4444-4444-4444-444444444444"
* entry[=].resource = ExampleMOBLine2


// ----- Inline resources contained in the Bundle -----

Instance: ExampleMOBComposition
InstanceOf: Composition
Usage: #inline
* status   = #final
* type     = $loinc#56445-0 "Medication summary Document"
* subject  = Reference(urn:uuid:22222222-2222-2222-2222-222222222222)
* date     = "2026-05-21T12:00:00+00:00"
* title    = "Medication Overview"
* author   = Reference(urn:uuid:22222222-2222-2222-2222-222222222222) // R4 Composition.author 1..* required; not set by chained map
* section[0].title    = "Medication Treatment Lines"
* section[=].code     = $loinc#10160-0 "History of Medication use Narrative"
* section[=].entry[0] = Reference(urn:uuid:33333333-3333-3333-3333-333333333333)
* section[=].entry[+] = Reference(urn:uuid:44444444-4444-4444-4444-444444444444)

Instance: ExampleMOBPatient
InstanceOf: Patient
Usage: #inline
* identifier.value = "574687583"
* name.text        = "Martha DeLarosa"
* gender           = #female
* birthDate        = "1972-05-01"

Instance: ExampleMOBLine1
InstanceOf: MedicationStatement
Usage: #inline
* status                                  = #active // R4 MS.status 1..1 required; Min has no status field
* subject                                 = Reference(urn:uuid:22222222-2222-2222-2222-222222222222) // R4 MS.subject 1..1 required
* medicationCodeableConcept.coding.code    = #L02BG03
* medicationCodeableConcept.coding.display = "L02BG03"
* effectivePeriod.start                   = "2015-03-01"
* dateAsserted                            = "2015-03-15"
* note.text                               = "1 tablet once daily"
* reasonCode.text                         = "treatment for breast cancer"

Instance: ExampleMOBLine2
InstanceOf: MedicationStatement
Usage: #inline
* status                                  = #active
* subject                                 = Reference(urn:uuid:22222222-2222-2222-2222-222222222222)
* medicationCodeableConcept.coding.code    = #G02CX04
* medicationCodeableConcept.coding.display = "G02CX04"
* effectivePeriod.start                   = "2016-01-01"
* note.text                               = "as directed"
