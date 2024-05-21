// Careplan for patient registered with ARF/RHD
Profile: ARFCarePlan
Parent: CarePlan
Description: "Profile of Careplan for patient with ARF."
* identifier 1..* MS
* status 1..1 MS
* intent = #plan
* subject only Reference(Patient)
* period 1..1 MS
* created 1..1 MS
* author only Reference(Practitioner or PractitionerRole)
* activity.reference only Reference(MedicationRequest)