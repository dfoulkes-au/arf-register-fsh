// Practioner Providing Care for ARF Patient
Profile: ARFOrganisation
Parent: AUBaseOrganisation
Description: "Profile of Organization Providing Care for ARF Patient."
// slicing of identifier
* identifier ^slicing.discriminator.type = #value 
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd

* identifier contains AUHPIO 1..1
* identifier[AUHPIO].system = "http://ns.electronichealth.net.au/id/hi/hpio/1.0" (exactly)
* name 1..1 MS
