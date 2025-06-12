Instance: Example-UTN-Encounter-PTtoPR
InstanceOf: UTN-Encounter
Usage: #example
Title: "Encounter 1"
Description: "Encounter which is between patient to practitioner"

* type = $KontaktArtDe#konsil
* serviceType.coding[Fachabteilungsschluessel].code = $serviceType#0300 "Kardiologie"
* status = #finished
* class = $v3-ActCode#VR "virtual"
* period.start = "2024-06-14T16:00:00+10:00"
* period.end = "2024-06-14T17:00:00+10:00"
* subject = Reference(Example-UTN-Patient)
* participant[0].individual = Reference(Example-UTN-Practitioner-PR1)


// Practitioner to Practitioner is not profiled as encounter
Instance: Example-UTN-Encounter-PRtoPR
InstanceOf: UTN-Encounter
Usage: #example
Title: "Encounter 2"
Description: "Encounter which is between practitioner to practitioner"

* type = $KontaktArtDe#intensivstationaer
* serviceType.coding[Fachabteilungsschluessel].code = $serviceType#3600 "Intensivmedizin"
* status = #in-progress
* class = $v3-ActCode#IMP "inpatient encounter"
* period.start = "2025-01-14T08:00:00+10:00"

* subject = Reference(Example-UTN-Patient-2)
* diagnosis[0].condition = Reference(Example-UTN-Sepsis)
* diagnosis[0].use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"

* participant[0].individual = Reference(Example-UTN-Practitioner-PR1)


