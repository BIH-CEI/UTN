Alias: $QuestionnaireResponse = http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireResponse
Alias: $Consent = http://fhir.de/ConsentManagement/StructureDefinition/Consent
Alias: $DocumentReference = https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference
Alias: $SignatureLocation = http://fhir.de/ConsentManagement/StructureDefinition/SignatureLocation
Alias: $Location = http://hl7.org/fhir/StructureDefinition/Location


Profile: ConsentManagementProvenance
Parent: MII_PR_Consent_Provenance
Id: consent-management-provenance
Title: "Consent Management Provenance"
* target only Reference($QuestionnaireResponse or $Consent)
* target MS
* target.reference 1.. MS N
* recorded MS N
* location 1..1
* agent MS
* agent.who MS
* entity MS
* entity.role = #source (exactly)
* entity.role MS N
* entity.what only Reference($DocumentReference)
* entity.what MS
* entity.what.reference 1.. MS N
* signature MS
* signature.type MS
* signature.type.system 1.. MS N
* signature.type.code 1.. MS N
* signature.when MS N
* signature.who MS



Instance: ConsentManagementProvenanceForschungsvorhaben
InstanceOf: ConsentManagementProvenance
Usage: #example
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Provenance"
* target = Reference(UtnConsentForschungsvorhaben)
* recorded = "2024-07-24T09:00:00Z"
* location = Reference(UTNLocation)
* agent.who.display = "Klinikum Würzburg"
* entity.what = Reference(UtnConsentDocumentReferenceForschungsvorhaben)
* signature.type.system = "http://hl7.org/fhir/ValueSet/signature-type"
* signature.type.code = #1.2.840.10065.1.12.1.7
* signature.type.display = "Consent Signature"
* signature.when = "2024-07-24T09:00:00Z"
* signature.who = Reference(UTNPatient)

Instance: ConsentManagementProvenanceVideosprechstunde
InstanceOf: ConsentManagementProvenance
Usage: #example
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Provenance"
* target = Reference(UtnConsentVideosprechstunde)
* recorded = "2024-07-24T09:00:00Z"
* location = Reference(UTNLocation)
* agent.who.display = "Klinikum Würzburg"
* entity.what = Reference(UtnConsentDocumentReferenceVideosprechstunde)
* signature.type.system = "http://hl7.org/fhir/ValueSet/signature-type"
* signature.type.code = #1.2.840.10065.1.12.1.7
* signature.type.display = "Consent Signature"
* signature.when = "2024-07-24T09:00:00Z"
* signature.who = Reference(UTNPatient)

Instance: UTNLocation
InstanceOf: Location
* name = "Berlin"

//todo: add documentreference
