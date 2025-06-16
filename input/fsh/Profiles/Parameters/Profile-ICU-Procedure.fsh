Profile: UTN-Procedure
Parent: MII_PR_Prozedur_Procedure
Id: utn-procedure
Title: "UTN Procedure"
Description: "This profile explains a Prcedure in UTN"

* id MS
* meta MS
* meta.source MS
* meta.profile MS
* status MS
* category MS
* code 1.. MS

* code.coding 1.. MS

* subject MS
* performed[x] 1.. MS
* performed[x] only dateTime or Period

* performedDateTime 0..1
* performedDateTime only dateTime

* performedPeriod 0..1
* performedPeriod only Period

* bodySite MS

* note MS