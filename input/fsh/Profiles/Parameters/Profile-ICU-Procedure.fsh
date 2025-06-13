/*

Alias: $spdx-license = http://hl7.org/fhir/spdx-license
Alias: $ProzedurDokumentationsdatum = http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum
Alias: $Durchfuehrungsabsicht = https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht
Alias: $CodingOPS = http://fhir.de/StructureDefinition/CodingOPS
Alias: $procedures-category-sct = https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct
Alias: $mii-vs-prozedur-ops = https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/mii-vs-prozedur-ops
Alias: $procedures-sct = https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct

Profile: UTN-Procedure
Parent: MII_PR_Prozedur_Procedure
Id: mii-pr-prozedur-procedure
Title: "MII PR Prozedur Procedure"
Description: "Dieses Profil beschreibt eine Prozedur in der Medizininformatik-Initiative."


* id MS
* meta MS
* meta.source MS
* meta.profile MS
* status MS
* category MS
* category.coding contains sct 0..1 MS
* category.coding[sct] from $procedures-category-sct (preferred)
* category.coding[sct].system 1.. MS
* category.coding[sct].code 1.. MS
* code 1.. MS

* code.coding 1.. MS

* code.coding[ops] from $mii-vs-prozedur-ops (required)
* code.coding[ops].system MS
* code.coding[ops].version MS
* code.coding[ops].code MS
* code.coding[sct] from $procedures-sct (required)

* code.coding[sct].system 1.. MS
* code.coding[sct].code 1.. MS
* subject MS
* performed[x] 1.. MS
* performed[x] only dateTime or Period

* performedDateTime 0..1
* performedDateTime only dateTime

* performedPeriod 0..1
* performedPeriod only Period

* bodySite MS
* bodySite.coding contains snomed-ct 0..1 MS

* bodySite.coding[snomed-ct].system 1.. MS
* bodySite.coding[snomed-ct].system = "http://snomed.info/sct"
* bodySite.coding[snomed-ct].version MS
* bodySite.coding[snomed-ct].code 1.. MS
* note MS

*/