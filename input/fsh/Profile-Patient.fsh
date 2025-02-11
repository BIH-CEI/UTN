Alias: $ContextIdentifierType = http://fhir.de/ConsentManagement/ValueSet/ContextIdentifierType

Profile: ConsentManagementPatient
Parent: Patient
Id: consent-management-patient
Title: "Consent Management: Patient"

* identifier 1.. MS N
* identifier.type 1.. MS N
* identifier.type from $ContextIdentifierType (extensible)
* identifier.type.coding 1.. MS N
* identifier.type.coding.system 1.. MS N
* identifier.type.coding.code 1.. MS N
* identifier.system 1.. MS N
* identifier.value 1.. MS N
* address 0..1
* birthDate 0..1
* gender 0..1


Instance: Example-UTN-Patient
InstanceOf: ConsentManagementPatient
Usage: #example
* id = "consent-management-patient"
* identifier.type.coding[0].system = "https://example.com"
* identifier.type.coding[0].code = #MR
* identifier.system = "https://example.com"
* identifier.value = "12345"
* name[0].family = "Doe"
* name[0].given = "John"
* address.type = #both
* address.line[0] = "Teststraße 2"
* address.city = "Köln"
* address.postalCode = "50823"
* address.country = "DE"
* birthDate = "1998-09-19"
* gender = #other

