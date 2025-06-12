Instance: Example-UTN-DiagnosticReport
InstanceOf: UTNDiagnostikReport
Usage: #example
Description: "Example instance of UTN Diagnostic Report"

* status = #final
* category.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0074"
* category.coding.code = #ICU
* category.coding.display = "Bedside ICU Monitoring"

* code.coding.system = $loinc
* code.coding.code = #20596-5
* code.coding.display = "Intensive care unit (ICU)"


* subject = Reference(Example-UTN-Patient)
* performer = Reference(Example-UTNPractitioner)


* effectiveDateTime = "2025-03-19T10:30:00Z"
* issued = "2025-03-19T11:00:00Z"

* result[0] = Reference(Example-UTNAtemfrequenz)
* result[+] = Reference(Example-UTNHerzfrequenz)
* result[+] = Reference(Example-UTNKoerpergewicht)
* result[+] = Reference(Example-UTNKoerpertemperatur)
* result[+] = Reference(Example-UTNKreatinin)
* result[+] = Reference(Example-UTN-Arterieller-Blutdruck)


* conclusion = "No abnormal findings detected in ICU Monitoring."