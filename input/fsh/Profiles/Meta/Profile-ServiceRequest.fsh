Profile: UTNServiceRequest
Parent: ServiceRequest
Id: utn-service-request
Title: "UTN Teleconsultation Service Request"
Description: "This profile shows how to create service request for teleconsultation"

* status 1..1
* intent 1..1 
* subject 1..1 
* subject only Reference(Patient)
* encounter 1..1 
* encounter only Reference(Encounter)
* requester 1..1 
* requester only Reference(Practitioner)
* performer 1..1
* performer only Reference(Practitioner)
* reasonReference 1..1
* reasonReference only Reference(DiagnosticReport)