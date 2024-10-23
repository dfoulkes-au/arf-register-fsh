// Medication Allergies for a registered ARF/RHD Patient
// TODO:
Profile: ARFAllergy
Parent: $au-allergyintolerance
Description: "Profile of Allergy/Intolerance for ARF Patient. Only medication allergies are of interest in an ARF Register"
* code 1..1 MS
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* criticality 0..1 MS
* patient only Reference(ARFPatient)
