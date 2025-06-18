Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason
Alias: $standardterms = http://standardterms.edqm.eu
Alias: $atc = http://fhir.de/CodeSystem/bfarm/atc

Instance: Example-UTN-MedikationStatement
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
Title: "Ramipril"
Description: "The medication of the patient during the encounter of ICU"

* status = #active
* effectiveDateTime = "2025-01-14T16:48:00+10:00"

* medicationCodeableConcept.coding = $atc#C09AA05
* medicationCodeableConcept.text = "Ramipril"
* subject = Reference(Example-UTN-Patient-2)


