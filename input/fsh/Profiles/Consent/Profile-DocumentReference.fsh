Profile: UTNDocumentReference
Parent: MII_PR_Consent_DocumentReference
Id: utn-consent-documentreference-id
Title: "UTN Consent Document Reference"
Description: "This is the Document Reference profile for the consent profile of the Forschungsvorhaben and Videosprechstunde"

* status 1..1 MS
* subject only Reference($Patient)
* content 1.. MS 
* content.attachment 1..1 MS
* content.attachment.contentType = #application/pdf
* content.attachment.data 1..1 MS 
* content.attachment.url 0..1



