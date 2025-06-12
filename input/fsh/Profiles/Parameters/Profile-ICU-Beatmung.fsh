Profile: UTN_Procedure_Beatmung
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung
Id: utn-procedure-beatmung
Title: "UTN Procedure Beatmung"
Description: "Profil für die Beatmungsprozedur"

* partOf only Reference(Procedure or Observation)
* category 1..
* category.coding[sct] from $vs-mii-icu-category-procedure-beatmung-snomed (required)
* category.coding[sct].display MS
* code.coding[sct] from $vs-mii-icu-code-procedure-beatmung-snomed (required)
* code.coding[sct].display MS
* subject only Reference(Patient)
* encounter MS
* performed[x] only Period
* recorder MS