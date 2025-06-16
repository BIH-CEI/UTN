Instance: Example-UTNKreatinin
InstanceOf: UTNKreatinin
Usage: #example
Description: "An example Observation for Creatinin."
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
* subject = Reference(Example-UTN-Patient-2)
* encounter = Reference(Example-UTN-Encounter-PRtoPR)
* effectiveDateTime = "2018-11-20T12:05:00+01:00"
* effectiveDateTime.extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension.valueCoding.version = "http://snomed.info/sct/900000000000207008/version/20230731"
* effectiveDateTime.extension.valueCoding = $sct#399445004 "Specimen collection date (observable entity)"
* issued = "2018-03-11T10:28:00+01:00"
* performer = Reference(Example-UTN-Practitioner-PR1) "Zentrallabor des IKCL"
* valueQuantity.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-PQ-translation"
* valueQuantity.extension.valueQuantity = 0.81 'mg/dL' "mg/dL"
* valueQuantity.value.extension.url = "http://hl7.org/fhir/StructureDefinition/quantity-precision"
* valueQuantity.value.extension.valueInteger = 1
* valueQuantity = 72 'umol/L' "µmol/l"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low.value = 72
* referenceRange.high.value = 127
* referenceRange.type = $referencerange-meaning#normal "Normal Range"