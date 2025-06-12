Instance: UTN-Teleconsultation-PRtoPR-ServiceRequest
InstanceOf: ServiceRequest
Title: "Teleconsultation Request"
Description: "Request for a teleconsultation from practitioner to practitioner"
Usage: #example

* status = #active
* intent = #order

* category.coding.system = "http://terminology.hl7.org/CodeSystem/servicerequest-category"
* category.coding.code = $sct#409063005
* category.coding.display = "Counselling"

* code.coding.system = "http://loinc.org"
* code.coding.code = $loinc#1558-6
* code.coding.display = "Glucose [Moles/volume] in Blood"

* subject = Reference(Example-UTN-Patient)
* encounter = Reference(Example-UTN-Encounter-PRtoPR)
* requester = Reference(Example-UTN-Practitioner-PR1)
* performer = Reference(Example-UTN-Practitioner-PR2)

* supportingInfo = Reference(Example-UTN-Teleconsultation-PRtoPR)
