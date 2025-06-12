Instance: Example-UTN-Practitioner-PR2
InstanceOf: UTNPractitioner
Usage: #example
Description: "Example UTN Practitioner 2"


* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Practitioner"
* identifier[0].type = $v2-0203#LANR "Lifelong physician number"
* identifier[=].system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR"
* identifier[=].value = "123456788"
* identifier[+].type = $v2-0203#DN "Doctor number"
* identifier[=].system = "http://fhir.de/sid/bundesaerztekammer/efn"
* identifier[=].value = "123456789123457"
* identifier[+].type = $v2-0203#PRN "Provider number"
* identifier[=].system = "https://gematik.de/fhir/sid/telematik-id"
* identifier[=].value = "123456788"
* name[0].use = #official
* name[=].text = "Gunther Neumann"
* name[=].family = "Neumann"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Neumann"
* name[=].given = "Gunther"
* name[=].prefix = "Dr. med."
* name[=].prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[=].prefix.extension.valueCode = #AC
* name[+].use = #maiden
* name[=].text = "Gunther Neumann"
* name[=].family = "Neumann"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Neumann"
* telecom.system = #phone
* telecom.value = "06151/555555"
* address[0].type = #both
* address[=].line = "Strassestr. 2"
* address[=].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "2"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Strassestr."
* address[=].city = "Aachen"
* address[=].postalCode = "52068"
* address[=].country = "D"
* address[+].type = #postal
* address[=].line = "101xx"
* address[=].line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
* address[=].line.extension.valueString = "52068"
* address[=].city = "Aachen"
* address[=].postalCode = "52068"
* address[=].country = "D"
