Alias: $service-type = http://terminology.hl7.org/CodeSystem/service-type
Alias: $service-category = http://terminology.hl7.org/CodeSystem/service-type
Alias: $sct = http://snomed.info/sct

Extension: DeviceReference
Id: device-reference
Title: "Device Reference"
Description: "Extension to reference devices in a HealthcareService"

* valueReference.reference = "Device"

Profile: HealthcareServiceWithDevices
Parent: HealthcareService
Id: healthcare-service-with-devices
Title: "Healthcare Service with Devices"
Description: "A profile for HealthcareService to include references to non-medical devices used in teleconsultation."
* id 0..1
* active 0..1
* providedBy 0..1
* providedBy only Reference(Organization)
* category 0..
* type 0..
* name 0..1
* telecom 0..
* location only Reference(Location)

* extension contains DeviceReference named device 0..*

Instance: Example-UTN-HealthcareService
InstanceOf: HealthcareServiceWithDevices
Title: "Teleconsultation Service"
Description: "A teleconsultation service provided by Example Hospital"
* id = "teleconsultation-service-1"
* identifier.system = "http://example.org/services"
* identifier.value = "teleconsultation-service-123"
* active = true
* providedBy.reference = "Organization/1"
* providedBy.display = "Example Hospital"
* category.coding.system = "http://terminology.hl7.org/CodeSystem/service-category"
* category.coding.code = $service-category#8
* category.coding.display = "Counselling"
* type.coding.system = "http://example.org/fhir/CodeSystem/service-types"
* type.coding.code = $service-type#76
* type.coding.display = "Health Counselling"
* name = "Teleconsultation Service"
* telecom[0].system = #phone
* telecom[0].value = "123-456-7890"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "teleconsult@example.org"
* telecom[1].use = #work
* location.reference = "Location/1"
* location.display = "Example Hospital Main Building"
* extension[0].url = "http://example.org/fhir/StructureDefinition/device-reference"
* extension[0].valueReference.reference = "Device/camera-1"
* extension[0].valueReference.display = "HD Camera"
* extension[1].url = "http://example.org/fhir/StructureDefinition/device-reference"
* extension[1].valueReference.reference = "Device/phone-1"
* extension[1].valueReference.display = "Smartphone"

Instance: CameraDevice
InstanceOf: Device
Title: "Camera Device"
Description: "An HD camera used for teleconsultation"
* id = "camera-1"
* identifier.system = "http://example.org/devices"
* identifier.value = "camera-123"
* status = #active
* deviceName[0].name = "HD Camera"
* deviceName[0].type = #user-friendly-name
* type.coding[0].system = $sct
* type.coding[0].code = #14364002
* type.coding[0].display = "Camera"
* type.text = "HD Camera"
* manufacturer = "Example Camera Manufacturer"
* property[0].type.coding.system = "http://example.org/device-properties"
* property[0].type.coding.code = #resolution
* property[0].type.coding.display = "Resolution"
* property[0].valueQuantity.value = 1080
* property[0].valueQuantity.unit = "p"
* property[0].valueQuantity.system = "http://unitsofmeasure.org"
* property[0].valueQuantity.code = #p

Instance: PhoneDevice
InstanceOf: Device
Title: "Phone Device"
Description: "A smartphone used for teleconsultation"
* id = "phone-1"
* identifier.system = "http://example.org/devices"
* identifier.value = "phone-123"
* status = #active
* deviceName[0].name = "Smartphone"
* deviceName[0].type = #user-friendly-name
* type.coding[0].system = $sct
* type.coding[0].code = #1187059002 
* type.coding[0].display = "Smartphone"
* type.text = "Smartphone"
* manufacturer = "Example Phone Manufacturer"
