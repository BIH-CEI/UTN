Alias: $Patient = http://fhir.de/ConsentManagement/StructureDefinition/Patient

Profile: UTNDocumentReference
Parent: MII_PR_Consent_DocumentReference
Id: utn-consent-documentreference-id
Title: "Consent: Document Reference"
Description: "Dies ist das DocumentReference für Einwilligungsprofil für das Forschungsprojekt und die Videokonsultation"
* status 1..1 MS
* subject only Reference($Patient)
* content 1.. MS 
* content.attachment 1..1 MS
* content.attachment.contentType = #application/pdf
* content.attachment.data 1..1 MS 
* content.attachment.url 0..1



Instance: Example-UTN-Consent-DocumentReference-Forschungsvorhaben
InstanceOf: UTNDocumentReference
Usage: #example
* status = #current
* subject = Reference(Example-UTN-Patient)
* content.attachment.contentType = #application/pdf
* content.attachment.data = "VGVsZUFzc2Vzc19QYXRpZW50ZW5pbmZvcm1hdGlvbg=="
* content.attachment.url = "https://redcap.ukw.de/surveys/?__file=BpfEHSgRSXzMTLVuD6XHro2rcE2Vue7RZGXFIEzJrkscLPotzTEcUf9RjEAkhhrM5mwpFIcCP5bpGtP8iG99XHm4LWGwu7JKycan"

Instance: Example-UTN-Consent-DocumentReference-Videosprechstunde
InstanceOf: UTNDocumentReference
Usage: #example
* status = #current
* subject = Reference(Example-UTN-Patient)
* content.attachment.contentType = #application/pdf
* content.attachment.data = "VGVsZUFzc2Vzc19WaWRlb3NwcmVjaHN0dW5kZQ=="
* content.attachment.url = "https://redcap.ukw.de/surveys/index.php?pid=87&__passthru=DataEntry%2Ffile_download.php&type=attachment&field_name=video_download&hidden_edit=0&record=1&event_id=347&doc_id_hash=a84aec9c20c6dd2ee6bff1e9ecbbe4d1ee70bb3d&instance=1&id=1655&s=FEX9P8W7P37XAXXP"

