Instance: Example-UTNAtemfrequenz
InstanceOf: UTNAtemfrequenz
Description: "An example Observation for respiratory rate using Atemfrequenz profile."
Usage: #example

* status = #draft
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs
* category.coding.display = "Vital Signs"

* code.coding[loinc].system = $loinc
* code.coding[loinc].code = #9279-1
* code.coding[loinc].display = "Respiratory rate"

* code.coding[snomed].system = $sct
* code.coding[snomed].code = #86290005
* code.coding[snomed].display = "Respiratory rate (observable entity)"

* code.coding[IEEE11073].system = "urn:iso:std:iso:11073:10101"
* code.coding[IEEE11073].code = #151562
* code.coding[IEEE11073].display = "MDC_RESP_RATE"

* code.text = "Atemfrequenz"

* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* valueQuantity.value = 26
* valueQuantity.unit = "Atemzüge pro Minute"

* subject.reference = "Patient/PatientinMusterfrau"
* effectiveDateTime = "2019-07-02"
* performer = Reference(Practitioner/1)
