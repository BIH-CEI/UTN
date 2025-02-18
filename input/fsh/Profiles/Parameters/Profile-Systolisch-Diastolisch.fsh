Profile: UTN_Observation_Arterieller_Blutdruck
Parent: SD_MII_ICU_Arterieller_Blutdruck
Id: utn-observation-arterieller-blutdruck
Title: "UTN Observation Arterieller Blutdruck"
Description: "Profile for documenting arterial blood pressure observations within UTN."

// Category (Vital Signs)
* category MS

// Code
* code MS
* code.coding MS
* code.coding contains LOINC 1..1 MS and SCT 1..1 MS
* code.coding[LOINC].system MS
* code.coding[LOINC].code MS
* code.coding[LOINC].display MS
* code.coding[SCT].version = "http://snomed.info/sct/900000000000207008/version/20241101"
* code.coding[SCT].code = $SCT#364090009
* code.coding[SCT].display MS

// Subject and Metadata
* subject MS
* encounter MS
* effective[x] MS
* value[x] MS
* dataAbsentReason MS
* interpretation MS
* bodySite MS
* method MS
* device MS
* referenceRange 0..1 MS

// Components (Systolic, Diastolic, Mean Blood Pressure)
//* component contains SystolicBP 1..1 MS and DiastolicBP 1..1 MS and meanBP 1..1 MS

// Systolic Blood Pressure
* component[SystolicBP].code.coding 3..
* component[SystolicBP].code.coding contains LOINC 0..1 MS and SCT 0..1 MS and IEEE11073 0..1 MS
* component[SystolicBP].code.coding[loinc].system 1.. MS
* component[SystolicBP].code.coding[loinc].code = $LOINC#8480-6
* component[SystolicBP].code.coding[loinc].display MS
* component[SystolicBP].code.coding[sct].system 1.. MS
* component[SystolicBP].code.coding[sct].code = $SCT#271649006
* component[SystolicBP].code.coding[sct].display MS
* component[SystolicBP].code.coding[IEEE-11073].system 1.. MS
* component[SystolicBP].code.coding[IEEE-11073].code = urn:iso:std:iso:11073:10101#150017
* component[SystolicBP].code.coding[IEEE-11073].display MS

* component[SystolicBP].value[x] 1..1 MS
* component[SystolicBP].value[x].unit = "millimeter Mercury column"
* component[SystolicBP].value[x].system = $unitsofmeasure
* component[SystolicBP].value[x].code = #"mm[Hg]"
* component[SystolicBP].dataAbsentReason MS

// Diastolic Blood Pressure
* component[DiastolicBP].code.coding 3..
* component[DiastolicBP].code.coding contains LOINC 0..1 MS and SCT 0..1 MS and IEEE11073 0..1 MS
* component[DiastolicBP].code.coding[loinc].system 1.. MS
* component[DiastolicBP].code.coding[loinc].code = $LOINC#8462-4
* component[DiastolicBP].code.coding[loinc].display MS
* component[DiastolicBP].code.coding[sct].system 1.. MS
* component[DiastolicBP].code.coding[sct].code = $SCT#271650006
* component[DiastolicBP].code.coding[sct].display MS
* component[DiastolicBP].code.coding[IEEE-11073].system 1.. MS
* component[DiastolicBP].code.coding[IEEE-11073].code = urn:iso:std:iso:11073:10101#150018
* component[DiastolicBP].code.coding[IEEE-11073].display MS

* component[DiastolicBP].value[x] 1..1 MS
* component[DiastolicBP].value[x].unit = "millimeter Mercury column"
* component[DiastolicBP].value[x].system = $unitsofmeasure
* component[DiastolicBP].value[x].code = #"mm[Hg]"
* component[DiastolicBP].dataAbsentReason MS

// Mean Blood Pressure
* component[meanBP].code.coding 3..
* component[meanBP].code.coding contains LOINC 0..1 MS and SCT 0..1 MS and IEEE11073 0..1 MS
* component[meanBP].code.coding[loinc].system 1.. MS
* component[meanBP].code.coding[loinc].code = $LOINC#8478-0
* component[meanBP].code.coding[loinc].display MS
* component[meanBP].code.coding[sct].system 1.. MS
* component[meanBP].code.coding[sct].code = $SCT#6797001
* component[meanBP].code.coding[sct].display MS
* component[meanBP].code.coding[IEEE-11073].system 1.. MS
* component[meanBP].code.coding[IEEE-11073].code = urn:iso:std:iso:11073:10101#150019
* component[meanBP].code.coding[IEEE-11073].display MS

* component[meanBP].value[x] 1..1 MS
* component[meanBP].value[x].unit = "millimeter Mercury column"
* component[meanBP].value[x].system = $unitsofmeasure
* component[meanBP].value[x].code = #"mm[Hg]"
* component[meanBP].dataAbsentReason MS

