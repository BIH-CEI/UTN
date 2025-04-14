Instance: Example-UTNPractitionerRole
InstanceOf: UTNPractitionerRole
Usage: #example
Description: "Example UTN PractitionerRole"

* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_PractitionerRole"
* practitioner.reference = "Practitioner/20597e0e-cb2a-45b3-95f0-dc3dbdb617c3"
* organization.identifier.system = "http://fhir.de/NamingSystem/asv/teamnummer"
* organization.identifier.value = "001234566"

* code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_Base_Role_Care"
* code.coding.code = #AD
* code.coding.display = "Ärztliche(r) DirektorIn"

* specialty.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_BAR2_ARZTNRFACHGRUPPE"
* specialty.coding.code = #01
* specialty.coding.display = "Allgemeinmedizin"