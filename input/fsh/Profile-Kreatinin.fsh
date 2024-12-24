Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $Laborgruppe = http://exmple.org/fhir/sid/Laborgruppe
Alias: $sct = http://snomed.info/sct
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $referencerange-meaning = http://terminology.hl7.org/CodeSystem/referencerange-meaning
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $loinc = http://loinc.org
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $QuelleKlinischesBezugsdatum = https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum
Alias: $iso21090-PQ-translation = http://hl7.org/fhir/StructureDefinition/iso21090-PQ-translation
Alias: $mii-vs-labor-identifier-type-codes = https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/mii-vs-labor-identifier-type-codes
Alias: $results-laboratory-observations-uv-ips = http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips

Profile: UTNKreatinin
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-kreatinin
Title: "MII PR Labor Laboruntersuchung-Kreatinin"
Description: "Dieses Profil beschreibt eine Laborergebnis in der Medizininformatik-Initiative."

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



Instance: Example-UTNKreatinin
InstanceOf: UTNKreatinin
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://exmaple.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "59826-8_1234567890"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category.coding[0] = $loinc#26436-6 "Laboratory studies (set)"
* category.coding[+] = $observation-category#laboratory "Laboratory"
* category.coding[+] = $Laborgruppe#Niere/Elektrolyte
* code = $loinc#59826-8 "Creatinine [Moles/volume] in Blood"
* code.text = "Kreatinin"
* subject = Reference(Patient/111)
* encounter = Reference(Encounter/555)
* effectiveDateTime = "2018-11-20T12:05:00+01:00"
* effectiveDateTime.extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension.valueCoding.version = "http://snomed.info/sct/900000000000207008/version/20230731"
* effectiveDateTime.extension.valueCoding = $sct#399445004 "Specimen collection date (observable entity)"
* issued = "2018-03-11T10:28:00+01:00"
* performer = Reference(Organization/7772) "Zentrallabor des IKCL"
* valueQuantity.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-PQ-translation"
* valueQuantity.extension.valueQuantity = 0.81 'mg/dL' "mg/dL"
* valueQuantity.value.extension.url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension.valueInteger = 1
* valueQuantity = 72 'umol/L' "µmol/l"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low.value = 72
* referenceRange.high.value = 127
* referenceRange.type = $referencerange-meaning#normal "Normal Range"