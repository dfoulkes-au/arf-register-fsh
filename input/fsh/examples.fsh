// Organization Example
Instance: VeryRemoteClinic
InstanceOf: ARFOrganisation
Description: "An example of a clinic providing health services to ARF patient."
* name = "Very Remote Health Clinic"
* telecom.system = #phone
* telecom.value = "+61 7 12345678"
* identifier.use = #official
* identifier.type.coding.system = $au-id-type-cs
* identifier.type.coding.code = #NOI
* identifier.system = $id-hpio-system
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
* identifier.type.coding.system = $id-type-cs
* identifier.type.coding.code = #NPI
* identifier.system = $id-hpii-system
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
* identifier.type.coding.system = $au-id-type-cs
* identifier.type.coding.code = #UPIN
* identifier.system = $id-medicare-provider-system
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
* identifier.type.coding.system = $id-type-cs
* identifier.type.coding.code = #NI
* identifier.system = $id-ihi-system
* identifier.value = "8003608833357361"
* name
  * given[0] = "Mike"
  * family = "Pond"
* birthDate = "1960-01-25"
* gender = #male
* telecom.system = #phone
* telecom.value = "+61 444 123456"
* telecom.value = "+61 444 123456"
* extension.url = $au-indigenous-status
* extension.valueCoding = $au-indigenous-status-cs#3 "Both Aboriginal and Torres Strait Islander origin"
* managingOrganization = Reference(VeryRemoteClinic)
* generalPractitioner = Reference(DoctorPayne)

// Condition example
Instance: MikePondCondition
InstanceOf: ARFCondition
Description: "Example of ARF Condition for Patient."
* identifier.system = $ARF-register-system
* identifier.value = "ARF1000123"
* code.coding.system = $SCT
* code.coding.code = #195528001
* code.coding.display = "Acute rheumatic fever" 
* code.text =  "Acute rheumatic fever"
* clinicalStatus = $condition-clinical-cs#active "Active"
* verificationStatus = $condition-ver-status-cs#confirmed "Confirmed"
* category = $condition-category-cs#problem-list-item "Problem List Item"
* severity = $SCT#6736007 "Moderate severity"
* subject = Reference(MikePondPatient)
* onsetDateTime = "1995-02-02"
* recordedDate = "2023-01-30"
* recorder = Reference(DoctorPayne)
* asserter = Reference(DoctorPayne)


// Allergy example
Instance: MikePondMedicationAllergy
InstanceOf: ARFAllergy
Description: "Example of Medication Allergy for ARF Patient."
* code.coding = $SCT#293779007 "Carboplatin allergy" 
// * code.coding.version = "20240201"
* code.text =  "Carboplatin"
* clinicalStatus = $allergy-clinical-cs#active "Active"
* verificationStatus = $allergy-verification-cs#confirmed "Confirmed"
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
* identifier.type.coding.system = "http://terminology.hl7.org.au/CodeSystem/v2-0203"
* identifier.type.coding.code = #LPN
* identifier.system = "http://veryremoteclinic.com.au/id/prescription/localsystem"
* identifier.value = "1234567890"
* identifier.assigner = Reference(VeryRemoteClinic)
* status = #active
* intent = #plan
* medicationCodeableConcept.coding = $SCT#1276211000168102 "Bicillin L-A 1.2 million units (1016.6 mg)/2.3 mL injection, 2.3 mL syringe"
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
* dispenseRequest.dispenseInterval.system = $UCUM
* dispenseRequest.dispenseInterval.code = #wk
* dispenseRequest.validityPeriod.start = "2023-10-01"
* dispenseRequest.validityPeriod.end = "2024-10-01"

// Administered medication example
Instance: BicillinMedicationStatement
InstanceOf: ARFMedicationStatement
Description: "Example of Medication statement of administered dose of Bicillin"
* status = #completed
* basedOn = Reference(BicillinMedicationRequest)
* medicationCodeableConcept.coding = $SCT#1276211000168102 "Bicillin L-A 1.2 million units (1016.6 mg)/2.3 mL injection, 2.3 mL syringe"
* subject = Reference(MikePondPatient)
* effectiveDateTime = "2024-05-01"
* dateAsserted = "2024-05-01"
* informationSource = Reference(DoctorPayne)
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 4
* dosage.timing.repeat.periodMax = 5
* dosage.timing.repeat.periodUnit = #wk
* dosage.route.coding = $SCT#78421000 "Intramuscular route"
* dosage.doseAndRate.doseQuantity.value = 1016.6
* dosage.doseAndRate.doseQuantity.unit = "mg"
* dosage.doseAndRate.doseQuantity.system = $UCUM
* dosage.doseAndRate.doseQuantity.code = #mg
* dosage.patientInstruction = "Appointment for next Bicillin injection 2pm on 27-05-2024.  Please call if you are unable to attend."
* dosage.text = "Mike Pond booked appointment for 2pm 27-05-2024"

// Example Careplan for patient with RHD
Instance: MikePondCarePlan
InstanceOf: ARFCarePlan
Description: "Example of care plan for patient with ARF"
* identifier.type.coding.system = $id-type-cs
* identifier.type.coding.code = #LR
* identifier.system = "http://arfregister.example.au/id/registerid/localsystem"
* identifier.value = "987654321"
* title = "Rheumatic fever care plan for patient Mike Pond"
* status = #active
* intent = #plan
* subject = Reference(MikePondPatient)
* period.start = "2023-10-01"
* period.end = "2024-10-01"
* created = "2023-10-01"
* author = Reference(DoctorPayneRole1)
* activity.reference = Reference(BicillinMedicationRequest)
