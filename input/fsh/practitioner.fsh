// Practioner Providing Care for ARF Patient
Profile: ARFPractitioner
Parent: AUBasePractitioner
Description: "Profile of Practioner Providing Care for ARF Patient."
* identifier only $au-hpii or $au-ahpraregistrationnumber 



// Practitioner Role of Practitioner Providing Care for ARF Patient
Profile: ARFPractitionerRole
Parent: $au-practitionerrole
Description: "Profile of Practioner Role Providing Care for ARF Patient."
// * identifier only $au-medicareprovidernumber or $au-nationalprovideridentifieratorganisation
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^definition = "Business Identifiers that are specific to a role/location."
* identifier contains medicareProvider 0..1 MS
* identifier[medicareProvider] only $au-medicareprovidernumber
* practitioner only Reference(ARFPractitioner)
* organization only Reference(ARFOrganisation)
