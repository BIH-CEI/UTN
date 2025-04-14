Profile: UTNPractitioner
Parent: KBV_PR_Base_Practitioner
Id: KBV-PR-Base-Practitioner
Title: "UTN Practitioner"
Description: "The profile of the UTN Practitoner"


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