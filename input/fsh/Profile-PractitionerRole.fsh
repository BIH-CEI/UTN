Alias: $KBV_VS_Base_Role_Care = https://fhir.kbv.de/ValueSet/KBV_VS_Base_Role_Care
Alias: $KBV_VS_SFHIR_BAR2_ARZTNRFACHGRUPPE = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_BAR2_ARZTNRFACHGRUPPE

Profile: UTNPractitionerRole
Parent: KBV_PR_Base_PractitionerRole
Id: utn-PR-Base-PractitionerRole
Description: "Dieses Profil bildet eine temporäre Rolle einer behandelnden Person in Bezug zu einer Einrichtung ab."

* practitioner 1..1
* practitioner only Reference(Practitioner)
* organization 1..1
* organization only Reference(Organization)


* code.coding[RolleDerEinrichtung] from $KBV_VS_Base_Role_Care (required)
* code.coding[RolleDerEinrichtung].system 1..1
* code.coding[RolleDerEinrichtung].code 1..1
* code.coding[RolleDerEinrichtung].display 1..1


* specialty.coding[KBV-Fachgruppe] from $KBV_VS_SFHIR_BAR2_ARZTNRFACHGRUPPE (required)
* specialty.coding[KBV-Fachgruppe].system 1..1
* specialty.coding[KBV-Fachgruppe].code 1..1
* specialty.coding[KBV-Fachgruppe].display 1..1


Instance: Example-UTNPractitionerRole
InstanceOf: UTNPractitionerRole
Usage: #example

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