Instance: Example-UTN-Patient
InstanceOf: ConsentManagementPatient
Usage: #example
Description: "Example UTN Patient"

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