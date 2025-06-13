This page shows how the Teleconsultation is represented in the FHIR Format within the UTN Project. 

### Scenario Patient to Practitioner Teleconsultation

Patient to Practitioner consultation scenario shows that the clinical note can be directly written into the Composition.

|  Field(s) | Example Instance | 
| --------- | ---------------- | 
| UTN Teleconsultation Composition   | [`Composition`](Composition-Example-UTN-Teleconsultation-PTtoPR.html) | 


{: .grid }

### Scenario Practitioner to Practitioner Teleconsultation

This scenario shows how the consultation between practitioner to practitioner should look like in a telemedicine setting. 
    - The practitioner makes the service request to the practitioner in another location. The service request consists of the composition of procedures, conditions, thrrapies of the encounter. 
    - The practitioner then checks the composition and adds a new section for the consultation note. 


|  Field(s) | Example Instance | 
| --------- | ---------------- | 
| Consultation Request from Charité to Würzburg     | [`Service Request`](ServiceRequest-UTN-Teleconsultation-PRtoPR-ServiceRequest.html) | 
| Composition Back with Consultation Note      | [`Consultation Note`](Composition-Example-UTN-Teleconsultation-PRtoPR-Return.html) | 


{% include img.html img="PRtoPR_consultaition.png" %}


{: .grid }