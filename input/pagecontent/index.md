## Implementation Guide for ARF Register

### Background

Acute rheumatic fever (ARF) results from the body’s autoimmune response following an infection with Group A Streptococcus bacterium (Streptococcus pyogenes). Rheumatic heart disease (RHD) refers to the long-term cardiac damage caused by either a single severe episode or multiple recurrent episodes of ARF.  The development of ARF occurs approximately two weeks after S. pyogenes infection . The clinical manifestations and symptoms of ARF can be severe and are described in the Revised Jones Criteria[^1].

ARF and RHD are relatively rare in developed countries, being closely associated with social and environmental factors such as poverty, overcrowding, and reduced access to health care[^2]. However, incidence rates remain very high in populations in rural/remote Northern Australia.

Whilst primary prevention requires addressing the underlying socio-economic causes,  secondary prevention of rheumatic fever recurrence relies on correct diagnosis and regular  3-4 weekly intramuscular injections of benzathine penicillin G (BPG or Bicillin) administered over a prolonged period (ofthen 10 years or up to age 21).  Failure to maintain regularity of this treatment places the patient at risk of accumulative damage to heart valves, and can lead to heart failure and/or stroke[^3].

Studies have shown that in Northern Queensland, adherence to recommended frequency of such injections has been low.  There are a number of contributing factors to this,  not least of which is the degree of discomfort caused to the patient in administering this injection. However the stark reality is that many patients with diagnosed ARF are at significant risk of developing RHD:
> Overall, adherence to secondary prophylaxis for ARF/RHD in Far North Queensland over the study period was insufficient to provide prophylaxis against recurrences of ARF per current guidelines. The vast majority of injections were not delivered within the recommended 28‐day interval and a significant number were not even administered within 35 days.[^4]

An  effective national or regional ARF/RHD register that tracks a patients ongoing compliance with medication is a key factor and an important tool in improving adherence to the regular treatment of ARF/RHD, and thereby maintaining health of this population.   To be effective,  the ARF/RHD register must be highly interoperable, enabling updates from different EHR systems whilst minimising manual data entry steps of busy clinicians, and providing automated reminders and notifications to prompt and alert where patients are at risk due to non-compliance.

### Interoperability & Architecture

This Implementation Guide describes a set of FHIR profiles for interoperability/data exchange between EHR systems and a central ARF national or state register.

Companion documents outline a suggested system/software architecture and design for a FHIR based ARF Register and discuss aligned flat file based API's for EHR's that are not able to support FHIR compliance.

The FHIR resource profiles described in this implementation guide are derived from FHIR AU Core and thus are contextualised for Australia. It is also intended to create a generic ARF Implementation Guide for use in international contexts.  This will be based on generic FHIR v5 in order to keep the modelling reusable across different national contexts.

### Supported Workflows

The profiles outlines in this implementation guide support the following primary workflows that support the various data exchange steps required for the monitoring and managing an ARF patient.  These workflows are:

#### Patient Registration

This occurs after a patient has received a diagnosis (or suspected diagnosis),  and involves registering a patient for the first time on the registry.   Typically this would be achieved by posting a FHIR bundle containing and instance of each of the following resources:

* [ARF Patient](StructureDefinition-ARFPatient.html) - patient demographic information  [Example](https://fhir-arf-register.nardhc.org/Patient-MikePondPatient.html) [JSON](https://fhir-arf-register.nardhc.org/Patient-MikePondPatient.json.html)
* [ARF Condition](StructureDefinition-ARFCondition.html) - diagnosis and severity of ARF/RHD condition [Example](https://fhir-arf-register.nardhc.org/Condition-MikePondCondition.html) [JSON](https://fhir-arf-register.nardhc.org/Condition-MikePondCondition.json.html)
* [ARF Allergy](StructureDefinition-ARFAllergy.html) - any known medication allergies [Example](https://fhir-arf-register.nardhc.org/AllergyIntolerance-MikePondMedicationAllergy.html) [JSON](https://fhir-arf-register.nardhc.org/AllergyIntolerance-MikePondMedicationAllergy.json.html)

#### Create CarePlan and Prescribe Medication

This workflow may take place for a newly registered patient, or it be used to record a careplan/prescription for a subsequent or updated care episode.  This process creates (or updates) a Care Plan and a Medication Request resouce (see profiles below) describing frequency and dosage of medications and specifying which Organization(s) and Practitioners will be responsible for the patient care.  Where new information is available (eg. updated phone numbers or disease severity), this process may also optionally be used to update the Patient, Condition or Allergy resources created by the Patient Registration workflow.

* [ARF CarePlan](StructureDefinition-ARFCarePlan.html) - care plan outline and practitioners/providers responsible to deliver the care [Example](https://fhir-arf-register.nardhc.org/CarePlan-MikePondCarePlan.html) [JSON](https://fhir-arf-register.nardhc.org/CarePlan-MikePondCarePlan.json.html)
* [ARF MedicationRequest](StructureDefinition-ARFMedicationRequest.html) - prescribed frequency and dosage of medication [Example](https://fhir-arf-register.nardhc.org/MedicationRequest-BicillinMedicationRequest.html) [JSON](https://fhir-arf-register.nardhc.org/MedicationRequest-BicillinMedicationRequest.json.html)
* [ARF Organisation](https://fhir-arf-register.nardhc.org/StructureDefinition-ARFOrganisation.html) - health provider organisation responsible for CarePlan [Example](https://fhir-arf-register.nardhc.org/Organization-VeryRemoteClinic.html) [JSON](https://fhir-arf-register.nardhc.org/Organization-VeryRemoteClinic.json.html)
* [ARF Practitioner](https://fhir-arf-register.nardhc.org/StructureDefinition-ARFPractitioner.html) - practioner providing care for ARF patient [Example](https://fhir-arf-register.nardhc.org/Practitioner-DoctorPayne.html) [JSON](https://fhir-arf-register.nardhc.org/Practitioner-DoctorPayne.json.html)
* [ARF PractionerRole](https://fhir-arf-register.nardhc.org/StructureDefinition-ARFPractitionerRole.html) - practioner (medicare provider) role [Example](https://fhir-arf-register.nardhc.org/PractitionerRole-DoctorPayneRole1.html) [JSON](https://fhir-arf-register.nardhc.org/PractitionerRole-DoctorPayneRole1.json.html)

#### Record Medication Administration

This workflow takes place when a specific instance of the medication request has been administered to the patient.  It creates a single Medication Statement resource recording the date, provider, dosage, route etc. of the medication administration.   This workflow may also optionally update the CarePlan with a different practitioner/provider and or the patient contact details.

* [ARF MedicationStatement](StructureDefinition-ARFMedicationStatement.html) - administered time, dosage, route of medication [Example](https://fhir-arf-register.nardhc.org/MedicationStatement-BicillinMedicationStatement.html) [JSON](https://fhir-arf-register.nardhc.org/MedicationStatement-BicillinMedicationStatement.json.html)

#### Query Status of the Patient

This workflow may take place at any time,  and will return the current information about a specific patient:

* Status (eg. Not Registered, Registered, Deceased, Care Plan Created, Care Plan Expired, Care Plan on Track, Overdue, Loss of Contact)
* Date and details of most recent administration of Bicillin
* Patient contact details
* GP/Pracitioner detail
* Organization

### Acknowledgements
* [FHIR Shorthand FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/overview.html)
* [FHIR Australia AU FHIR Base Implementation Guide](https://build.fhir.org/ig/hl7au/au-fhir-base/index.html)
* [Te Whatu Ora Shared Care FHIR API](https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/index.html)

### References
[^1]: Dianne Sika-Paotonu, Andrea Beaton, Aparna Raghu, Andrew Steer, and Jonathan Carapetis. [Acute Rheumatic Fever and Rheumatic Heart Disease](https://www.ncbi.nlm.nih.gov/books/NBK425394/)
[^2]: Austalian Institute of Health and Welfare.  [Acute rheumatic fever and rheumatic heart disease](https://www.aihw.gov.au/reports/heart-stroke-vascular-diseases/hsvd-facts/contents/all-heart-stroke-and-vascular-disease/arf-and-rhd)
[^3]: Queensland Government.  [Rheumatic heart disease](https://www.qld.gov.au/health/condition/infections-and-parasites/bacterial-infections/rheumatic-heart-disease)
[^4]: Priya M Kevat, Ronny Gunnarsson, Benjamin M Reeves, and Alan R Ruben [Adherence rates and risk factors for suboptimal adherence to secondary prophylaxis for rheumatic fever](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8048926/)

