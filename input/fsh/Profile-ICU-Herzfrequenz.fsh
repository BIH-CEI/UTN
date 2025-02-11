Alias: $observation-de-vitalsign-herzfrequenz = http://fhir.de/StructureDefinition/observation-de-vitalsign-herzfrequenz
Alias: $ISiKHerzfrequenzSCTVS = https://gematik.de/fhir/isik/ValueSet/ISiKHerzfrequenzSCTVS
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Profile: UTNHerzfrequenz
Parent: ISiKHerzfrequenz
Id: isik-herzfrequenz

* status MS
* category MS
* code MS
* subject MS
* encounter MS
* effective[x] MS
* performer MS
* value[x] MS
* value[x].value MS
* value[x].unit MS
* value[x].system MS
* value[x].code MS
* dataAbsentReason MS

* method MS
* device MS



Instance: ISiKHerzfrequenzExample
InstanceOf: UTNHerzfrequenz
Usage: #example

* meta.profile[0] = "https://gematik.de/fhir/isik/StructureDefinition/ISiKHerzfrequenz"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/heartrate"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-herzfrequenz"
* category = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8867-4 "Heart rate"
* code.coding[+] = urn:iso:std:iso:11073:10101#147842 "MDC_ECG_HEART_RATE"
* code.coding[+] = $sct#364075005 "Heart rate (observable entity)"
* code.text = "Herzfrequenz"

* valueQuantity = 63 '/min' "per minute"
* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"
* performer = Reference(Practitioner/1)