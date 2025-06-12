Alias: $clinical-findings = http://hl7.org/fhir/ValueSet/clinical-findings
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $c80-practice-codes = http://hl7.org/fhir/ValueSet/c80-practice-codes
Alias: $service-delivery-location = http://terminology.hl7.org/CodeSystem/service-delivery-location

Profile: UTNTeleconsultDocumentReference
Parent: DocumentReference
Id: utn-documentreference

* masterIdentifier 1..1
* identifier 0..*
* status 1..1
* docStatus 0..1
* type 1..1

* category 0..*
* subject 1..1
* subject only Reference(Patient)
* date 1..1
* author 0..*
* author only Reference(Practitioner)

* authenticator 0..1

* custodian 0..1
* custodian only Reference(Organization)

* relatesTo 0..*
* relatesTo.code 1..1
* relatesTo.target 1..1

* description 0..1
* securityLabel 0..*

* content 1..*
* content.attachment 1..1

* context 0..1
* context.encounter only Reference(Encounter)
* context.event 0..*

* context.period 0..1
* context.facilityType 0..1

* context.practiceSetting 0..1
* context.sourcePatientInfo only Reference(Patient)


