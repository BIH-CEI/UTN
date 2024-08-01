# UTN Consent Profile
This repository consists of the UTN Consent Profile for Forschungsvorhaben and Videosprechstunde
## Package Dependencies
### FSH
Add the following depepndencies within .sushi-config.yaml file. These packages add the MII Consent Modul 

```
dependencies:
  hl7.fhir.us.core: 3.1.0
  hl7.fhir.us.mcode:
    id: mcode
    uri: http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode 
    version: 1.0.0

  de.medizininformatikinitiative.kerndatensatz.consent:
    uri: de.medizininformatikinitiative.kerndatensatz.consent
    version: 1.0.7

  de.einwilligungsmanagementquestionnaire:
    uri: de.einwilligungsmanagement
    version: 1.0.1

  de.einwilligungsmanagement:
    uri: de.einwilligungsmanagement
    version: 1.0.2
```
### Local Directory

Download the MII Consent Modul from Simplifier and add in your local .fhir directory
