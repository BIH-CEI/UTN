Instance: Example-UTN-Observation-Arterieller-Blutdruck
InstanceOf: UTN_Observation_Arterieller_Blutdruck
Title: "Example UTN Arterieller Blutdruck Observation"
Description: "Example instance for documenting arterial blood pressure observations within UTN."
Usage: #example

// Category (Vital Signs)
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* status = #final
// Code (LOINC & SNOMED)
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #85354-9
* code.coding[LOINC].display = "Blood pressure panel"
* code.coding[SCT].system = "http://snomed.info/sct"
* code.coding[SCT].version = "http://snomed.info/sct/900000000000207008/version/20241101"
* code.coding[SCT].code = #364090009
* code.coding[SCT].display = "Arterial blood pressure"

// Subject and Metadata
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* effectiveDateTime = "2025-02-17T10:30:00Z"

// Components (Systolic, Diastolic, Mean Blood Pressure)

// Systolic Blood Pressure
* component[SystolicBP].code.coding[loinc].system = "http://loinc.org"
* component[SystolicBP].code.coding[loinc].code = #8480-6
* component[SystolicBP].code.coding[loinc].display = "Systolic blood pressure"
* component[SystolicBP].code.coding[sct].system = "http://snomed.info/sct"
* component[SystolicBP].code.coding[sct].code = #271649006
* component[SystolicBP].code.coding[sct].display = "Systolic blood pressure"
* component[SystolicBP].valueQuantity.value = 120
* component[SystolicBP].valueQuantity.unit = "mmHg"
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[SystolicBP].valueQuantity.code = #"mm[Hg]"

// Diastolic Blood Pressure
* component[DiastolicBP].code.coding[loinc].system = "http://loinc.org"
* component[DiastolicBP].code.coding[loinc].code = #8462-4
* component[DiastolicBP].code.coding[loinc].display = "Diastolic blood pressure"
* component[DiastolicBP].code.coding[sct].system = "http://snomed.info/sct"
* component[DiastolicBP].code.coding[sct].code = #271650006
* component[DiastolicBP].code.coding[sct].display = "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity.value = 80
* component[DiastolicBP].valueQuantity.unit = "mmHg"
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[DiastolicBP].valueQuantity.code = #"mm[Hg]"

// Mean Blood Pressure
* component[meanBP].code.coding[loinc].system = "http://loinc.org"
* component[meanBP].code.coding[loinc].code = #8478-0
* component[meanBP].code.coding[loinc].display = "Mean blood pressure"
* component[meanBP].code.coding[sct].system = "http://snomed.info/sct"
* component[meanBP].code.coding[sct].code = #6797001
* component[meanBP].code.coding[sct].display = "Mean blood pressure"
* component[meanBP].valueQuantity.value = 93
* component[meanBP].valueQuantity.unit = "mmHg"
* component[meanBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[meanBP].valueQuantity.code = #"mm[Hg]"