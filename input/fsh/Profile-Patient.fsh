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


