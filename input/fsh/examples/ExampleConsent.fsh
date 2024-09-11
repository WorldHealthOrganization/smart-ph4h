Instance: ExampleConsent
InstanceOf: SmartConsent
Title: "Example SMART Consent"
Description: "Example SMART Consent"
Usage: #example
* id = "c7781f44-6df8-4a8b-9e06-0b34263a47c6"
* status = #active
* scope = $consentscope#patient-privacy
* provision.purpose.code = #COC
* provision.purpose.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.type = #permit
* patient.display = "patient1"
* dateTime = "2016-05-11"
* organization.display = "Org1"
* policyRule.text = "some policy"
* provision.period.start = "1964-01-01"
* provision.period.end = "2016-01-01"
* category.coding.code = #acd
* category.coding.system = "http://terminology.hl7.org/CodeSystem/consentcategorycodes"
* performer.display = "Org1"
* sourceReference = Reference(DocumentReference/ex-documentreference1)

Instance: ex-documentreference1
InstanceOf: DocumentReference
Title: "Example DocumentReference Consent Paperwork"
Description: "Example copied from FHIR-IPS used for Composition"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #current
* type = http://loinc.org#64292-6 "Release of information consent"
* subject = Reference(Martha)
* author = Reference(45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd6)
* description = "The captured signed document"
* content.attachment.title = "Hello World"
* content.attachment.contentType = #text/plain
* content.attachment.data = "TG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdCwgc2VkIGRvIGVpdXNtb2QgdGVtcG9yIGluY2lkaWR1bnQgdXQgbGFib3JlIGV0IGRvbG9yZSBtYWduYSBhbGlxdWEuIFV0IGVuaW0gYWQgbWluaW0gdmVuaWFtLCBxdWlzIG5vc3RydWQgZXhlcmNpdGF0aW9uIHVsbGFtY28gbGFib3JpcyBuaXNpIHV0IGFsaXF1aXAgZXggZWEgY29tbW9kbyBjb25zZXF1YXQuIER1aXMgYXV0ZSBpcnVyZSBkb2xvciBpbiByZXByZWhlbmRlcml0IGluIHZvbHVwdGF0ZSB2ZWxpdCBlc3NlIGNpbGx1bSBkb2xvcmUgZXUgZnVnaWF0IG51bGxhIHBhcmlhdHVyLiBFeGNlcHRldXIgc2ludCBvY2NhZWNhdCBjdXBpZGF0YXQgbm9uIHByb2lkZW50LCBzdW50IGluIGN1bHBhIHF1aSBvZmZpY2lhIGRlc2VydW50IG1vbGxpdCBhbmltIGlkIGVzdCBsYWJvcnVtLg=="
// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
