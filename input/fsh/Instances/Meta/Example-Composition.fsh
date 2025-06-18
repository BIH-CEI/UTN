Instance: Example-UTN-Teleconsultation-PTtoPR
InstanceOf: Composition
Usage: #example
Title: "Teleconsultation note between patient and practitioner"

* status = #final
* type = $loinc#85208-7 "Telehealth Consult note"
* category = $loinc#11488-4 "Consult Note"
* subject = Reference(Example-UTN-Patient)
* encounter = Reference(Example-UTN-Encounter-PTtoPR)
* date = "2012-01-04T09:10:14Z"
* author = Reference(Example-UTN-Practitioner-PR1)
* title = "Consultation Note"

* section[+]
  * title = "Consultation Note Text"
  * code = $loinc#29545-1 "Physical findings Narrative"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * text.status = #generated
  * text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Patient reports mild chest pain during exercise. No other symptoms reported. ECG normal. Advised lifestyle modification and follow-up in 1 month.</p>
  </div>
  """

/////////////////////////////////////////////


Instance: Example-UTN-Teleconsultation-PRtoPR
InstanceOf: Composition
Usage: #example
Title: "Teleconsultation note between practitioner and practitioner"
Description: "Teleconsultation note sent to practitioner as part of the Service Request"

* status = #final
* type = $loinc#85208-7 "Telehealth Consult note"
* category = $loinc#11488-4 "Consult Note"
* subject = Reference(Example-UTN-Patient-2)
* encounter = Reference(Example-UTN-Encounter-PRtoPR)
* date = "2012-01-04T09:10:14Z"
* author = Reference(Example-UTN-Practitioner-PR1)
* title = "Consultation Note"

* section[+]
  * title = "Aufnahme"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-AllergyIntolerance)
  * entry[+] = Reference(Example-UTNKoerpergewicht)
  * entry[+] = Reference(Example-UTN-Koerperroesse)
  * entry[+] = Reference(Example-UTN-Sepsis)

* section[+]
  * title = "Vorerkrankungen / Vor-OPs"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-Condition)

* section[+]
  * title = "Vormedikation"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-MedikationStatement)

* section[+]
  * title = "Beatmung"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-Invasive-Beatmung)

* section[+]
  * title = "Adjuvante Therapien"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-VVECMO)

* section[+]
  * title = "Diagnostik"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-Procedure)

* section[+]
  * title = "Labor"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTNKreatinin)

* section[+]
  * title = "Vital Parameter"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTNAtemfrequenz) 
  * entry[+] = Reference(Example-UTNHerzfrequenz) 
  * entry[+] = Reference(Example-UTNKoerpertemperatur) 
  * entry[+] = Reference(Example-UTN-Arterieller-Blutdruck) 
  



/////////////////////////////////////////////////////
Extension: CompositionBasedOnServiceRequest
Id: composition-basedon-servicerequest
Title: "Composition BasedOn ServiceRequest"
Description: "Links a Composition to the ServiceRequest it is based on."
* value[x] only Reference(ServiceRequest)
* valueReference 1..1

Instance: Example-UTN-Teleconsultation-PRtoPR-Return
InstanceOf: Composition
Usage: #example
Title: "Teleconsultation note between practitioner and practitioner"
Description: "Teleconsultation note sent back to practitioner based on the Service Request"

* status = #final
* type = $loinc#85208-7 "Telehealth Consult note"
* category = $loinc#11488-4 "Consult Note"
* subject = Reference(Example-UTN-Patient-2)
* encounter = Reference(Example-UTN-Encounter-PRtoPR)
* date = "2012-01-04T09:10:14Z"
* author = Reference(Example-UTN-Practitioner-PR2)
* title = "Consultation Note"

* section[+]
  * title = "Aufnahme"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-AllergyIntolerance)
  * entry[+] = Reference(Example-UTNKoerpergewicht)
  * entry[+] = Reference(Example-UTN-Koerpergroesse)
  * entry[+] = Reference(Example-UTN-Sepsis)

* section[+]
  * title = "Vorerkrankungen / Vor-OPs"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-Condition)

* section[+]
  * title = "Vormedikation"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-MedikationStatement)

* section[+]
  * title = "Beatmung"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-Invasive-Beatmung)

* section[+]
  * title = "Adjuvante Therapien"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-VVECMO)

* section[+]
  * title = "Diagnostik"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTN-Procedure)

* section[+]
  * title = "Labor"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTNKreatinin)

* section[+]
  * title = "Vital Parameter"
  * author = Reference(Example-UTN-Practitioner-PR1)
  * entry[+] = Reference(Example-UTNAtemfrequenz) 
  * entry[+] = Reference(Example-UTNHerzfrequenz) 
  * entry[+] = Reference(Example-UTNKoerpertemperatur) 
  * entry[+] = Reference(Example-UTN-Arterieller-Blutdruck) 

* section[+]
  * title = "Teleconsultation Note"
  * author = Reference(Example-UTN-Practitioner-PR2)
  * text.status = #generated
  * text.div = """
  <div xmlns="http://www.w3.org/1999/xhtml">
    <p>Patient reports mild chest pain during exercise. No other symptoms reported. ECG normal. Advised lifestyle modification and follow-up in 1 month.</p>
  </div>
  """
* extension[+].url = "http://example.org/fhir/StructureDefinition/composition-basedon-servicerequest"
* extension[=].valueReference = Reference(UTN-Teleconsultation-PRtoPR-ServiceRequest)
