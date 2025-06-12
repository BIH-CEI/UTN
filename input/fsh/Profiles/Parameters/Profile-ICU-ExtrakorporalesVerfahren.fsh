Profile: UTNEcmo
Parent: SD_MII_ICU_Extrakorporales_Verfahren
Id: utn-icu-extrakorporales-verfahren
Title: "MII PR ICU Extrakorporales Verfahren"


* code.coding[sct] from $vs-mii-icu-code-extrakorporale-verfahren (required)
* code.coding[sct].display MS
* encounter MS
* performed[x] only Period
* performed[x].start 1.. MS
* performed[x].end MS
* recorder only Reference(Patient or Practitioner or PractitionerRole)
* recorder MS