Profile: ConsentManagementProvenance
Parent: MII_PR_Consent_Provenance
Id: consent-management-provenance
Title: "UTN Consent Management Provenance"
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