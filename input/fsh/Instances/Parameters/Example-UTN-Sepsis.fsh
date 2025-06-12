Instance: Example-UTN-Sepsis
InstanceOf: Condition
Title: "Sepsis Condition"
Description: "Represents an active sepsis condition observed during an ICU encounter."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* code = $sct#91302008 "Sepsis"
* code.text = "Sepsis"
* subject = Reference(Example-UTN-Patient)
* encounter = Reference(Example-UTN-Encounter-PRtoPR)
* onsetDateTime = "2025-01-14"