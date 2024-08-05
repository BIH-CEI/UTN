
Alias: $loinc = http://loinc.org
Alias: $snomed = http://snomed.info/sct
Alias: $ieee = urn:iso:std:iso:11073:10101
Alias: $Encounter = http://hl7.org/fhir/StructureDefinition/Encounter
Alias: $VS_MII_ICU_Unit_equivalent_UCUM_beats_per_minute = https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/ValueSet/ValueSet-Unit-equivalent-UCUM-beats_per-minute

Profile: UTNHerzfrequenz
Parent: SD_MII_ICU_Herzfrequenz
Id: sd-mii-icu-herzfrequenz
Title: "SD MII ICU Herzfrequenz"
Description: "Profile for documenting heart rate in ICU settings"

// Define the differential elements
* meta.profile 1..1
* status 1..1 MS
* category 1..1 MS
* code 1..1 MS
* code.coding 1.. MS
* code.coding[loinc].system = "http://loinc.org"
* code.coding[loinc].code = #8867-4
* code.coding[loinc].display = "Heart Rate"
* code.coding contains snomed 0..1 MS
* code.coding[snomed].system = "http://snomed.info/sct"
* code.coding[snomed].code = #364075005
* code.coding[snomed].display = "Heart rate (observable entity)"
* code.coding contains ieee 0..1 MS
* code.coding[ieee].system = "urn:iso:std:iso:11073:10101"
* code.coding[ieee].code = #147842
* code.coding[ieee].display = "Heart Rate"

* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* encounter only Reference($Encounter)
* effective[x] 1..1 MS
* value[x] 1..1 MS
* valueQuantity 1..1 
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code from $VS_MII_ICU_Unit_equivalent_UCUM_beats_per_minute (required)
* dataAbsentReason 0..1 MS
* interpretation 0..* MS
* bodySite 0..1 MS
* method 0..1 MS
* device 0..1 MS
* referenceRange 0.. MS
* component 0.. MS
* component.code 1..1 MS
* component.value[x] 0..1 MS
* component.dataAbsentReason 0..1 MS
* component.interpretation 0.. MS
* component.referenceRange 0.. MS

Instance: Example-UTN-ICU-Herzfrequenz
InstanceOf: UTNHerzfrequenz
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/herzfrequenz"
* status = #final
* category = $observation-category#vital-signs#vital-signs
* code.coding[+] = $loinc#8867-4 "Heart Rate"
* code.coding[+] = $snomed#364075005 "Heart rate (observable entity)"
* code.coding[+] = $ieee#147842 "Heart Rate"
* subject = Reference(Example-UTN-Patient)
* encounter = Reference(Example-UTN-ICU-Encounter)
* effectivePeriod.start = "2024-12-23T09:30:10+01:00"
* effectivePeriod.end = "2024-12-23T10:30:10+01:00"
* valueQuantity = 70 '/min' "beats per minute"

Instance: Example-UTN-ICU-Encounter
InstanceOf: Encounter
* status = #in-progress
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB