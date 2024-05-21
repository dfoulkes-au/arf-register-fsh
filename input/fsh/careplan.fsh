// Careplan for patient registered with ARF/RHD
Profile: ARFCarePlan
Parent: CarePlan
Description: "Profile of Careplan for patient with ARF."
* identifier 1..* MS
* status 1..1 MS
* intent = #plan
* subject only Reference(ARFPatient)
* period 1..1 MS
* created 1..1 MS
* author only Reference(ARFPractitioner or ARFPractitionerRole)
* activity.reference only Reference(ARFMedicationRequest)