# Implementation Guide for ARF Register

## Background

Acute rheumatic fever (ARF) results from the body’s autoimmune response to a throat infection caused by Streptococcus pyogenes, also known as the group A Streptococcus bacteria. Rheumatic heart disease (RHD) refers to the long-term cardiac damage caused by either a single severe episode or multiple recurrent episodes of ARF.  The development of ARF occurs approximately two weeks after S. pyogenes infection . The clinical manifestations and symptoms of ARF can be severe and are described in the Revised Jones Criteria on which the data modelling below is based.

Whilst ARF is relatively rare in wealth countries,  reported ARF incidence rates are high in populations in rural/remote Northern Australia  (NQ 155/100,000 in children aged 5 to 14 and NT380/100,000 children).  

Management of ARF is crucial for preventing development of Rheumatic Heart Disease in a patient.  This is primarily achieved by regular injections of Benzathine (Bicillin),  but for various reasons this can be difficult to maintain and track.   For this reason,  a national or regional ARF/RHD register that tracks ongoing compliance with medication is an important tool in controlling this disease.  

This Implementation Guide outlines the FHIR profiles to be used in an ARF national or state register to support management of ARF.

Other content goes here...

## Modelling Approach

The FHIR resources in this implementation guide are based on AU Base Implementation Guide in order to apply this directly in Northern Australia contexts.  Due care is being taken to enable this to readily migrate to AU Core once this becomes stable.

It is also intended to create a generic ARF IG that will be based on generic FHIR v5 in order to keep the modelling reusable across international contexts.

The following resource profiles are described in this IG:
(diagram of resources and their relationships)

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
[Te Whatu Ora Shared Care FHIR API](https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/index.html)
