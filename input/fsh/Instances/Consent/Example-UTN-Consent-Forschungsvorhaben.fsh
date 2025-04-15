Instance: Example-UTN-Consent-Forschungsvorhaben
InstanceOf: UTNConsent
Usage: #example
Description: "This example shows how the 'Forschungsvorhaben Consent form' should be strucutured"
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

Instance: Example-UTN-Consent-DocumentReference-Forschungsvorhaben
InstanceOf: UTNDocumentReference
Usage: #example
Description: "Example of Documentreference for Forschungsvorhaben"

* status = #current
* subject = Reference(Example-UTN-Patient)
* content.attachment.contentType = #application/pdf
* content.attachment.data = "VGVsZUFzc2Vzc19QYXRpZW50ZW5pbmZvcm1hdGlvbg=="
* content.attachment.url = "https://redcap.ukw.de/surveys/?__file=BpfEHSgRSXzMTLVuD6XHro2rcE2Vue7RZGXFIEzJrkscLPotzTEcUf9RjEAkhhrM5mwpFIcCP5bpGtP8iG99XHm4LWGwu7JKycan"


Instance: Example-UTN-Consent-Provenance-Forschungsvorhaben
InstanceOf: ConsentManagementProvenance
Usage: #example
Description: "Example of Provenance for Forschungsvorhaben"

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
* signature.who = Reference(Example-UTN-Patient)


Instance: UTNLocation
InstanceOf: Location
Description: "Example location for UTN"
* name = "Berlin"
