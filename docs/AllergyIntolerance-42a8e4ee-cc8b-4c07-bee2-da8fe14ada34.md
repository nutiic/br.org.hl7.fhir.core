# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de alergia e intolerância. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de alergia e intolerância.**

## Example AllergyIntolerance: Exemplo de alergia e intolerância.

| |
| :--- |
|  |

Língua: pt-BR

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Food

**criticality**: High Risk

**code**: Alergia a veneno de vespa

**patient**: [João Pereira](Patient-b2f63a4c-ddaa-4652-8481-ac1ff473104e.md)

### Reactions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Manifestation** | **Onset** | **Severity** |
| * | Angioedema | 2023-05-12 | Moderate |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "42a8e4ee-cc8b-4c07-bee2-da8fe14ada34",
  "language" : "pt-BR",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "type" : "allergy",
  "category" : ["food"],
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRAlergenosCBARA",
      "code" : "veneno-vespa",
      "display" : "Veneno de vespa"
    }],
    "text" : "Alergia a veneno de vespa"
  },
  "patient" : {
    "reference" : "Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e",
    "display" : "João Pereira"
  },
  "reaction" : [{
    "manifestation" : [{
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRMedDRA",
        "code" : "10002424",
        "display" : "angioedema"
      }],
      "text" : "Angioedema"
    }],
    "onset" : "2023-05-12",
    "severity" : "moderate"
  }]
}

```
