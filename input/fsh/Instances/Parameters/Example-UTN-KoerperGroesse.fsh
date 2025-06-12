Instance: Example-UTN-Koerperroesse
InstanceOf: Observation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/koerpergroesse"
* status = #final
* category = $observation-category#vital-signs
* code.coding[0] = $loinc#8302-2 "Body height"
* code.coding[+] = $sct#1153637007 "Body height (observable entity)"
* code.coding[=].version = "http://snomed.info/sct/900000000000207008/version/20241101"
* subject = Reference(Example-UTN-Patient-2)
* valueQuantity = 180 'cm' "centimeter"