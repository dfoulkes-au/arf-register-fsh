// Practioner Providing Care for ARF Patient
Profile: ARFPractitioner
Parent: AUBasePractitioner
Description: "Profile of Practioner Providing Care for ARF Patient."
// slicing of identifier
* identifier ^slicing.discriminator.type = #profile 
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains 
   AUHPII 1..1
* identifier[AUHPII].system = $HPIIIdentifierSystem
* identifier[AUHPII].value MS

// * identifier only Identifier or $au-hpio


// Practitioner Role of Practitioner Providing Care for ARF Patient
Profile: ARFPractitionerRole
Parent: AUBasePractitionerRole
Description: "Profile of Practioner Role Providing Care for ARF Patient."
* identifier 1..* MS
* practitioner only Reference(ARFPractitioner)
* organization only Reference(ARFOrganisation)
