Profile: SmartIPS
Parent: BundleUvIps
Title: "SMART Bundle (IPS)"
Description: "This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) for use within the SMART Guidelines.

Note: The profile expects atleast one SMART Consent entry to be present." 

* entry MS
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the IPS Composition profile."
* entry.fullUrl 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    consent 1..*
* entry[consent].resource only Consent
* obeys containsSmartConsent
* obeys containsSmartConsent-cmp
/*
* entry[consent] ^slicing.discriminator[0].type = #profile
* entry[consent] ^slicing.discriminator[0].path = "resource"
* entry[consent] ^slicing.rules = #open
* entry[consent] contains SmartConsent 1..1
* entry[consent][SmartConsent].resource only SmartConsent */




