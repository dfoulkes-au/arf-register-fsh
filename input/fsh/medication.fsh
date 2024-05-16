
// Medication Prescribed for ARF Patient
// TODO:
// add basedOn with ref to care plan
Profile: ARFMedicationRequest
Parent: AUBaseMedicationRequest
Description: "Profile of Medication Prescribed for ARF Patient."
* identifier 1..* MS
* status 1..1 MS 
* intent = #plan
* medicationCodeableConcept from ARFMedicationCodeVS (required)
* subject only Reference(ARFPatient)
* authoredOn 1..1 
* requester only Reference
* dosageInstruction 1..* MS

// Medication as Administered to ARF Patient
// TODO:
// add context Reference(ARFMedicationRequest)
Profile: ARFMedicationStatement
Parent: AUBaseMedicationStatement
Description: "Profile of Medication Administered to ARF Patient."
* identifier 1..* MS
* status = #completed
* basedOn only Reference(ARFMedicationRequest)
* medication[x] only CodeableConcept
* medicationCodeableConcept from ARFMedicationCodeVS (required)
* subject only Reference(ARFPatient)
* effectiveDateTime 1..1
* dateAsserted 1..1
* informationSource only Reference(AUBasePractitioner)
* dosage 1..1