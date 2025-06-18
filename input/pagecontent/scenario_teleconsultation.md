This page shows how the Teleconsultation is represented in the FHIR Format within the UTN Project. 

### Scenario Patient to Practitioner Teleconsultation

Patient to Practitioner consultation scenario shows that the clinical note can be directly written into the Composition.

|  Field(s) | Example Instance | 
| --------- | ---------------- | 
| UTN Teleconsultation Composition   | [`Composition`](Composition-Example-UTN-Teleconsultation-PTtoPR.html) | 


{: .grid }

### Scenario ICU - Practitioner to Practitioner Teleconsultation

This scenario for the inpatient encounter in an ICU setting illustrates how a consultation between two practitioners can be conducted in a telemedicine context  using FHIR resources.

- A practitioner at Charité initiates a ServiceRequest to a practitioner at Uniklinik Würzburg. This ServiceRequest references a Composition containing relevant clinical information such as procedures, conditions, and therapies from the encounter (via ServiceRequest.supportingInfo).

- The receiving practitioner reviews the Composition and adds a new section to include their consultation note. This updated Composition references the original ServiceRequest using the basedOn extension, thereby linking the consultation response to the original request.


|  Field(s) | Example Instance | 
| --------- | ---------------- | 
| Consultation Request from Charité to Würzburg     | [`Service Request`](ServiceRequest-UTN-Teleconsultation-PRtoPR-ServiceRequest.html) | 
| Composition Back with Consultation Note      | [`Consultation Note`](Composition-Example-UTN-Teleconsultation-PRtoPR-Return.html) | 


{% include img.html img="prtoprlogo.png" %}


{: .grid }