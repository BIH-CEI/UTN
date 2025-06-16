Instance: Example-UTN-Procedure
InstanceOf: UTN-Procedure
Title: "Ultrasound Procedure with Stone Outcome"
Description: "An example Procedure resource conforming to the MII profile where sonography reveals a stone."
Usage: #example

* status = #completed
* code = $sct#16310003 "Ultrasonography"
* subject = Reference(Example-UTN-Patient-2)
* encounter = Reference(Example-UTN-Encounter-PRtoPR)
* performedDateTime = "2025-01-14T16:49:00+01:00"
* outcome = $sct#31054009 "Ureteric Stone"