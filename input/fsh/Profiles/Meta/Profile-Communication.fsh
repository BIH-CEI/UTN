Profile: UTNTeleconsultCommunication
Parent: Communication
Id: teleconsult-communication
Title: "Teleconsultation Communication"
Description: "Profile for communications during teleconsultation sessions between healthcare providers."
* ^abstract = true

* status 1..1 MS
* category 0..* MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/communication-category"
* category.coding.code from http://hl7.org/fhir/ValueSet/communication-category (required)

* subject only Reference(Patient)
* subject 1..1 MS
* topic 0..1 
* sender only Reference(Practitioner or PractitionerRole or HealthcareService)
* sender 1..1 MS

* recipient only Reference(Practitioner or PractitionerRole or Organization or HealthcareService)
* recipient 1..* MS

* sent 1..1 MS
* medium 0..* MS
* medium.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode"
* payload 0..* MS

* reasonCode 0..* MS
* reasonCode from http://snomed.info/sct (extensible)

* encounter 0..1 MS
