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



