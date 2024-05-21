// Organization Example
Instance: VeryRemoteClinic
InstanceOf: ARFOrganisation
Description: "An example of a clinic providing health services to ARF patient."
* name = "Very Remote Health Clinic"
* telecom.system = #phone
* telecom.value = "+61 7 12345678"
* identifier.use = #official
* identifier.type.coding.system = $IdTypeAU
* identifier.type.coding.code = #NOI
* identifier.system = $HPIOIdentifierSystem
* identifier.value = "8003621566684455"
* address.line = "2342 Main Road"
* address.city = "Coen"
* address.state = "QLD"
* type.coding = $SCT#440655000 "Outpatient environment"

// Practitioner example
Instance: DoctorPayne
InstanceOf: ARFPractitioner
Description: "Example of Practioner Providing Care for ARF Patient"
* identifier.use = #official
* identifier.type.coding.system = $IdType
* identifier.type.coding.code = #NPI
* identifier.system = $HPIIIdentifierSystem
* identifier.value = "8003619900015717"
* name
  * given[0] = "Jane"
  * family = "Payne"
  * prefix = "Dr"
* telecom.system = #phone
* telecom.value = "+61 455 123456"


// Practitioner Role example
Instance: DoctorPayneRole1
InstanceOf: ARFPractitionerRole
Description: "Example of Practioner Providing Care for ARF Patient"
* identifier.use = #official
* identifier.type.coding.system = $IdType
* identifier.type.coding.code = #UPIN
* identifier.system = $MedicareProviderIdentifierSystem
* identifier.value = "2426621B"
* practitioner = Reference(DoctorPayne)
* organization = Reference(VeryRemoteClinic)
* telecom.system = #phone
* telecom.value = "+61 7 87654321"

// Patient Example
Instance: MikePondPatient
InstanceOf: ARFPatient
Description: "An example of a patient recorded in ARF register."
* identifier.use = #official
* identifier.type.coding.system = $IdType
* identifier.type.coding.code = #NI
* identifier.system = $IHIIdentifierSystem
* identifier.value = "8003608833357361"
* name
  * given[0] = "Mike"
  * family = "Pond"
* birthDate = "1960-01-25"
* gender = #male
* telecom.system = #phone
* telecom.value = "+61 444 123456"
* extension[indigenousStatus].valueCoding.system = $IndigStatus
* extension[indigenousStatus].valueCoding.code = #3
* extension[indigenousStatus].valueCoding.display = "Both Aboriginal and Torres Strait Islander origin"
* managingOrganization = Reference(RemoteClinic)
* generalPractitioner = Reference(DoctorPayne)

// Condition example
Instance: MikePondCondition
InstanceOf: ARFCondition
Description: "Example of ARF Condition for Patient."
* identifier.system = $ARFRegisterSystem
* identifier.value = "ARF1000123"
* code.coding.system = $SCT
* code.coding.code = #195528001
* code.coding.display = "Acute rheumatic fever" 
* code.text =  "Acute rheumatic fever"
* clinicalStatus = #active
* verificationStatus = #confirmed
* category = #problem-list-item
* severity = #moderate
* subject = Reference(MikePondPatient)
* onsetDateTime = "1995-02-02"
* recordedDate = "2023-01-30"
* recorder = Reference(DoctorPayne)
* asserter = Reference(DoctorPayne)


// Allergy example
Instance: MikePondMedicationAllergy
InstanceOf: ARFAllergy
Description: "Example of Medication Allergy for ARF Patient."
* code.coding.system = $SCT
* code.coding.code = #1907011000036106
* code.coding.display = "Carboplatin" 
* code.text =  "Carboplatin"
* clinicalStatus = #active
* verificationStatus = #confirmed
* category = #medication
* criticality = #high
* patient = Reference(MikePondPatient)
* reaction.manifestation.coding.system = $SCT
* reaction.manifestation.coding.code = #39579001
* reaction.manifestation.coding.display = "Anaphylaxis"
* reaction.severity = #severe




// Prescribed medication example
Instance: BicillinMedicationRequest
InstanceOf: ARFMedicationRequest
Description: "Example of Medication Request (prescription) of Bicillin"
* identifier.type.coding.system = $IdType
* identifier.type.coding.code = #LPN
* identifier.system = "http://veryremoteclinic.com.au/id/prescription/localsystem"
* identifier.value = "1234567890"
* status = #active
* intent = #plan
* medicationCodeableConcept.coding.system = $SCT
* medicationCodeableConcept.coding.code = #1276211000168102
* medicationCodeableConcept.coding.display = "Bicillin L-A 1.2 million units (1016.6 mg)/2.3 mL injection, 2.3 mL syringe"
* subject = Reference(MikePondPatient)
* authoredOn = "2023-10-01"
* requester = Reference(DoctorPayneRole1)
* reasonCode.text = "Secondary prophylaxis for ARF/RHD"
* dosageInstruction.text = "Bicillin injection every 28 days"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 4
* dosageInstruction.timing.repeat.periodMax = 5
* dosageInstruction.timing.repeat.periodUnit = #wk
* dispenseRequest.dispenseInterval.value = 4
* dispenseRequest.dispenseInterval.unit = "week"
* dispenseRequest.dispenseInterval.system = "http://unitsofmeasure.org"
* dispenseRequest.dispenseInterval.code = #wk
* dispenseRequest.validityPeriod.start = "2023-10-01"
* dispenseRequest.validityPeriod.end = "2024-10-01"


