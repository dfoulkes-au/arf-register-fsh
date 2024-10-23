// Patient registered with ARF/RHD
// identifier - require AUIHI or AUMedicareCardNumber or AUDVANumber with optional other identifiers
// name - check same constraints as for AU Core
// address - ?? should this be required ??
// deceased[x] - ?? should this be deceasedBoolean ??
// genderIdentity and individualPronouns as agreed for AU Core
Profile: ARFPatient
Parent: $au-patient
Description: "Profile of Patient with ARF."
* identifier[ihi] 1..1 MS
* identifier[medicare] 0..1 MS
* identifier[dva] 0..1 MS
* name 1..* MS
* birthDate 1..1 MS
* gender 1..1 MS
* telecom 1..* MS
* extension[indigenousStatus] 0..1 MS
* deceased[x] 0..1 MS
* generalPractitioner 1..* MS
* contact 0..*
* contact.relationship 1..1
* contact.name 1..1

