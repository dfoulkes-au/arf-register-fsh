// Condition registered with ARF/RHD
// TODO:
// identifier - define ARFRegisterIdentifier unique register id
Profile: ARFCondition
Parent: AUBaseCondition
Description: "Profile of ARF Condition."
* identifier 1..* MS
* code from ARFDiagnosisCodeVS (required)
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS
* category 1..* MS
* severity 1..1 MS
* subject only Reference(ARFPatient)
