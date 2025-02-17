Alias: $observation-de-vitalsign-koerpertemperatur = http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpertemperatur
Alias: $ISiKKoerpertemperaturSCTVS = https://gematik.de/fhir/isik/ValueSet/ISiKKoerpertemperaturSCTVS

Profile: UTNKoerperTemperatur
Parent: ISiKKoerpertemperatur
Id: isik-koerpertemperatur

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

Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: Example-ISiKKoerpertemperatur
InstanceOf: UTNKoerperTemperatur
Usage: #example
* meta.profile[0] = "https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpertemperatur"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bodytemp"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpertemperatur"
* category = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[+] = urn:iso:std:iso:11073:10101#150364 "MDC_TEMP_BODY"
* code.coding[+] = $sct#386725007 "Body temperature (observable entity)"
* code.text = "Körpertemperatur"
* valueQuantity = 36.8 'Cel' "°C"
* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"