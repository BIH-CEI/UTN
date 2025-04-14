Instance: Example-UTNHerzfrequenz
InstanceOf: UTNHerzfrequenz
Usage: #example
Description: "An example Observation for heart rate."

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