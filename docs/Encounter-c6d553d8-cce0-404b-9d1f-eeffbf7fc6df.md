# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de consulta fictícia. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de consulta fictícia.**

## Example Encounter: Exemplo de consulta fictícia.

| |
| :--- |
|  |

Língua: pt-BR

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (Ambulatory)

**type**: Ambulatorial

**priority**: Rotina

**subject**: [João Carlos Silva](Patient-b2f63a4c-ddaa-4652-8481-ac1ff473104e.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | Executor Primário | [Maria Clara](Practitioner-d3b61455-f432-48f0-b83b-ba825922d735.md) |

**period**: 2023-12-12 09:00:00-0300 --> 2023-12-12 09:30:00-0300

**reasonCode**: Dor precordial

### Diagnoses

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Condition** | **Use** | **Rank** |
| * | [Dispnéia](Condition-91d8d24f-a70d-4ebf-8dea-71cf92ce1bd5.md) | Queixa Principal | 1 |

### Locations

| | | |
| :--- | :--- | :--- |
| - | **Location** | **Status** |
| * | [HOSPITAL DIA](Location-9fea09cf-0529-4f7d-bad0-80cd5fd00cba.md) | Active |

**serviceProvider**: [Hospital Sírio-Libanês](Organization-1428c345-c221-411f-880f-6fb163817387.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "c6d553d8-cce0-404b-9d1f-eeffbf7fc6df",
  "language" : "pt-BR",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "Ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRAtendimentoPrestado",
      "code" : "02",
      "display" : "AMBULATORIAL"
    }],
    "text" : "Ambulatorial"
  }],
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
      "code" : "R",
      "display" : "routine"
    }],
    "text" : "Rotina"
  },
  "subject" : {
    "reference" : "Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e",
    "display" : "João Carlos Silva"
  },
  "participant" : [{
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "ADM",
        "display" : "admitter"
      }],
      "text" : "Executor Primário"
    }],
    "individual" : {
      "reference" : "Practitioner/d3b61455-f432-48f0-b83b-ba825922d735",
      "display" : "Maria Clara"
    }
  }],
  "period" : {
    "start" : "2023-12-12T09:00:00-03:00",
    "end" : "2023-12-12T09:30:00-03:00"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
      "code" : "R06.0",
      "display" : "Dispnéia"
    }],
    "text" : "Dor precordial"
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/91d8d24f-a70d-4ebf-8dea-71cf92ce1bd5",
      "display" : "Dispnéia"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "CC",
        "display" : "Chief complaint"
      }],
      "text" : "Queixa Principal"
    },
    "rank" : 1
  }],
  "location" : [{
    "location" : {
      "reference" : "Location/9fea09cf-0529-4f7d-bad0-80cd5fd00cba",
      "display" : "HOSPITAL DIA"
    },
    "status" : "active"
  }],
  "serviceProvider" : {
    "reference" : "Organization/1428c345-c221-411f-880f-6fb163817387",
    "display" : "Hospital Sírio-Libanês"
  }
}

```
