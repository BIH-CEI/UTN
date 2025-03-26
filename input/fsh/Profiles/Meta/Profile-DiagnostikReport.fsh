Profile: UTNDiagnostikReport
Parent: DiagnosticReport
Id: utn-diagnostik-report
Description: "This is the Diagnostic Report of the UTN Patient"


* category 1..1 MS 
* category from http://hl7.org/fhir/ValueSet/diagnostic-service-sections (example)

* code 1..1 MS
* code.coding MS
* code.coding.system MS
* code.coding.code MS
* code.coding.display MS

* code.coding.system = $loinc
* code.coding.code = #20596-5
* code.coding.display = "Intensive care unit (ICU)"

* subject 1..1 
* subject only Reference(Patient)
* performer 1..1 
* performer only Reference(Practitioner)
* encounter 0..1 
* encounter only Reference(Encounter)

* effective[x] 1..1 MS
* issued 0..1 MS

* result 0..* 
* result only Reference(Observation)

* conclusion 0..1 MS

