# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de locação. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de locação.**

## Example Location: Exemplo de locação.

| |
| :--- |
|  |

Língua: pt-BR

**status**: Active

**name**: Clínica Geral - Enfermaria Norte

**alias**: Clínica Geral

**description**: Localização destinada à internação de pacientes clínicos gerais.

**mode**: Instance

**type**: HOSPITAL DIA

**telecom**: [+55-11-3394-0203](tel:+55-11-3394-0203)

**address**: Rua Dona Adma Jafet, 91 3º Andar - Ala Norte São Paulo SP 01308-050 BR (work)

**physicalType**: SALA DE ACOLHIMENTO COM CLASSIFICACAO DE RISCO

**managingOrganization**: [Hospital Sírio-Libanês](Organization-1428c345-c221-411f-880f-6fb163817387.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "9fea09cf-0529-4f7d-bad0-80cd5fd00cba",
  "language" : "pt-BR",
  "status" : "active",
  "name" : "Clínica Geral - Enfermaria Norte",
  "alias" : ["Clínica Geral"],
  "description" : "Localização destinada à internação de pacientes clínicos gerais.",
  "mode" : "instance",
  "type" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRServicoEspecializado",
      "code" : "148",
      "display" : "HOSPITAL DIA"
    }],
    "text" : "HOSPITAL DIA"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+55-11-3394-0203",
    "use" : "work"
  }],
  "address" : {
    "use" : "work",
    "type" : "physical",
    "line" : ["Rua Dona Adma Jafet, 91", "3º Andar - Ala Norte"],
    "city" : "São Paulo",
    "district" : "Bela Vista",
    "state" : "SP",
    "postalCode" : "01308-050",
    "country" : "BR"
  },
  "physicalType" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRInstalacoesFisicas",
      "code" : "42",
      "display" : "SALA DE ACOLHIMENTO COM CLASSIFICACAO DE RISCO"
    }]
  },
  "managingOrganization" : {
    "reference" : "Organization/1428c345-c221-411f-880f-6fb163817387",
    "display" : "Hospital Sírio-Libanês"
  }
}

```
