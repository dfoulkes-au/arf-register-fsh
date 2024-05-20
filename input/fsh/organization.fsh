// Practioner Providing Care for ARF Patient
Profile: ARFOrganisation
Parent: AUBaseOrganisation
Description: "Profile of Organization Providing Care for ARF Patient."
// slicing of identifier
* identifier ^slicing.discriminator.type = #profile 
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains 
   AUHPIO 1..1
* identifier[AUHPIO].system = $HPIOIdentifierSystem
* name 1..1 MS
* address only AustralianAddress