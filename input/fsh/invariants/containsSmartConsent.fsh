Invariant: containsSmartConsent
Description: "At least one entry in the Bundle must be SmartConsent"
Severity: #error
Expression: "Bundle.entry.resource.ofType(Consent).where(conformsTo('http://smart.who.int/ph4h/StructureDefinition/SmartConsent')).exists()"