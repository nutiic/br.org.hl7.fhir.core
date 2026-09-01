# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de organização. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de organização.**

## Example Organization: Exemplo de organização.

| |
| :--- |
|  |

Língua: pt-BR

**identifier**: Tax ID number/12345678909 (utilização: official, ), Provider number/7654321 (utilização: official, )

**active**: true

**type**: Consultório Médico

**name**: Consultório Dr. José Silva

**alias**: Consultório José Silva

**telecom**: [+55-11-98765-4321](tel:+55-11-98765-4321), [contato@consultoriojosesilva.com.br](mailto:contato@consultoriojosesilva.com.br)

**address**: Rua das Clínicas, 123 São Paulo SP 01000-000 BR (work)

> **contact****purpose**: Administrative**name**: Secretaria Administrativa**telecom**: [+55-11-98765-4321](tel:+55-11-98765-4321), [administracao@consultoriojosesilva.com.br](mailto:administracao@consultoriojosesilva.com.br)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "2b9c99c6-f9c9-42f0-a107-ed5f0d806995",
  "language" : "pt-BR",
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "TAX",
        "display" : "Tax ID number"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cpf",
    "value" : "12345678909",
    "assigner" : {
      "display" : "Número do CPF"
    }
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN",
        "display" : "Provider number"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cnes",
    "value" : "7654321",
    "assigner" : {
      "display" : "Número CNES - Cadastro Nacional de Estabelecimentos de Saúde"
    }
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoEstabelecimentoSaude",
      "code" : "22",
      "display" : "CONSULTORIO ISOLADO"
    }],
    "text" : "Consultório Médico"
  }],
  "name" : "Consultório Dr. José Silva",
  "alias" : ["Consultório José Silva"],
  "telecom" : [{
    "system" : "phone",
    "value" : "+55-11-98765-4321",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "contato@consultoriojosesilva.com.br",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "physical",
    "line" : ["Rua das Clínicas, 123"],
    "city" : "São Paulo",
    "district" : "Centro",
    "state" : "SP",
    "postalCode" : "01000-000",
    "country" : "BR"
  }],
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "ADMIN",
        "display" : "Administrative"
      }]
    },
    "name" : {
      "text" : "Secretaria Administrativa"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+55-11-98765-4321",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "administracao@consultoriojosesilva.com.br",
      "use" : "work"
    }]
  }]
}

```
