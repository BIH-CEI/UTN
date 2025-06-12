/*
Alias: $CodingASK = http://fhir.de/StructureDefinition/CodingASK
Alias: $CodingATC = http://fhir.de/StructureDefinition/CodingATC

Profile: UTNAllergyIntolerance
Parent: ISiKAllergieUnvertraeglichkeit
Id: utn-icu-allergyintolerance
Description: "Diese Profil ermöglicht die Dokumentation von Allergien und Unverträglichkeiten"

* clinicalStatus MS
* clinicalStatus.coding 1..1 MS
* clinicalStatus.coding.system 1.. MS
* clinicalStatus.coding.code 1.. MS
* verificationStatus MS
* verificationStatus.coding 1..1 MS
* verificationStatus.coding.system 1.. MS
* verificationStatus.coding.code 1.. MS
* type MS
* category MS
* criticality MS
* code 1.. MS
* code.coding MS
* code.coding contains
    snomed-ct 1..1 MS and
    ask 0..1 MS and
    atc 0..1 MS
* code.coding[snomed-ct] only $sct
* code.coding[ask] only $CodingASK
* code.coding[ask].system MS
* code.coding[ask].code MS
* code.coding[ask].display MS
* code.coding[atc] only $CodingATC
* code.coding[atc].system MS
* code.coding[atc].version MS
* code.coding[atc].code MS
* code.coding[atc].display MS
* code.text MS
* patient MS
* encounter MS
* onset[x] MS
* onsetDateTime 0..1 MS
* onsetDateTime only dateTime
* onsetAge 0..1 MS
* onsetAge only Age
* onsetString 0..1 MS
* onsetString only string
* recordedDate MS
* recorder MS
* recorder.reference MS
* recorder.display MS
* asserter MS
* asserter.reference MS
* asserter.display MS
* note MS
* note.author[x] only Reference(Practitioner or Patient or RelatedPerson or Organization)
* note.author[x] MS
* note.author[x].reference MS
* note.author[x].display MS
* note.time MS
* note.text MS
* reaction MS
* reaction.manifestation MS
* reaction.manifestation.coding MS

* reaction.manifestation.coding contains snomed-ct 0..1 MS
* reaction.manifestation.coding[snomed-ct] only $sct
* reaction.manifestation.text MS
* reaction.severity MS
* reaction.exposureRoute MS
* reaction.exposureRoute.coding MS

* reaction.exposureRoute.coding contains snomed-ct 0..1 MS
* reaction.exposureRoute.coding[snomed-ct] only $sct
* reaction.exposureRoute.text MS

*/