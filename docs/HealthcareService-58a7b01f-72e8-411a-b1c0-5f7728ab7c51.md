# BR.GOV.SAUDE.BR-CORE.FHIR\UBS INDIANOPOLIS SIGMUND FREUD - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **UBS INDIANOPOLIS SIGMUND FREUD**

## Example HealthcareService: UBS INDIANOPOLIS SIGMUND FREUD

| |
| :--- |
|  |

Língua: pt-BR

**identifier**: [NamingSystemCNES](file:///home/raphael/Codigo/git/br.org.hl7.terminologia/output/NamingSystem-cnes.html)/2788578

**active**: true

**providedBy**: [Consultório Dr. José Silva](Organization-2b9c99c6-f9c9-42f0-a107-ed5f0d806995.md)

**category**: CENTRO DE SAUDE/UNIDADE BASICA

**type**: CENTRO DE SAUDE/UNIDADE BASICA

**name**: UBS INDIANOPOLIS SIGMUND FREUD

**telecom**: [+55 11 3394-0200](tel:+55113394-0200), [administracao@consultoriojosesilva.com.br](mailto:administracao@consultoriojosesilva.com.br)

> **availableTime****daysOfWeek**: Monday, Tuesday, Wednesday, Thursday, Friday

**availabilityExceptions**: 24 X 7



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "58a7b01f-72e8-411a-b1c0-5f7728ab7c51",
  "language" : "pt-BR",
  "identifier" : [{
    "system" : "https://saude.gov.br/fhir/sid/cnes",
    "value" : "2788578"
  }],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/2b9c99c6-f9c9-42f0-a107-ed5f0d806995",
    "display" : "Consultório Dr. José Silva"
  },
  "category" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoEstabelecimentoSaude",
      "code" : "2",
      "display" : "CENTRO DE SAUDE/UNIDADE BASICA"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoEstabelecimentoSaude",
      "code" : "2",
      "display" : "CENTRO DE SAUDE/UNIDADE BASICA"
    }]
  }],
  "name" : "UBS INDIANOPOLIS SIGMUND FREUD",
  "telecom" : [{
    "system" : "phone",
    "value" : "+55 11 3394-0200",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "administracao@consultoriojosesilva.com.br",
    "use" : "work"
  }],
  "availableTime" : [{
    "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"]
  }],
  "availabilityExceptions" : "24 X 7"
}

```
