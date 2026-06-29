This Bundle is the **example result** of applying the chained
`MedicationOverviewMin → MedicationOverview` StructureMap to the
[ExampleMedicationOverviewMin](Binary-574687583.html) compact QR-payload source.

The chained map runs in two stages:

1. **Min → IHE MEOW MedicationOverviewLM** — expands the compact source into the
   IHE Pharm MEOW logical model (`MedicationOverviewMinToMedicationOverviewLM`).
2. **MedicationOverviewLM → MedicationOverview Bundle** — materialises the LM
   as a FHIR R4 document Bundle with a `Composition`, the `Patient`, and one
   `MedicationStatement` per treatment line
   (`MedicationOverviewLMToMedicationOverviewBundle`).

The Bundle below is a captured transform output (not hand-written), demonstrating
the end-to-end shape consumers should expect.
