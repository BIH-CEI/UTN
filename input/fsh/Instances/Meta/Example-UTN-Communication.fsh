Instance: Example-UTN-PRtoPR-Consult
InstanceOf: UTNTeleconsultCommunication
Title: "Teleconsultation Note from Charité to Uniklinik Würzburg"
Description: "A message sent by a practitioner at Charité to a specialist at Uniklinik Würzburg regarding a patient case."

* status = #completed

* subject.reference = "Example-UTN-Patient-2"
* topic = #phone-consult

* encounter.reference = "Example-UTN-Encounter-PRtoPR"
* sender.reference = "Example-UTN-Practitioner-PR1"

* recipient[0].reference = "Example-UTN-Practitioner-PR2"

* sent = "2025-06-01T10:30:00+01:00"

* medium[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode"
* medium[0].coding[0].code = #PHONE
* medium[0].coding[0].display = "Telephone"
* payload[0].contentString = """
 ECG report for Mr. John Doe. We suspect early atrial fibrillation and would appreciate your expert opinion.
"""



