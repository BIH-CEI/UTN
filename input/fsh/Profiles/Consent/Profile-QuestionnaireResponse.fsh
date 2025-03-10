Profile: ConsentManagementQuestionnaireResponseUKW
Parent: ConsentManagementQuestionnaireResponse
Id: profile-consent-management-questionnaireresponse
Title: "UTN Consent Management QuestionnaireResponse"
Description: "Der ausgefüllte Fragebogen zur Einwilligung."

* language MS N
* questionnaire 1.. MS N
* status MS N
* subject 1.. MS
* subject only Reference($Patient)
* subject.reference N
* authored MS N
* author only Reference(Practitioner or PractitionerRole or Patient or RelatedPerson)
* author MS
* source MS
* item 1.. MS
* item.linkId MS N
* item.answer MS
* item.answer.value[x] MS N
* item.answer.item MS
* item.item MS