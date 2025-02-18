Alias: $loinc = http://loinc.org
Alias: $Patient = http://fhir.de/ConsentManagement/StructureDefinition/Patient
Alias: $QuestionnaireResponse = http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireResponse
Alias: $mii-vs-consent-consent_category = https://www.medizininformatik-initiative.de/fhir/modul-consent/CodeSystem/mii-cs-consent-consent_category
Alias: $patient-consent = https://simplifier.net/einwilligungsmanagement/consentmanagementpatient
Alias: $provenance-consent = https://simplifier.net/einwilligungsmanagement/consentmanagementprovenance
Alias: $location = https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/81234
Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope


Profile: UTNConsent
Parent: MII_PR_Consent_Einwilligung
Id: utn-consent-id
Title: "Consent: Forschungsvorhaben and Videosprechstunde"
Description: "Dies ist das Einwilligungsprofil für das Forschungsprojekt und die Videokonsultation"

* id MS
* meta MS
* meta.source MS
* meta.profile MS
* status MS N

* scope.coding 1..1
* scope.coding.system 1..
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope" (exactly)
* scope.coding.code 1..
* scope.coding.code = #research (exactly)
* category ..2 MS
* category[loinc].coding.system = "http://loinc.org"
* category[loinc].coding.code = #57016-8
* category[loinc].coding 1..1 MS
* category[loinc].coding.system 1.. MS
* category[loinc].coding.code 1.. MS
* category[mii].coding.system = "https://www.medizininformatik-initiative.de/fhir/modul-consent/CodeSystem/mii-cs-consent-consent_category"
* category[mii].coding.code = #2.16.840.1.113883.3.1937.777.24.2.184
* category[mii].coding 1..1 MS
* category[mii].coding.system 1.. MS
* category[mii].coding.code 1.. MS
* patient 1.. MS
* patient only Reference($Patient)
* patient.reference MS N
* patient.identifier MS
* patient.identifier.system 1.. MS
* patient.identifier.value 1.. MS
* dateTime 1.. MS N
* organization MS
* source[x] only Reference($QuestionnaireResponse)
* source[x] MS
* source[x].reference 1.. MS N
* policy 1.. MS
* policy.uri 1.. MS N
* policyRule MS
* provision MS
* provision.type 1.. MS
* provision.type = #deny (exactly)
* provision.period 1.. MS
* provision.period.start 1.. MS
* provision.period.end 1.. MS
* provision.action ..0
* provision.code ..0
* provision.provision MS
* provision.provision.type 1.. MS
* provision.provision.type = #permit (exactly)
* provision.provision.period 1.. MS
* provision.provision.period.start 1.. MS
* provision.provision.period.end 1.. MS
* provision.provision.action ..0
* provision.provision.code 1.. MS
* provision.provision.code from $mii-vs-consent-consent_category (required)
* provision.provision.code.coding 1.. MS
* provision.provision.code.coding.system 1.. MS
* provision.provision.code.coding.code 1.. MS
* provision.provision.provision ..0


Instance: Example-UTN-Consent-Forschungsvorhaben
InstanceOf: UTNConsent
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"
* status = #active
* scope = $consentscope#research
* category[loinc] = $loinc#57016-8
* category[mii] = $mii-vs-consent-consent_category#2.16.840.1.113883.3.1937.777.24.2.184
* patient = Reference(Example-UTN-Patient)
* dateTime = "2024-07-24"
* organization.display = "Klinikum Würzburg"
* policy.uri = "https://redcap.ukw.de/surveys/?__file=BpfEHSgRSXzMTLVuD6XHro2rcE2Vue7RZGXFIEzJrkscLPotzTEcUf9RjEAkhhrM5mwpFIcCP5bpGtP8iG99XHm4LWGwu7JKycan"
* provision.type = #deny
* provision.period.start = "2024-07-24"
* provision.period.end = "2074-07-24"
* provision.provision.type = #permit
* provision.provision.period.start = "2024-07-24"
* provision.provision.period.end = "2034-07-24"
* provision.provision.code = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.2 "IDAT_erheben"

Instance: Example-UTN-Consent-Videosprechstunde
InstanceOf: UTNConsent
Usage: #example

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"
* status = #active
* scope = $consentscope#research
* category[loinc] = $loinc#57016-8
* category[mii] = $mii-vs-consent-consent_category#2.16.840.1.113883.3.1937.777.24.2.184
* patient = Reference(Example-UTN-Patient)
* dateTime = "2024-07-24"
* organization.display = "Klinikum Würzburg"
* policy.uri = "https://redcap.ukw.de/surveys/index.php?pid=87&__passthru=DataEntry%2Ffile_download.php&type=attachment&field_name=video_download&hidden_edit=0&record=1&event_id=347&doc_id_hash=a84aec9c20c6dd2ee6bff1e9ecbbe4d1ee70bb3d&instance=1&id=1655&s=FEX9P8W7P37XAXXP"
* provision.type = #deny
* provision.period.start = "2024-07-24"
* provision.period.end = "2074-07-24"
* provision.provision.type = #permit
* provision.provision.period.start = "2024-07-24"
* provision.provision.period.end = "2034-07-24"
* provision.provision.code = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.2 "IDAT_erheben"

