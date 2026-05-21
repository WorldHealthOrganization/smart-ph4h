// Example pair illustrating the chained StructureMap
// (MedicationOverviewMin -> MedicationOverview Bundle):
//
//   1. ExampleMedicationOverviewMin       — the compact QR-payload form (source)
//   2. ExampleMedicationOverviewBundle    — the FHIR Bundle document the chained
//                                           map produces (target)
//
// Fields tagged "// added manually" are required by R5 (or by the target profile)
// but are NOT produced by the chained map because the Min source lacks the
// corresponding data (e.g. status, subject, Composition.author). They are
// hard-coded here so the example validates.

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
// TARGET: MedicationOverview Bundle (document) — equivalent to applying the
// MedicationOverviewMinToMedicationOverviewBundle StructureMap to the source.
// ---------------------------------------------------------------------------
Instance: ExampleMedicationOverviewBundle
InstanceOf: MedicationOverviewBundle
Title: "Example MedicationOverview Bundle (transformed)"
Description: "FHIR Bundle resulting from applying the MedicationOverviewMin -> MedicationOverview StructureMap to ExampleMedicationOverviewMin."
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value  = "urn:uuid:6f5b0e8a-7c3d-4f5e-9a1b-2c3d4e5f6a7b"
* type              = #document
* timestamp         = "2026-05-21T12:00:00+00:00"

* entry[Composition].fullUrl  = "urn:uuid:11111111-1111-1111-1111-111111111111"
* entry[Composition].resource = ExampleMOBComposition

* entry[Patient].fullUrl      = "urn:uuid:22222222-2222-2222-2222-222222222222"
* entry[Patient].resource     = ExampleMOBPatient

* entry[MedRecordTreatmentLine][0].fullUrl  = "urn:uuid:33333333-3333-3333-3333-333333333333"
* entry[MedRecordTreatmentLine][0].resource = ExampleMOBLine1
* entry[MedRecordTreatmentLine][1].fullUrl  = "urn:uuid:44444444-4444-4444-4444-444444444444"
* entry[MedRecordTreatmentLine][1].resource = ExampleMOBLine2


// ----- Inline resources contained in the Bundle -----

Instance: ExampleMOBComposition
InstanceOf: MedicationOverviewComposition
Usage: #inline
* status        = #final
* type          = $loinc#56445-0 "Medication summary Document"
* subject       = Reference(urn:uuid:22222222-2222-2222-2222-222222222222)
* date          = "2026-05-21T12:00:00+00:00"
* title         = "Medication Overview"
* author        = Reference(urn:uuid:22222222-2222-2222-2222-222222222222) // added manually — R5 Composition.author 1..* required; not set by chained map
* section[MedRecordTreatmentLine].title    = "Medication Treatment Lines"
* section[MedRecordTreatmentLine].code     = $loinc#10160-0 "History of Medication use Narrative"
* section[MedRecordTreatmentLine].entry[0] = Reference(urn:uuid:33333333-3333-3333-3333-333333333333)
* section[MedRecordTreatmentLine].entry[1] = Reference(urn:uuid:44444444-4444-4444-4444-444444444444)

Instance: ExampleMOBPatient
InstanceOf: Patient
Usage: #inline
* identifier.value = "574687583"
* name.text        = "Martha DeLarosa"
* gender           = #female
* birthDate        = "1972-05-01"

Instance: ExampleMOBLine1
InstanceOf: MedicationTreatmentLine
Usage: #inline
* status                            = #recorded // added manually — R5 MedicationStatement.status 1..1 required; Min has no status field
* subject                           = Reference(urn:uuid:22222222-2222-2222-2222-222222222222) // added manually — R5 MS.subject 1..1 required; not produced by chained map for lines
* medication.concept.coding.code    = #L02BG03
* medication.concept.coding.display = "L02BG03"
* effectivePeriod.start             = "2015-03-01"
* dateAsserted                      = "2015-03-15"
* note.text                         = "1 tablet once daily"
* reason.concept.text               = "treatment for breast cancer"

Instance: ExampleMOBLine2
InstanceOf: MedicationTreatmentLine
Usage: #inline
* status                            = #recorded // added manually
* subject                           = Reference(urn:uuid:22222222-2222-2222-2222-222222222222) // added manually
* medication.concept.coding.code    = #G02CX04
* medication.concept.coding.display = "G02CX04"
* effectivePeriod.start             = "2016-01-01"
* note.text                         = "as directed"
