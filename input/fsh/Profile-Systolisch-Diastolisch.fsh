Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $sd-mii-icu-monitoring-und-vitaldaten = https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-monitoring-und-vitaldaten

Profile: UTN-SauerstoffsaettigungArteriell
Parent: ISiKSauerstoffsaettigungArteriell
Id: mii-icu-o2saettigung-im-arteriellen-blut-durch-pulsoxymetrie
Title: "SD MII ICU Sauerstoffsaettigung Im Arteriellen Blut Durch Pulsoxymetrie"

* code.coding 1.. MS
* value[x].unit 1.. MS
* bodySite.coding MS
* bodySite.coding.system 1.. MS
* bodySite.coding.code 1.. MS

Instance: ISiKSauerstoffsaettigungArteriellExample
InstanceOf: UTN-SauerstoffsaettigungArteriell
Usage: #example
* meta.profile[0] = "https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-sauerstoffsaettigung"
* category = $observation-category#vital-signs
* code.coding[loinc] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[+] = $sct#442476006 "Arterial oxygen saturation"
* code.coding[+] = urn:iso:std:iso:11073:10101#150324 "MDC_SAT_O2_ART"
* code.text = "Pulsoximetrische Sauerstoffsättigung"
* valueQuantity = 98 '%' "%"
* component[0].valueQuantity = 2 'L/min' "Liter pro Minute"
* component[=].code.coding[0] = $loinc#3151-8 "Inhaled oxygen flow rate"
* component[=].code.coding[+] = $sct#427081008 "Delivered oxygen flow rate"
* component[=].code.text = "Sauerstoffflussrate"
* component[+].valueQuantity = 50 '%' "%"
* component[=].code.coding[0] = $loinc#3150-0 "Inhaled oxygen concentration"
* component[=].code.coding[+] = $sct#250774007 "Inspired oxygen concentration"
* component[=].code.text = "Inspiratorische Sauerstoffkonzentration"
* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"
* performer = Reference(Practitioner/1)