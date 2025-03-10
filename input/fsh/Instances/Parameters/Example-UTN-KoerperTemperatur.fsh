Instance: Example-ISiKKoerpertemperatur
InstanceOf: UTNKoerperTemperatur
Usage: #example

* category = $observation-category#vital-signs
* code.coding[loinc] = $loinc#8310-5 "Body temperature"
* code.coding[+] = urn:iso:std:iso:11073:10101#150364 "MDC_TEMP_BODY"
* code.coding[+] = $sct#386725007 "Body temperature (observable entity)"
* code.text = "Körpertemperatur"
* valueQuantity = 36.8 'Cel' "°C"
* status = #final
* subject = Reference(Patient/PatientinMusterfrau)
* effectiveDateTime = "2020-10-11"