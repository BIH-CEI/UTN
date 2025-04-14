Profile: UTNConsent
Parent: MII_PR_Consent_Einwilligung
Id: utn-consent-id
Title: "UTN Consent Forschungsvorhaben and Videosprechstunde"
Description: "This is the consent profile for the research project and the video consultation"

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



