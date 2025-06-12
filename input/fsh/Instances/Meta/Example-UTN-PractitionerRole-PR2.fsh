Instance: Example-UTN-PractitionerRole-PR2
InstanceOf: UTNPractitionerRole
Usage: #example
Description: "Example UTN PractitionerRole PR 2"

* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_PractitionerRole"
* practitioner = Reference(Example-UTN-Practitioner-PR2)
* organization.identifier.system = "http://fhir.de/NamingSystem/asv/teamnummer"
* organization.identifier.value = "001234567"

* code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_Base_Role_Care"
* code.coding.code = #OA
* code.coding.display = "	Oberärztin/-arzt"

* specialty.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_BAR2_ARZTNRFACHGRUPPE"
* specialty.coding.code = #28
* specialty.coding.display = "Kardiologie"

* healthcareService = Reference(Example-UTN-Teleconsultation-Service-Wuerzburg)