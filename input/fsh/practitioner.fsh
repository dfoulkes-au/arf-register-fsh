// Practioner Providing Care for ARF Patient
Profile: ARFPractitioner
Parent: AUBasePractitioner
Description: "Profile of Practioner Providing Care for ARF Patient."
* identifier 1..* MS


// Practitioner Role of Practitioner Providing Care for ARF Patient
Profile: ARFPractitionerRole
Parent: AUBasePractitionerRole
Description: "Profile of Practioner Role Providing Care for ARF Patient."
* identifier 1..* MS
* practitioner only Reference(ARFPractitioner)
* organization only Reference(ARFOrganisation)
