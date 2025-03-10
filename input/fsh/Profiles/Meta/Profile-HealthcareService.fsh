Extension: DeviceReference
Id: device-reference
Title: "Device Reference"
Description: "Extension to reference devices in a HealthcareService"

* valueReference.reference = "Device"

Profile: HealthcareServiceWithDevices
Parent: HealthcareService
Id: healthcare-service-with-devices
Title: "UTN Healthcare Service with Devices"
Description: "A profile for HealthcareService to include references to non-medical devices used in teleconsultation."

* id 0..1
* active 0..1
* providedBy 0..1
* providedBy only Reference(Organization)
* category 0.. //add specialist 27
* type 0..
* name 0..1
* telecom 0..
* location only Reference(Location)

* extension contains DeviceReference named device 0..*


