<a id="readme-top"></a>
<div align="center">
  <a href="https://github.com/dfoulkes-au/arf-register-fsh"><img src="docimg/logo.ico" alt="ARF Logo" width="80" height="80"></a>
  <h2>Acute Rheumatic Fever FHIR IG - Code Package</h2>
</div>


## Overview
This project contains the FHIR Shorthand (FSH) code for creating an Implementation Guide (IG) for the Diagnosis and Management of Acute Rheumatic Fever (ARF).  It is intended to form the basis for sharing information between multiple health providers - typically using a central national ARF registry.  The data specification could also be used directly for a FHIR based ARF Register.

[Here](https://fhir-arf-register.nardhc.org/) is a deployed example of this IG.

The code in this project describes a downstream IG based on FHIR AU Core and AU Base specifications (i.e. for the Australian context).  The primary use of this project is expected to be for those who wish to extend this specification and/or to adapt it for a different national context (eg. US Core).   To create the IG from the code included in this project,  you will need to compile the code using Sushi as described below.  

If you simply wish to deploy this IG without modification,  go to [Acute Rheumatic Fever FHIR IG - Deployment Package](https://github.com/dfoulkes-au/arf-register-output) where you can access the html/js files required.

If you like this, don't forget to give the project a star! Thanks again!

## Background
Acute rheumatic fever (ARF) results from the body’s autoimmune response following an infection with Group A Streptococcus bacterium (Streptococcus pyogenes). Rheumatic heart disease (RHD) refers to the long-term cardiac damage caused by either a single severe episode or multiple recurrent episodes of ARF.  The development of ARF occurs approximately two weeks after S. pyogenes infection . The clinical manifestations and symptoms of ARF can be severe and are described in the Revised Jones Criteria[^1].

ARF and RHD are relatively rare in developed countries, being closely associated with social and environmental factors such as poverty, overcrowding, and reduced access to health care[^2]. However, incidence rates remain very high in populations in rural/remote Northern Australia.

Whilst primary prevention requires addressing the underlying socio-economic causes,  secondary prevention of rheumatic fever recurrence relies on correct diagnosis and regular  3-4 weekly intramuscular injections of benzathine penicillin G (BPG or Bicillin) administered over a prolonged period (ofthen 10 years or up to age 21).  Failure to maintain regularity of this treatment places the patient at risk of accumulative damage to heart valves, and can lead to heart failure and/or stroke[^3].

Studies have shown that in Northern Queensland, adherence to recommended frequency of such injections has been low.  There are a number of contributing factors to this,  not least of which is the degree of discomfort caused to the patient in administering this injection. However the stark reality is that many patients with diagnosed ARF are at significant risk of developing RHD:
> Overall, adherence to secondary prophylaxis for ARF/RHD in Far North Queensland over the study period was insufficient to provide prophylaxis against recurrences of ARF per current guidelines. The vast majority of injections were not delivered within the recommended 28‐day interval and a significant number were not even administered within 35 days.[^4]

An  effective national or regional ARF/RHD register that tracks a patients ongoing compliance with medication is a key factor and an important tool in improving adherence to the regular treatment of ARF/RHD, and thereby maintaining health of this population.   To be effective,  the ARF/RHD register must be highly interoperable, enabling updates from different EHR systems whilst minimising manual data entry steps of busy clinicians, and providing automated reminders and notifications to prompt and alert where patients are at risk due to non-compliance.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

To configure your system to compile this code into an IG, follow the steps below.   

### Prerequisites
If you are unfamiliar with FHIR, you are strongly recommended to first familiarise yourself with the basic concepts of FHIR resources.  There are many tutorials and guides,  but don't get lost in the weeds,  the best way to learn is actually starting with a simple project.

Equally if you are not familiar with FHIR Shorthand (FSH) it would be good to follow a tutorial   My recommendations are:
- [FSH Seminar](https://fshschool.github.io/courses/fsh-seminar/)
- [Sushi Tutorial](https://fshschool.org/docs/sushi/tutorial/)
  
You will also need to have the following software installed and configured on the system that you will be using for creating the IG.
1. Node.js
2. Sushi - to install Sushi and Node.js follow these [instructions](https://fshschool.org/docs/sushi/installation/)
3. Git
4. A text editor (Notepad++ or Visual Studio Code)

### Installation
To setup and deploy the IG, first ensure that you have the pre-requisite software installed,  and then follow the steps below.
1. Create or go to a folder that you will use for working with the FSH code
2. Clone this repository by executing:
  ```sh
  git clone https://github.com/dfoulkes-au/arf-register-fsh.git
  ```
3. Install the FHIR packages listed in the dependencies section of the sushi-config.yaml file (currently these are hl7.fhir.au.core@1.0.0-ballot and hl7.fhir.au.base@4.1.0 but will be updated as newer/normative versions become available).  For example:
  ```sh
  npm --registry https://packages.simplifier.net install hl7.fhir.au.base@4.1.0
  npm --registry https://packages.simplifier.net install hl7.fhir.au.core@1.0.0-ballot
  ```
4. Navigate to the arf-register-fsh directory. Run SUSHI on those FSH files by executing:
  ```sh
  sushi build .
  ```
5. Download the latest version of the HL7 FHIR IG Publisher tool into the cache.
   
   (for Linux/Mac)
   ```sh
   ./_updatePublisher.sh
   ```
   (for Windows CMD)
   ```sh
   _updatePublisher
   ```
   (for Windows Powershell)
   ```sh
   ./_updatePublisher.bat
   ```
6. Build the IG
   
   (for Linux/Mac)
   ```sh
   ./_genonce.sh
   ```
   (for Windows CMD)
   ```sh
   _genonce
   ```
   (for Windows Powershell)
   ```sh
   ./_genonce.bat
   ```

### Modifying the code
Using a text editor,  you can adapt or extend the IG by editing the .fsh files in the input/fsh folder.  

You may also wish to change information in the sushi-config.yaml file that defines the overall project.   If you wish to adapt the IG for a different country/jurisdiction the you may change the dependencies section in the sushi-config.yaml file.  But remember if you do this,  you will need to install the relevant fhir packages as described in step 3 of the Installation section.

After each round of modification, you will need to rebuild the IG using the following command:

  (for Linux/Mac)
  ```sh
  ./_genonce.sh
  ```
  (for Windows CMD)
  ```sh
  _genonce
  (for Windows Powershell)
  ```sh
  ./_genonce.bat
  ```


<p align="right">(<a href="#readme-top">back to top</a>)</p>
 
## Supported Workflows

The profiles outlines in this implementation guide support the following primary workflows that support the various data exchange steps required for the monitoring and managing an ARF patient.  These workflows are:

### Patient Registration

This occurs after a patient has received a diagnosis (or suspected diagnosis),  and involves registering a patient for the first time on the registry.   Typically this would be achieved by posting a FHIR bundle containing and instance of each of the following resources:

* [ARF Patient](StructureDefinition-ARFPatient.html) - patient demographic information  [Example](https://fhir-arf-register.nardhc.org/Patient-MikePondPatient.html) [JSON](https://fhir-arf-register.nardhc.org/Patient-MikePondPatient.json.html)
* [ARF Condition](StructureDefinition-ARFCondition.html) - diagnosis and severity of ARF/RHD condition [Example](https://fhir-arf-register.nardhc.org/Condition-MikePondCondition.html) [JSON](https://fhir-arf-register.nardhc.org/Condition-MikePondCondition.json.html)
* [ARF Allergy](StructureDefinition-ARFAllergy.html) - any known medication allergies [Example](https://fhir-arf-register.nardhc.org/AllergyIntolerance-MikePondMedicationAllergy.html) [JSON](https://fhir-arf-register.nardhc.org/AllergyIntolerance-MikePondMedicationAllergy.json.html)

### Create CarePlan and Prescribe Medication

This workflow may take place for a newly registered patient, or it be used to record a careplan/prescription for a subsequent or updated care episode.  This process creates (or updates) a Care Plan and a Medication Request resouce (see profiles below) describing frequency and dosage of medications and specifying which Organization(s) and Practitioners will be responsible for the patient care.  Where new information is available (eg. updated phone numbers or disease severity), this process may also optionally be used to update the Patient, Condition or Allergy resources created by the Patient Registration workflow.

* [ARF CarePlan](StructureDefinition-ARFCarePlan.html) - care plan outline and practitioners/providers responsible to deliver the care [Example](https://fhir-arf-register.nardhc.org/CarePlan-MikePondCarePlan.html) [JSON](https://fhir-arf-register.nardhc.org/CarePlan-MikePondCarePlan.json.html)
* [ARF MedicationRequest](StructureDefinition-ARFMedicationRequest.html) - prescribed frequency and dosage of medication [Example](https://fhir-arf-register.nardhc.org/MedicationRequest-BicillinMedicationRequest.html) [JSON](https://fhir-arf-register.nardhc.org/MedicationRequest-BicillinMedicationRequest.json.html)
* [ARF Organisation](https://fhir-arf-register.nardhc.org/StructureDefinition-ARFOrganisation.html) - health provider organisation responsible for CarePlan [Example](https://fhir-arf-register.nardhc.org/Organization-VeryRemoteClinic.html) [JSON](https://fhir-arf-register.nardhc.org/Organization-VeryRemoteClinic.json.html)
* [ARF Practitioner](https://fhir-arf-register.nardhc.org/StructureDefinition-ARFPractitioner.html) - practioner providing care for ARF patient [Example](https://fhir-arf-register.nardhc.org/Practitioner-DoctorPayne.html) [JSON](https://fhir-arf-register.nardhc.org/Practitioner-DoctorPayne.json.html)
* [ARF PractionerRole](https://fhir-arf-register.nardhc.org/StructureDefinition-ARFPractitionerRole.html) - practioner (medicare provider) role [Example](https://fhir-arf-register.nardhc.org/PractitionerRole-DoctorPayneRole1.html) [JSON](https://fhir-arf-register.nardhc.org/PractitionerRole-DoctorPayneRole1.json.html)

### Record Medication Administration

This workflow takes place when a specific instance of the medication request has been administered to the patient.  It creates a single Medication Statement resource recording the date, provider, dosage, route etc. of the medication administration.   This workflow may also optionally update the CarePlan with a different practitioner/provider and or the patient contact details.

* [ARF MedicationStatement](StructureDefinition-ARFMedicationStatement.html) - administered time, dosage, route of medication [Example](https://fhir-arf-register.nardhc.org/MedicationStatement-BicillinMedicationStatement.html) [JSON](https://fhir-arf-register.nardhc.org/MedicationStatement-BicillinMedicationStatement.json.html)

### Query Status of the Patient

This workflow may take place at any time,  and will return the current information about a specific patient:

* Status (eg. Not Registered, Registered, Deceased, Care Plan Created, Care Plan Expired, Care Plan on Track, Overdue, Loss of Contact)
* Date and details of most recent administration of Bicillin
* Patient contact details
* GP/Pracitioner detail
* Organization

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap

Major epics under consideration include:
- Add workflow profile for Echo Cardiogram procedure and results
- Add diagnosis workflow with profiles for Conditions and Observations resources related to Modified Jones Criteria
- Elaborate and add workflows and profiles for Rheumatic Heart Disease (RHD)
- Fork project for 'International' version with dependencies on standard (not country specific) FHIR profiles

See the [open issues](https://github.com/github/dfoulkes-au/arf-register-fsh/issues) for a list of proposed features (and known issues).


## About the Project

### How to Contribute

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also open an issue with the tag "enhancement".

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/MyFeature`)
3. Commit your Changes (`git commit -m 'Add to NewFeature'`)
4. Push to the Branch (`git push origin feature/NewFeature`)
5. Open a Pull Request

### License

Distributed under the MIT License. See [LICENSE.txt][license-url] for more information.

### Acknowledgments
* [FHIR Shorthand FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/overview.html)
* [FHIR Australia AU FHIR Base Implementation Guide](https://build.fhir.org/ig/hl7au/au-fhir-base/index.html)
* [Te Whatu Ora Shared Care FHIR API](https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/index.html)

### Contacts

* [Northern Australian Regional Digital Health Collaborative][linkedin-nardhc-url]
* [Daniel Foulkes][linkedin-df-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- REFERENCES -->
[^1]: Dianne Sika-Paotonu, Andrea Beaton, Aparna Raghu, Andrew Steer, and Jonathan Carapetis. [Acute Rheumatic Fever and Rheumatic Heart Disease](https://www.ncbi.nlm.nih.gov/books/NBK425394/)
[^2]: Austalian Institute of Health and Welfare.  [Acute rheumatic fever and rheumatic heart disease](https://www.aihw.gov.au/reports/heart-stroke-vascular-diseases/hsvd-facts/contents/all-heart-stroke-and-vascular-disease/arf-and-rhd)
[^3]: Queensland Government.  [Rheumatic heart disease](https://www.qld.gov.au/health/condition/infections-and-parasites/bacterial-infections/rheumatic-heart-disease)
[^4]: Priya M Kevat, Ronny Gunnarsson, Benjamin M Reeves, and Alan R Ruben [Adherence rates and risk factors for suboptimal adherence to secondary prophylaxis for rheumatic fever](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8048926/)



<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-df-url]: https://www.linkedin.com/in/daniel-foulkes/
[linkedin-nardhc-url]: https://www.linkedin.com/company/101721851
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg
[fsh-badge]: https://fshschool.org/favicon.ico
[fsh-url]: https://fshschool.org/
[license-url]: https://github.com/dfoulkes-au/arf-register-fsh/blob/main/LICENSE.txt

