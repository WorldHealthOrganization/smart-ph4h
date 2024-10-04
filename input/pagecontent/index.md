This WHO PH4H Implementation Guide details how to use Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR) for consistent digital representation of PH4H services.

<div>
<p> This implementation guide and set of artifacts are still undergoing development. </p>
</div>
<!--{:.stu-note}-->

### About the PH4H 

The Pan-American Digital Health Route (PH4H) is an initiative that aims to enable connected health for
all people in Latin America and the Caribbean (LAC). Led by the Inter-American Development Bank [IDB](https://www.iadb.org/en),
the Pan-American Health Organization [PAHO](https://www.paho.org/en) and the countries of the region, this initiative aims to
facilitate the exchange of health data in a secure, efficient and interoperable manner, both within and
between countries, allowing people in the region to share and access their health information. PH4H
promotes regional synergies by maximizing national investments for the exchange of health information.
In addition, PH4H facilitates continuous coordination with regional organizations and networks in digital
health, thus strengthening integration and efficiency in the health sector.

The main goal of PH4H is to deliver better health services to patients regardless of their location.
The project seeks to improve the health care of those who temporarily move for work or other reasons. For
migrants populations, it will enable sharing medical histories, which may improve their opportunities for better employment and
education. In addition, the PH4H will strengthen public health surveillance,
optimize access to limited human resources, and foster research and innovation, resulting in more
efficient public health policies and improved regional economies. As a result, countries will be better
prepared for future pandemics and other health threats. Multiple cross-border use cases that can be
implemented within the PH4H will be included in this repository, countries can decide which specific use case they want. 

A Governance Working Group is currently being formed to steward the development and implementation of health services under the PH4H (see [PH4H Policy](https://worldhealthorganization.github.io/smart-ph4h/trust_domain_policy.html)). Unlike a physical route, a PH4H transcends borders, allowing universal access without leaving
anyone behind. The initiative, which will be officially launched at the end of 2024, is supported by the Government of Japan's
Fund for Quality Infrastructure, Disaster Resilience and Health. We look forward to more partners joining us on this transformative journey.

### About this Implementation Guide
This implementation guide includes a machine-readable representation of WHO guidelines for PH4H, as documented in the WHO Digital Adaptation Kit for PH4H (link forthcoming) and explicitly encodes computer-interoperable logic, including data models, terminologies, and logic expressions, in a computable language to support implementation of PH4H use cases by WHO Member States.

The guide is part of the [WHO SMART Guidelines approach](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) to support countries to integrate WHO global health and data recommendations into digital systems accurately and consistently. It defines a series of FHIR Resources, Profiles, Extensions, and Terminology based on the WHO PH4H Digital Adaptation Kit (link forthcoming). 

Supporting guidance, recommendations, resources, and standards are included in the <a href="references.html">References</a> and <a href="dependencies.html">Dependencies</a>.

### About this implementation guide

This implementation guide is broken into the following levels of [knowledge representation](https://hl7.org/fhir/uv/cpg/documentation-approach-06-01-levels-of-knowledge-representation.html):
- <a href="trust_domain.md">Home</a> - contains references to the guidance, guidelines, <a href="trust_domain_policy.md">policies</a> and recommendations underpinning this implementation guide.
- <a href="business-requirements.html">Business Requirements</a> - contains the requirements for this implementation guide including the definition of key concepts, use cases, and a data dictionary.      
- <a href="data-models-and-exchange.html">Data Models and Exchange</a> - contains the data models and data exchange protocols with actors and transactions defined.
- <a href="deployment.html">Deployment Guidance </a> - contains relevant technical specifications and guidance, testing resources, reference implementation materials, and supporting guidance for adaptation to local contexts.

This guide is prepared to facilitate digital implementation of WHO PH4H guidelines by providing FHIR-based computable representations of and implementation guidance for using the key components of the WHO PH4H digital adaptation kit (DAK):

* Health Interventions & Recommendations
* Generic Personas
* User Scenarios
* Business Processes & Workflows
* Core Data Elements
* Decision Support Logic
* Indicators & Monitoring
* Functional & Non-functional Requirements

This guide is a companion to the Digital Adaptation Kit (DAK) and should be used side-by-side with it. Implementers are strongly encouraged to make use of the Digital Adaptation Kit. The focus of this guide is on the explanation and use of the computable artifacts.

This guide assumes use of the following resources: 
* [IPS Patient](http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)
* [CPG ActivityDefinitions](https://hl7.org/fhir/uv/cpg/artifacts.html#activitydefinition-index)

- For a complete listing of the artifacts defined in this implementation guide, refer to the [Artifact Index](artifacts.html).
- A complete offline copy of this implementation guide can be found on the [Downloads](downloads.html) page.

- This Implementation Guide makes use of [Clinical Quality Language](https://cql.hl7.org/) for the decision support artifacts including the PlanDefinitions and Measures. They are used to express how a calculation should occur and can be used with a CQL engine in order to process the decision or indicator directly from the applicable FHIR resources. Links to this specification, the FHIR Clinical Practice Guidelines Speciciation, and other helpful resources can be found in the Support dropdown.

### Disclaimer
The specification herewith documented is a demo working specification and may not be used for any implementation purposes. This draft is provided without warranty of completeness or consistency and the official publication supersedes this draft. No liability can be inferred from the use or misuse of this specification or its consequences.


{{include ip-statements.xhtml}}
{{ include cross-version-analysis.xhtml }}
{{ include dependency-table.xhtml }}
{{ include globals-table.xhtml }}
