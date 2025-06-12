Profile: UTN-Encounter
Parent: MII_PR_Fall_KontaktGesundheitseinrichtung
Id: utn-encounter
Title: "UTN Encounter"
Description: "This is the profile of Enocunter within UTN"

* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* status MS
* class MS
* type MS

* serviceType MS
* serviceType.coding MS

* subject 1.. MS
* participant 0..*
* participant.individual 0..1
* participant.individual only Reference(Practitioner)

* period MS
* period.start MS
* period.end MS

