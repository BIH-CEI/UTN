Instance: Example-UTN-HealthcareService-Charite
InstanceOf: UTNHealthcareService
Title: "Teleconsultation Service - Charité"
Description: "Teleconsultation service provided by Charité – Universitätsmedizin Berlin"

* id = "teleconsultation-service-charite"
* identifier.system = "http://charite.de/services"
* identifier.value = "teleconsult-charite-001"
* active = true
* providedBy.reference = "Organization/Charite"
* providedBy.display = "Charité – Universitätsmedizin Berlin"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/service-category"
* category.coding.code = #8
* category.coding.display = "Counselling"
* name = "Charité Teleconsultation Service"
* telecom[0].system = #phone
* telecom[0].value = "+49-30-450-50"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "teleconsult@charite.de"
* telecom[1].use = #work
* location.reference = "Location/ChariteCampusMitte"
* location.display = "Charité Campus Mitte"


Instance: Example-UTN-Teleconsultation-Service-Wuerzburg
InstanceOf: UTNHealthcareService
Title: "Teleconsultation Service - Uniklinik Würzburg"
Description: "Teleconsultation service provided by Universitätsklinikum Würzburg"

* id = "teleconsultation-service-wuerzburg"
* identifier.system = "http://ukw.de/services"
* identifier.value = "teleconsult-ukw-001"
* active = true
* providedBy.reference = "Organization/UniklinikWuerzburg"
* providedBy.display = "Universitätsklinikum Würzburg"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/service-category"
* category.coding.code = #8
* category.coding.display = "Counselling"
* name = "Uniklinik Würzburg Teleconsultation Service"
* telecom[0].system = #phone
* telecom[0].value = "+49-931-201-0"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "teleconsult@ukw.de"
* telecom[1].use = #work
* location.reference = "Location/UKWMain"
* location.display = "Uniklinik Würzburg Main Building"