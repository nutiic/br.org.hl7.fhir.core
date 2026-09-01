# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de uso de tabaco. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de uso de tabaco.**

## Example Observation: Exemplo de uso de tabaco.

| |
| :--- |
|  |

**status**: Final

**category**: Social History

**code**: Status de uso de tabaco

**subject**: [José da Silva](Patient-b2f63a4c-ddaa-4652-8481-ac1ff473104e.md)

**effective**: 2024-12-19 10:30:00+0000

**performer**: [Maria Clara](Practitioner-d3b61455-f432-48f0-b83b-ba825922d735.md)

**value**: uso diário ou quase diário

**note**: 

> 

Paciente é fumante desde os 18 anos, fumando aproximadamente 5 cigarros por dia.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "bcdeed7f-cd8c-4d53-b61e-160471b913eb",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "social-history",
      "display" : "Social History"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "72166-2",
      "display" : "Tobacco smoking status"
    }],
    "text" : "Status de uso de tabaco"
  },
  "subject" : {
    "reference" : "Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e",
    "display" : "José da Silva"
  },
  "effectiveDateTime" : "2024-12-19T10:30:00Z",
  "performer" : [{
    "reference" : "Practitioner/d3b61455-f432-48f0-b83b-ba825922d735",
    "display" : "Maria Clara"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA18934-2",
      "display" : "Daily or almost daily"
    }],
    "text" : "uso diário ou quase diário"
  },
  "note" : [{
    "text" : "Paciente é fumante desde os 18 anos, fumando aproximadamente 5 cigarros por dia."
  }]
}

```
