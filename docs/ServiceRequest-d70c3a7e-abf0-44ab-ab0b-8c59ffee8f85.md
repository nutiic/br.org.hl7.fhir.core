# BR.GOV.SAUDE.BR-CORE.FHIR\d70c3a7e-abf0-44ab-ab0b-8c59ffee8f85 - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **d70c3a7e-abf0-44ab-ab0b-8c59ffee8f85**

## Example ServiceRequest: d70c3a7e-abf0-44ab-ab0b-8c59ffee8f85

| |
| :--- |
|  |

Língua: pt-BR

**identifier**: `https://hospital.example.org/servicerequest`/ServiceRequest12345

**status**: Active

**intent**: Order

**category**: Exame

**priority**: Routine

**code**: Eletrocardiograma

**subject**: [José da Silva](Patient-b2f63a4c-ddaa-4652-8481-ac1ff473104e.md)

**authoredOn**: 2024-12-19

**requester**: [Maria Clara](Practitioner-d3b61455-f432-48f0-b83b-ba825922d735.md)

**performer**: [Clínica Geral](PractitionerRole-69ba81d5-37fe-471e-99d8-e53649ccdeed.md)

**reasonCode**: Dor precordial

**bodySite**: Coração

**note**: 

> 

O paciente deve evitar exercícios físicos antes do exame.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "d70c3a7e-abf0-44ab-ab0b-8c59ffee8f85",
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://hospital.example.org/servicerequest",
    "value" : "ServiceRequest12345"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.ans.gov.br/CodeSystem/tuss-50",
      "code" : "23",
      "display" : "Exame"
    }],
    "text" : "Exame"
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0211020036",
      "display" : "Eletrocardiograma"
    }],
    "text" : "Eletrocardiograma"
  },
  "subject" : {
    "reference" : "Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e",
    "display" : "José da Silva"
  },
  "authoredOn" : "2024-12-19",
  "requester" : {
    "reference" : "Practitioner/d3b61455-f432-48f0-b83b-ba825922d735",
    "display" : "Maria Clara"
  },
  "performer" : [{
    "reference" : "PractitionerRole/69ba81d5-37fe-471e-99d8-e53649ccdeed",
    "display" : "Clínica Geral"
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
      "code" : "R07.2",
      "display" : "Dor precordial"
    }],
    "text" : "Dor precordial"
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80891009",
      "display" : "Heart structure (body structure)"
    }],
    "text" : "Coração"
  }],
  "note" : [{
    "text" : "O paciente deve evitar exercícios físicos antes do exame."
  }]
}

```
