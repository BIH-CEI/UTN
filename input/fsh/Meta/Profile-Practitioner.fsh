Alias: $KBV_EX_Base_Additional_Comment = https://fhir.kbv.de/StructureDefinition/KBV_EX_Base_Additional_Comment
Alias: $identifier-lanr = http://fhir.de/StructureDefinition/identifier-lanr
Alias: $identifier-efn = http://fhir.de/StructureDefinition/identifier-efn
Alias: $identifier-zanr = http://fhir.de/StructureDefinition/identifier-zanr
Alias: $identifier-telematik-id = http://fhir.de/StructureDefinition/identifier-telematik-id
Alias: $KBV_PR_Base_Datatype_Name = https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Datatype_Name
Alias: $KBV_PR_Base_Datatype_Maiden_Name = https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Datatype_Maiden_Name
Alias: $KBV_PR_Base_Datatype_Contactpoint = https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Datatype_Contactpoint
Alias: $KBV_PR_Base_Datatype_Street_Address = https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Datatype_Street_Address
Alias: $KBV_PR_Base_Datatype_Post_Office_Box = https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Datatype_Post_Office_Box
Alias: $gender-amtlich-de = http://fhir.de/StructureDefinition/gender-amtlich-de
Alias: $KBV_VS_Base_Practitioner_Speciality = https://fhir.kbv.de/ValueSet/KBV_VS_Base_Practitioner_Speciality

Profile: UTNPractitioner
Parent: KBV_PR_Base_Practitioner
Id: KBV-PR-Base-Practitioner
Description: "Dieses Profil bildet eine behandelnde Person ab."


* identifier[ANR].type 1..
* identifier[ANR].type.coding 1..1
* identifier[ANR].type.coding.system 1..1
* identifier[ANR].type.coding.code 1..1
* identifier[EFN].type 1..
* identifier[EFN].type.coding 1..1
* identifier[EFN].type.coding.system 1..1
* identifier[EFN].type.coding.code 1..1
* identifier[Telematik-ID].type 1..
* identifier[Telematik-ID].type.coding 1..1
* identifier[Telematik-ID].type.coding.system 1..1
* identifier[Telematik-ID].type.coding.code 1..1

* name 1..
* name[name] only $KBV_PR_Base_Datatype_Name
* name[geburtsname] only $KBV_PR_Base_Datatype_Maiden_Name

* telecom only $KBV_PR_Base_Datatype_Contactpoint
* address[Strassenanschrift] only $KBV_PR_Base_Datatype_Street_Address
* address[Postfach] only $KBV_PR_Base_Datatype_Post_Office_Box

* qualification.code from $KBV_VS_Base_Practitioner_Speciality (preferred)


Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $identifier-type-de-basis = http://fhir.de/CodeSystem/identifier-type-de-basis
Alias: $sct = http://snomed.info/sct
Alias: $FacharzttitelDerAerztekammern = http://ihe-d.de/CodeSystems/FacharzttitelDerAerztekammern
Alias: $QualifikationenNichtAerztlicherAutoren = http://ihe-d.de/CodeSystems/QualifikationenNichtAerztlicherAutoren
Alias: $QualifikatorenZahnaerztlicherAutoren = http://ihe-d.de/CodeSystems/QualifikatorenZahnaerztlicherAutoren

Instance: Example-UTNPractitioner
InstanceOf: UTNPractitioner
Usage: #example
* meta.profile = "https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Practitioner"
* identifier[0].type = $v2-0203#LANR "Lifelong physician number"
* identifier[=].system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR"
* identifier[=].value = "123456789"
* identifier[+].type = $v2-0203#DN "Doctor number"
* identifier[=].system = "http://fhir.de/sid/bundesaerztekammer/efn"
* identifier[=].value = "123456789123456"
* identifier[+].type = $v2-0203#PRN "Provider number"
* identifier[=].system = "https://gematik.de/fhir/sid/telematik-id"
* identifier[=].value = "123456789"
* name[0].use = #official
* name[=].text = "Hans Topp-Glücklich"
* name[=].family = "Topp-Glücklich"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Topp-Glücklich"
* name[=].given = "Hans"
* name[=].prefix = "Dr. med."
* name[=].prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[=].prefix.extension.valueCode = #AC
* name[+].use = #maiden
* name[=].text = "Hans Glücklich"
* name[=].family = "Glücklich"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Glücklich"
* telecom.system = #phone
* telecom.value = "06151/1111111"
* address[0].type = #both
* address[=].line = "Musterstr. 1"
* address[=].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "1"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Musterstr."
* address[=].city = "Darmstadt"
* address[=].postalCode = "64283"
* address[=].country = "D"
* address[+].type = #postal
* address[=].line = "124xx"
* address[=].line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
* address[=].line.extension.valueString = "124xx"
* address[=].city = "Berlin"
* address[=].postalCode = "15457"
* address[=].country = "D"
* gender = #other
* gender.extension.url = "http://fhir.de/StructureDefinition/gender-amtlich-de"
* gender.extension.valueCoding = $gender-amtlich-de#D
* qualification[0].code = $sct#309343006 "Physician (occupation)"
* qualification[+].code = $FacharzttitelDerAerztekammern#011001 "FA Allgemeinmedizin"