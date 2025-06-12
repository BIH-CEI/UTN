Instance: Example-UTN-AllergyIntolerance
InstanceOf: ISiKAllergieUnvertraeglichkeit
Title: "Allergies of the Patient"
Description: "Indicates that the patient has no known allergies."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#resolved "Resolved"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#refuted "Refuted"
* code.coding = $sct#716186003 "No known allergy (situation)"

* patient = Reference(Example-UTN-Patient-2)
* encounter = Reference(Example-UTN-Encounter-PRtoPR)
* note.text = "Patient has no known allergies"