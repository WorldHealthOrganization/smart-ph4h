Logical: MedicationOverviewMin
Title: "Medication Overview (Minimal)"
Description: "Minimal medication overview payload for use within a QR code payload. Based on the IHE Pharmacy Medication Overview logical model, with short element labels (one or two letters) and simple data"
* ^status = #draft
* ^version = "0.1.0"
* ^abstract = false

* n 1..1 string "Patient Name"
* dob 1..1 date "Patient Date of Birth"
* s 1..1 code "Sex"
* s from $GENDER (extensible)
* nt 0..1 code "Nationality"
* nt from $countryVS (extensible)
* id 0..1 string "National Identifier"
* dt 0..1 code "National Identifier Type" "Type of national identifier (e.g., social security number, national health ID, etc.)"
* dt from $nationalIdentifierTypeVS (extensible)
* m 0..* MedicationTreatmentLineMin "Medication Treatment Lines" "List of medication treatment lines associated with the patient, represented in a minimal format suitable for encoding in a compact QR code payload."
* obeys MedicationOverviewMin-TreatmentLines
