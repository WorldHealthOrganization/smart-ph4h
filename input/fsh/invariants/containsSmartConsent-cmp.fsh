Invariant: containsSmartConsent-cmp
Description: "At least one consent in the Advanced Directives section must be SmartConsent"
Severity: #error
Expression: "Bundle.entry.resource.ofType(Composition).section.where(title='Advance Directives').entry.resolve().where(conformsTo('http://smart.who.int/ph4h/StructureDefinition/SmartConsent')).exists()"