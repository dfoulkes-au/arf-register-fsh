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
Instance: JamesPondPatient
InstanceOf: ARFPatient
Description: "An example of a patient recorded in ARF register."
* identifier.use = #official
* identifier.type.coding.system = $IdType
* identifier.type.coding.code = #NI
* identifier.system = $IHIIdentifierSystem
* identifier.value = "8003608833357361"
* name
  * given[0] = "James"
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
Instance: JamesPondCondition
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
* subject = Reference(JamesPondPatient)
* onsetDateTime = "1995-02-02"
* recordedDate = "2023-01-30"
* recorder = Reference(DoctorPayne)
* asserter = Reference(DoctorPayne)
