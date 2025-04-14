Profile: UTNPractitionerRole
Parent: KBV_PR_Base_PractitionerRole
Id: utn-PR-Base-PractitionerRole
Title: "UTN Practitioner Role"
Description: "The profile of the UTN Practitoner Role"

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