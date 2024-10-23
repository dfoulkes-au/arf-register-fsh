// Externally Published Code Systems
Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org
Alias: $RXN = http://www.nlm.nih.gov/research/umls/rxnorm	
Alias: $NCI = http://ncimeta.nci.nih.gov
Alias: $CPT = http://www.ama-assn.org/go/cpt
Alias: $NDFRT = http://hl7.org/fhir/ndfrt
Alias: $UNII = http://fdasis.nlm.nih.gov
Alias: $NDC = http://hl7.org/fhir/sid/ndc
Alias: $CVX = http://hl7.org/fhir/sid/cvx
Alias: $ISOCOUNTRY = urn:iso:std:iso:3166
Alias: $DSM5 = http://hl7.org/fhir/sid/dsm5
Alias: $NUBC = http://www.nubc.org/patient-discharge
Alias: $RADLEX = http://www.radlex.org
Alias: $DICOM = http://dicom.nema.org/resources/ontology/DCM
Alias: $ICD10CM = http://hl7.org/fhir/sid/icd-10-cm
Alias: $ICD10PCS = http://www.cms.gov/Medicare/Coding/ICD10
Alias: $ICDO3 = http://terminology.hl7.org/CodeSystem/icd-o-3
Alias: $UMLS = http://terminology.hl7.org/CodeSystem/umls

// Code systems for specific elements
Alias: $id-type-cs = http://terminology.hl7.org/CodeSystem/v2-0203

Alias: $obs-status-cs = http://hl7.org/fhir/observation-status
Alias: $obs-cat-cs = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $obs-interp-cs = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $obs-refrange-meaning-cs = http://terminology.hl7.org/CodeSystem/referencerange-meaning

Alias: $medreq-status-cs = http://hl7.org/fhir/CodeSystem/medicationrequest-status 
Alias: $medreq-intent-cs = http://hl7.org/fhir/CodeSystem/medicationrequest-intent
Alias: $medreq-cat-cs = 	http://terminology.hl7.org/CodeSystem/medicationrequest-category

Alias: $allergy-clinical-cs = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergy-verification-cs = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

Alias: $condition-clinical-cs = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status-cs = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category-cs = http://terminology.hl7.org/CodeSystem/condition-category

Alias: $specimen-type-cs = http://terminology.hl7.org/CodeSystem/v2-0487

// AU specific codesystems
Alias: $au-id-type-cs = http://terminology.hl7.org.au/CodeSystem/v2-0203
Alias: $au-indigenous-status-cs = https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1

// au valuesets

Alias: $au-organisation-role-type-1 = https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1
Alias: $au-contact-purpose = http://terminology.hl7.org.au/ValueSet/contact-purpose
Alias: $au-contact-rel-type = https://healthterminologies.gov.au/fhir/ValueSet/contact-relationship-type-3
Alias: $au-languages = https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2

// ----------- SYSTEM URL ALIASES --------------------------------------------------
// Identifier System urls
Alias: $id-hpio-system = http://ns.electronichealth.net.au/id/hi/hpio/1.0
Alias: $id-paio-system = http://ns.electronichealth.net.au/id/pcehr/paio/1.0
Alias: $id-hpii-system = http://ns.electronichealth.net.au/id/hi/hpii/1.0
Alias: $id-medicare-provider-system = http://ns.electronichealth.net.au/id/medicare-provider-number
Alias: $id-ihi-system = http://ns.electronichealth.net.au/id/hi/ihi/1.0

// Example Local system values
Alias:  $ARF-register-system = http://arf-register.nardhc.org/system/registration-id


// ---------- STRUCTURE DEFINITION ALIASES ---------------------------
// General Structure Definitions
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $patient-mothersMaidenName = http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName
Alias: $patient-interpreterRequired = http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired
Alias: $patient-birthTime = http://hl7.org/fhir/StructureDefinition/patient-birthTime

// AU Structure Definitions
Alias: $au-patient = http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient
Alias: $au-practitioner = http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitioner
Alias: $au-practitionerrole = http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitionerrole
Alias: $au-allergyintolerance = http://hl7.org.au/fhir/core/StructureDefinition/au-core-allergyintolerance
Alias: $au-condition = http://hl7.org.au/fhir/core/StructureDefinition/au-core-condition
Alias: $au-medicationrequest = http://hl7.org.au/fhir/core/StructureDefinition/au-core-medicationrequest
Alias: $au-medicationstatement = http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement
Alias: $au-organization = http://hl7.org.au/fhir/core/StructureDefinition/au-core-organization
Alias: $au-address = http://hl7.org.au/fhir/StructureDefinition/au-address
Alias: $au-indigenous-status = http://hl7.org.au/fhir/StructureDefinition/indigenous-status
Alias: $au-veteran-status = http://hl7.org.au/fhir/StructureDefinition/veteran-status
Alias: $au-closing-the-gap-registration = http://hl7.org.au/fhir/StructureDefinition/closing-the-gap-registration
Alias: $au-date-of-arrival = http://hl7.org.au/fhir/StructureDefinition/date-of-arrival
Alias: $au-date-accuracy-indicator = http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator
Alias: $au-dosage = http://hl7.org.au/fhir/StructureDefinition/au-dosage
Alias: $au-hpii = http://hl7.org.au/fhir/StructureDefinition/au-hpii
Alias: $au-pbsprescribernumber = http://hl7.org.au/fhir/StructureDefinition/au-pbsprescribernumber
Alias: $au-careagencyemployeeidentifier = http://hl7.org.au/fhir/StructureDefinition/au-careagencyemployeeidentifier
Alias: $au-ahpraregistrationnumber = http://hl7.org.au/fhir/StructureDefinition/au-ahpraregistrationnumber
Alias: $au-medicareprovidernumber = http://hl7.org.au/fhir/StructureDefinition/au-medicareprovidernumber
Alias: $au-nationalprovideridentifieratorganisation = http://hl7.org.au/fhir/StructureDefinition/au-nationalprovideridentifieratorganisation
Alias: $au-ihi = http://hl7.org.au/fhir/StructureDefinition/au-ihi
Alias: $au-dvanumber = http://hl7.org.au/fhir/StructureDefinition/au-dvanumber
Alias: $au-medicarecardnumber = http://hl7.org.au/fhir/StructureDefinition/au-medicarecardnumber
Alias: $au-healthcarecardnumber = http://hl7.org.au/fhir/StructureDefinition/au-healthcarecardnumber
Alias: $au-pensionerconcessioncardnumber = http://hl7.org.au/fhir/StructureDefinition/au-pensionerconcessioncardnumber
Alias: $au-cwlthseniorshealthcardnumber = http://hl7.org.au/fhir/StructureDefinition/au-cwlthseniorshealthcardnumber
Alias: $au-medicalrecordnumber = http://hl7.org.au/fhir/StructureDefinition/au-medicalrecordnumber
Alias: $au-insurancemembernumber = http://hl7.org.au/fhir/StructureDefinition/au-insurancemembernumber
Alias: $au-hpio = http://hl7.org.au/fhir/StructureDefinition/au-hpio
Alias: $au-paioidentifier = http://hl7.org.au/fhir/StructureDefinition/au-paioidentifier
Alias: $au-cspregistrationnumber = http://hl7.org.au/fhir/StructureDefinition/au-cspregistrationnumber
Alias: $au-australianbusinessnumber = http://hl7.org.au/fhir/StructureDefinition/au-australianbusinessnumber
Alias: $au-australiancompanynumber = http://hl7.org.au/fhir/StructureDefinition/au-australiancompanynumber
Alias: $au-australianregistredbodynumber = http://hl7.org.au/fhir/StructureDefinition/au-australianregistredbodynumber
Alias: $au-nataaccreditationnumber = http://hl7.org.au/fhir/StructureDefinition/au-nataaccreditationnumber
Alias: $au-pharmacyapprovalnumber = http://hl7.org.au/fhir/StructureDefinition/au-pharmacyapprovalnumber

