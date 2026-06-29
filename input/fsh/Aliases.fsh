Alias: $SCT = http://snomed.info/sct
Alias: $LNC = http://loinc.org
Alias: $ICD11 = http://id.who.int/icd/release/11/mms
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $CVX = http://hl7.org/fhir/sid/cvx 
// CodeSystem URL is http://hl7.org/fhir/administrative-gender; for bindings we
// need the ValueSet URL (otherwise "Found CodeSystem expecting one of [ValueSet]")
Alias: $GENDER = http://hl7.org/fhir/ValueSet/administrative-gender

Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type
Alias: $measure-scoring = http://terminology.hl7.org/CodeSystem/measure-scoring
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $action-type = http://terminology.hl7.org/CodeSystem/action-type
Alias: $countryVS = http://hl7.org/fhir/ValueSet/iso3166-1-3
// v2-0203 ValueSet is hosted under terminology.hl7.org in R4, not under fhir.org
Alias: $nationalIdentifierTypeVS = http://terminology.hl7.org/ValueSet/v2-0203
// medication-statement-adherence was added in R5; for R4 use medication-statement-status
// (closest semantic match) until an R4 adherence VS becomes available
Alias: $adherenceStatusVS = http://hl7.org/fhir/ValueSet/medication-statement-status
Alias: $who-atc = http://www.whocc.no/atc // WHO ATC
Alias: $edqm-standardterms = http://standardterms.edqm.eu // EDQM standard terms
Alias: $ucum = http://unitsofmeasure.org // UCUM http://hl7.org/fhir/ValueSet/ucum-units
Alias: $snomed = http://snomed.info/sct // SNOMED CT
Alias: $medicationStatusCode = http://hl7.org/fhir/ValueSet/medication-statement-status
Alias: $bcp47 = urn:ietf:bcp:47 // BCP47
