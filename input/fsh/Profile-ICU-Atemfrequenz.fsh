Alias: $loinc = http://loinc.org
Alias: $snomed = http://snomed.info/sct
Alias: $ValueSet-Unit-equivalent-UCUM-breaths_per-minute = https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/ValueSet/ValueSet-Unit-equivalent-UCUM-breaths_per-minute
Alias: $observation-category = http://hl7.org/fhir/observation-category

// Define the StructureDefinition
Profile: UTNAtemfrequenz
Parent: SD_MII_ICU_Atemfrequenz
Id: sd-mii-icu-atemfrequenz
Title: "SD MII ICU Atemfrequenz"
Description: "Profile for documenting respiratory rate in ICU settings"


// Define the differential elements
* id 1..1 MS
* meta 1..1 MS
* identifier 0.. MS
* status 1..1 MS
* category 1.. MS
* code 1..1 MS
* code.coding 1..1 MS
* code.coding[loinc].system = "http://loinc.org"
* code.coding[loinc].code = #9279-1
* code.coding contains snomed 0..1 MS
* code.coding[snomed].system = "http://snomed.info/sct"
* code.coding[snomed].code = #86290005
* subject 1..1 MS
* encounter only Reference($Encounter)
* effective[x] only dateTime or Period
* effective[x] MS
* value[x] 1..1 MS 
* valueQuantity 1..1 
* valueQuantity.value MS
* valueQuantity.unit MS
* valueQuantity.system MS
* valueQuantity.code MS
* valueQuantity.code from $ValueSet-Unit-equivalent-UCUM-breaths_per-minute (required)
* dataAbsentReason 0..1 MS


Instance: Example-UTN-ICU-Atemfrequenz
InstanceOf: Observation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/atemfrequenz"
* status = #final
* category = $observation-category#vital-signs#vital-signs
* code.coding[0] = $snomed#86290005 "Respiratory rate (observable entity)"
* code.coding[+] = $loinc#9279-1 "Respiratory Rate"
* subject = Reference(Example-UTN-Patient)
* encounter = Reference(Example-UTN-ICU-Encounter)
* effectivePeriod.start = "2024-08-05T09:30:10+01:00"
* effectivePeriod.end = "2024-08-05T10:30:10+01:00"
* valueQuantity = 15 '/min' "breaths per minute"
