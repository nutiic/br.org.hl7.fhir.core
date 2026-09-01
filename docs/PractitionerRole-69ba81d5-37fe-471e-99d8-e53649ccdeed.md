# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de papel de profissional de saúde. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de papel de profissional de saúde.**

## Example PractitionerRole: Exemplo de papel de profissional de saúde.

| |
| :--- |
|  |

Língua: pt-BR

**identifier**: Número de Registro no Conselho Federal de Medicina/123456-SP (utilização: official, )

**active**: true

**period**: 2020-01-10 --> (em curso)

**practitioner**: [Maria Clara](Practitioner-d3b61455-f432-48f0-b83b-ba825922d735.md)

**organization**: [Consultório Médico](Organization-2b9c99c6-f9c9-42f0-a107-ed5f0d806995.md)

**code**: MEDICO CARDIOLOGISTA

**specialty**: MEDICO CARDIOLOGISTA

**location**: [Clínica Geral](Location-9fea09cf-0529-4f7d-bad0-80cd5fd00cba.md)

**healthcareService**: [UBS INDIANOPOLIS SIGMUND FREUD](HealthcareService-58a7b01f-72e8-411a-b1c0-5f7728ab7c51.md)

**telecom**: [+55 21 12345-6789](tel:+552112345-6789), [contact@hospitalexemplo.com](mailto:contact@hospitalexemplo.com)

> **availableTime****daysOfWeek**: Monday, Tuesday, Wednesday, Thursday, Friday**availableStartTime**: 08:00:00**availableEndTime**: 17:00:00

### NotAvailables

| | | |
| :--- | :--- | :--- |
| - | **Description** | **During** |
| * | On leave | 2024-01-01 --> 2024-01-10 |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "69ba81d5-37fe-471e-99d8-e53649ccdeed",
  "language" : "pt-BR",
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MD",
        "display" : "Medical License number"
      }],
      "text" : "Número de Registro no Conselho Federal de Medicina"
    },
    "system" : "https://saude.gov.br/fhir/sid/crm-sp",
    "value" : "123456-SP"
  }],
  "active" : true,
  "period" : {
    "start" : "2020-01-10"
  },
  "practitioner" : {
    "reference" : "Practitioner/d3b61455-f432-48f0-b83b-ba825922d735",
    "display" : "Maria Clara"
  },
  "organization" : {
    "reference" : "Organization/2b9c99c6-f9c9-42f0-a107-ed5f0d806995",
    "display" : "Consultório Médico"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "code" : "225120",
      "display" : "MEDICO CARDIOLOGISTA"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "code" : "225120",
      "display" : "MEDICO CARDIOLOGISTA"
    }]
  }],
  "location" : [{
    "reference" : "Location/9fea09cf-0529-4f7d-bad0-80cd5fd00cba",
    "display" : "Clínica Geral"
  }],
  "healthcareService" : [{
    "reference" : "HealthcareService/58a7b01f-72e8-411a-b1c0-5f7728ab7c51",
    "display" : "UBS INDIANOPOLIS SIGMUND FREUD"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+55 21 12345-6789",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "contact@hospitalexemplo.com",
    "use" : "work"
  }],
  "availableTime" : [{
    "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
    "availableStartTime" : "08:00:00",
    "availableEndTime" : "17:00:00"
  }],
  "notAvailable" : [{
    "description" : "On leave",
    "during" : {
      "start" : "2024-01-01",
      "end" : "2024-01-10"
    }
  }]
}

```
