// Source example for the chained MedicationOverviewMin -> MedicationOverview
// Bundle StructureMap. The transformed Bundle output lives as a separate JSON
// example at input/examples/Bundle-MedicationOverviewTransformed.json.

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
* m[0].a  = #active

* m[1].m  = #G02CX04
* m[1].es = "2016-01-01"
* m[1].d  = "as directed"
