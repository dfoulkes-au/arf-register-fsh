# Implementation Guide for ARF Register

## Background

Acute rheumatic fever (ARF) results from the body’s autoimmune response following an infection with Group A Streptococcus bacterium (Streptococcus pyogenes). Rheumatic heart disease (RHD) refers to the long-term cardiac damage caused by either a single severe episode or multiple recurrent episodes of ARF.  The development of ARF occurs approximately two weeks after S. pyogenes infection . The clinical manifestations and symptoms of ARF can be severe and are described in the Revised Jones Criteria on which the data modelling below is based.

Whilst ARF is relatively rare in developed countries,  reported incidence rates are high in populations in rural/remote Northern Australia  (NQ 155/100,000 in children aged 5 to 14 and NT380/100,000 children).  

The cornerstone of RHD prevention and management is the prevention of rheumatic fever recurrence by means of regular 3-4 weekly intramuscular injections of benzathine penicillin G (BPG or Bicillin) administered over a prolonged period (10 years or more).  However, failure to maintain regularity of this treatment places the patient at risk of accumulative damage to heart valves, and can lead to heart failure and/or stroke.

Studies have shown that in Northern Queensland, adherence to recommended frequency of such injection has been very low.  There are a number of contributing factors to this,  not least of which is the degree of discomfort caused to the patient in administering this injection. However the stark reality is that many/most patients with diagnosed ARF in NQ are at significant risk of developing RHD:
> Overall, adherence to secondary prophylaxis for ARF/RHD in Far North Queensland over the study period was insufficient to provide prophylaxis against recurrences of ARF per current guidelines. The vast majority of injections were not delivered within the recommended 28‐day interval and a significant number were not even administered within 35 days.
<https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8048926/>

An  effective national or regional ARF/RHD register that tracks a patients ongoing compliance with medication is a key factor and an important tool in improving adherence to the regular treatment of ARF/RHD, and thereby maintianing health of this population.   To be effective,  the ARF/RHD register must be highly interoperable, enabling updates from different EHR systems whilst minimising manual data entry steps of busy clinicians, and providing automated reminders and notifications to prompt and alert where patients are at risk due to non-compliance.

This Implementation Guide describes a set of FHIR profiles for interoperability/data exchange between EHR systems and a central ARF national or state register to support the workflows required to:
* register patients
* create care and medications plans
* administer medications 
* and query patient compliance status

Accompanying  documents outline a suggested architecture and design for the register and discuss alternate flat file API's for EHR's that are not FHIR compliant. 

## Modelling Approach

The FHIR resources in this implementation guide are based on AU Base Implementation Guide in order to apply this directly in Northern Australia contexts.  Due care is being taken to enable this to readily migrate to AU Core once this becomes stable.

It is also intended to create a generic ARF Implementation Guide for use in international contexts.  This will be based on generic FHIR v5 in order to keep the modelling reusable across different national contexts.

## Workflows

The models support four primary workflows:

### Register Patient

This workflow involves registering a new patient for ongoing monitoring by the register.   This is achieved by posting a FHIR bundle including Patient, Condition and Allergy resources.

### Create Care & Medication Plan

This workflow takes place for a previously registered patient,  and is used to record the intended care strategy and medications for the specified patient.    This workflow will also be used to create updated plan/medication strategies after a prior plan has expired,  or when changes are neccessary.  This workflow involves creating a Careplan and a Medication Resource outlining frequency and dosage of medications and specifying which Organization(s) and Practitioners will be responsible for the patient care.

### Record Medication Administration

This workflow takes place when a specific instance of the medication request has been administered to the patient.

### Query Status of the Patient

This workflow may take place at any time,  and will return the current status of the patient:   Not Registered | Registered | Deceased | Care Plan Created | Care Plan Expired | Care Plan on Track | Overdue | Loss of Contact.    This query will also indicate the most recent administration of medication,  Patient contact details,  and Practitioner/Organization.

### Maintenance Actions

In addition to the workflows above,  a number of routine workflows are supported to update/maintain patient, condition, careplan etc.

**Acknowledgements**

[FHIR Shorthand FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/overview.html)
[FHIR Australia AU FHIR Base Implementation Guide](https://build.fhir.org/ig/hl7au/au-fhir-base/index.html)
[Te Whatu Ora Shared Care FHIR API](https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/index.html)
