// Practioner Providing Care for ARF Patient
Profile: ARFPractitioner
Parent: $au-practitioner
Description: "Profile of Practioner Providing Care for ARF Patient."
* identifier 1..1 MS



// Practitioner Role of Practitioner Providing Care for ARF Patient
Profile: ARFPractitionerRole
Parent: $au-practitionerrole
Description: "Profile of Practioner Role Providing Care for ARF Patient."
// * identifier only $au-medicareprovidernumber or $au-nationalprovideridentifieratorganisation
* identifier[medicareProvider] 1..1 MS
* practitioner only Reference(ARFPractitioner)
* organization only Reference(ARFOrganisation)
