
// Medication Prescribed for ARF Patient
// TODO:
// add basedOn with ref to care plan
Profile: ARFMedicationRequest
Parent: $au-medicationrequest
Description: "Profile of Medication Prescribed for ARF Patient."
* identifier 1..* MS
* status 1..1 MS 
* intent = #plan
* medicationCodeableConcept from ARFMedicationCodeVS (required)
* subject only Reference(ARFPatient)
* authoredOn 1..1 
* requester only Reference
* dosageInstruction 1..* MS
* dosageInstruction only $au-dosage



// Medication as Administered to ARF Patient
// TODO:
// add context Reference(ARFMedicationRequest)
Profile: ARFMedicationStatement
Parent: $au-medicationstatement
Description: "Profile of Medication Administered to ARF Patient."
* status = #completed
* basedOn only Reference(ARFMedicationRequest)
* medication[x] only CodeableConcept
* medicationCodeableConcept from ARFMedicationCodeVS (required)
* subject only Reference(ARFPatient)
* effectiveDateTime 1..1
* dateAsserted 1..1
* informationSource only Reference(ARFPractitioner or ARFPractitionerRole)
* dosage 1..1
* dosage only $au-dosage

// care plan for patient with ARF
/*
Instance: A
InstanceOf: ARFMedicationRequest
Description: "Example of Medication Request (prescription) of Bicillin"
* identifier.type.coding.system = $IdType
* identifier.type.coding.code = #LPN
* identifier.system = "http://veryremoteclinic.com.au/id/prescription/localsystem"
* identifier.value = "1234567890"
* status = #active
* intent = #plan
* medicationCodeableConcept.coding.system = $SCT
* medicationCodeableConcept.coding.code = #1276211000168102
* medicationCodeableConcept.coding.display = "Bicillin L-A 1.2 million units (1016.6 mg)/2.3 mL injection, 2.3 mL syringe"
* subject = Reference(MikePondPatient)
* authoredOn = "2023-10-01"
* requester = Reference(DoctorPayneRole1)
* reasonCode.text = "Secondary prophylaxis for ARF/RHD"
* dosageInstruction.text = "Bicillin injection every 28 days"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 4
* dosageInstruction.timing.repeat.periodMax = 5
* dosageInstruction.timing.repeat.periodUnit = #wk
* dispenseRequest.dispenseInterval.value = 4
* dispenseRequest.dispenseInterval.unit = "week"
* dispenseRequest.dispenseInterval.system = "http://unitsofmeasure.org"
* dispenseRequest.dispenseInterval.code = #wk
* dispenseRequest.validityPeriod.start = "2023-10-01"
* dispenseRequest.validityPeriod.end = "2024-10-01"
*/