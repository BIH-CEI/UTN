Profile: UTNKreatinin
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-kreatinin
Title: "UTN Laboruntersuchung-Kreatinin"
Description: "Profile for documenting Creatinin within UTN."

* id MS
* meta MS
* meta.source MS
* meta.profile MS

* identifier MS
* identifier[analyseBefundCode].type 1.. MS
* identifier[analyseBefundCode].type.coding MS
* identifier[analyseBefundCode].type.coding[observationInstanceV2].system 1.. MS
* identifier[analyseBefundCode].type.coding[observationInstanceV2].code 1.. MS
* identifier[analyseBefundCode].system 1.. MS
* identifier[analyseBefundCode].value 1.. MS
* identifier[analyseBefundCode].assigner 1.. MS
* status MS
* category 1.. MS
* category.coding MS
* code MS
* code from $results-laboratory-observations-uv-ips (preferred)
* subject 1.. MS
* encounter MS
* effective[x] 1.. MS
* issued MS
* value[x] MS
* valueQuantity 0..1 MS
* valueQuantity.extension contains $iso21090-PQ-translation named pqTranslation 0..* D
* valueQuantity.value 1.. MS
* valueQuantity.value.extension contains Precision named quantityPrecision 0..1 MS D
* valueQuantity.unit 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1.. MS
* valueCodeableConcept 0..1 MS
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept.coding 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.code 1.. MS
* dataAbsentReason MS
* interpretation MS
* note MS
* bodySite ..0
* method MS
* specimen MS
* specimen.reference MS
* specimen.identifier MS
* device MS
* referenceRange MS
