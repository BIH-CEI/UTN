Instance: Example-UTN-Patient
InstanceOf: UTNPatient
Usage: #example
Description: "Example UTN Patient 1"

* id = "utn-patient-1"
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
* birthDate = "1970-09-19"
* gender = #other

Instance: Example-UTN-Patient-2
InstanceOf: UTNPatient
Usage: #example
Description: "Example UTN Patient 2"

* id = "utn-patient-2"
* identifier.type.coding[0].system = "https://example.com"
* identifier.type.coding[0].code = #MR
* identifier.system = "https://example.com"
* identifier.value = "67890"
* name[0].family = "Müller"
* name[0].given = "Anna"
* address.type = #both
* address.line[0] = "Beispielweg 5"
* address.city = "Berlin"
* address.postalCode = "10115"
* address.country = "DE"
* birthDate = "1985-03-12"
* gender = #female
