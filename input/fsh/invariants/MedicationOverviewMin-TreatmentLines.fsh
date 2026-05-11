Invariant: MedicationOverviewMin-TreatmentLines
Description: "If more than one medication treatment line is present, there can be a maximum of 3 medication treatment lines to ensure the overall payload remains compact enough for encoding in a QR code."
Severity: #error
Expression: "m.count() <= 3"
