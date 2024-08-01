Alias: $Patient = http://fhir.de/ConsentManagement/StructureDefinition/Patient

Profile: ConsentManagementQuestionnaireResponseUKW
Parent: http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireResponse
Id: profile-consent-management-questionnaireresponse
Title: "Consent Management QuestionnaireResponse"
Description: "Der ausgefüllte Fragebogen zur Einwilligung."
* ^url = "http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireResponseUKW"
* ^version = "1.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2022-07-20"
* ^publisher = "AG Einwilligungsmanagement des Interoperabilitätsforums"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://wiki.hl7.de/index.php?title=Einwilligungsmanagement_(Projekt)"
* language MS N
* language ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* language ^extension[=].valueCode = #4.0.0
* questionnaire 1.. MS N
* questionnaire ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* questionnaire ^extension[=].valueCode = #4.0.0
* status MS N
* status ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* status ^extension[=].valueCode = #4.0.0
* subject 1.. MS
* subject only Reference($Patient)
* subject ^short = "Der Patient, für den die Einwilligung gilt"
* subject.reference N
* subject.reference ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* subject.reference ^extension[=].valueCode = #4.0.0
* authored MS N
* authored ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* authored ^extension[=].valueCode = #4.0.0
* author only Reference(Practitioner or PractitionerRole or Patient or RelatedPerson)
* author MS
* author ^short = "Die Person, welche die Einwilligungsangaben erfasst/dokumentiert"
* author ^comment = "Füllt der betroffene Patient selbst den Fragebogen aus, so ist dieser hier erneut zu referenzieren (author = subject)."
* source MS
* source ^short = "Die Person, von der die Einwilligungsangaben stammen"
* source ^comment = "Stammen die Antworten auf die Fragen vom betroffenen Patienten selbst, so ist dieser hier erneut zu referenzieren (source = subject)."
* item 1.. MS
* item.linkId MS N
* item.linkId ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* item.linkId ^extension[=].valueCode = #4.0.0
* item.answer MS
* item.answer.value[x] MS N
* item.answer.value[x] ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* item.answer.value[x] ^extension[=].valueCode = #4.0.0
* item.answer.item MS
* item.item MS
