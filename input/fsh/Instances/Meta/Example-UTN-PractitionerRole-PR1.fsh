Instance: Example-UTN-PractitionerRole-PR1
InstanceOf: UTNPractitionerRole
Usage: #example
Description: "Example UTN PractitionerRole PR1"

* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_PractitionerRole"
* practitioner = Reference(Example-UTN-Practitioner-PR1)
* organization.identifier.system = "http://fhir.de/NamingSystem/asv/teamnummer"
* organization.identifier.value = "001234566"

* code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_Base_Role_Care"
* code.coding.code = #AD
* code.coding.display = "Ärztliche(r) DirektorIn"

* specialty.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_BAR2_ARZTNRFACHGRUPPE"
* specialty.coding.code = #01
* specialty.coding.display = "Allgemeinmedizin"

* healthcareService = Reference(Example-UTN-HealthcareService-Charite)