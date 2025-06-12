Instance: Example-UTN-VVECMO
InstanceOf: UTNEcmo
Title: "Venovenous ECMO Procedure"
Description: "venovenous extracorporeal membrane oxygenation procedure "
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/extrakorporales-verfahren"
* status = #completed
* category.coding.code = $sct#277132007 "Therapeutic procedure"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #786453001
* code.coding[0].display = "Venovenous extracorporeal membrane oxygenation (procedure)"
* code.coding[0].version = "http://snomed.info/sct/900000000000207008/version/20241101"
* subject = Reference(Example-UTN-Patient-2)
* encounter = Reference(Example-UTN-Encounter-PRtoPR)
* performedPeriod.start = "2025-01-14T16:48:00+10:00"