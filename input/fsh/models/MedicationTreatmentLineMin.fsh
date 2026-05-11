Logical: MedicationTreatmentLineMin
Title: "Medication Treatment Line (Minimal)"
Description: "Minimal medication treatment line payload for use within a QR code payload. Based on the IHE Pharmacy Medication Treatment Line logical model, with short element labels (one or two letters) and simple data types suitable for encoding in a compact QR code payload."
* ^status = #draft
* ^version = "0.1.0"
* ^abstract = false

* m 1..1 code "Medication (Active Ingredient)" "Active ingredient of the medication."
* es 0..1 date "Effective Start Date" "Start date during which the medication treatment line is effective."
* ee 0..1 date "Effective End Date" "End date during which the medication treatment line is effective."
* da 0..1 date "Date Asserted" "Date the medication treatment line was asserted/recorded."
* d 0..1 string "Dosage" "Dosage instructions as free text."
* r 0..1 string "Reason" "Reason why the product has been prescribed."
* a 0..1 code "Adherence Status" "Status of patient adherence to the medication treatment line"
* a from $adherenceStatusVS (extensible)