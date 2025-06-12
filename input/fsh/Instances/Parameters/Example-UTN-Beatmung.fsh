Instance: Example-UTN-Invasive-Beatmung
InstanceOf: UTN_Procedure_Beatmung
Title: "Example of UTN Procedure Beatmung"
Description: "Example instance of a ventilation procedure conforming to UTN_Procedure_Beatmung profile"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung"
* status = #in-progress


* category.coding[sct].code = $sct#40617009  // e.g. Artificial respiration procedure
* category.coding[sct].display = "Artificial Ventilation"
* code.coding[sct].code = $sct#1258985005 "Invasive mechanical ventilation (regime/therapy)"

* subject = Reference(Example-UTN-Patient-2)
* encounter = Reference(Example-UTN-Encounter-PRtoPR)

* performedPeriod.start = "2025-01-14T16:48:00+01:00"
* recorder = Reference(Example-UTN-Practitioner-PR1)
