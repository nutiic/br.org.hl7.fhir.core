# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de organização. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de organização.**

## Example Organization: Exemplo de organização.

| |
| :--- |
|  |

**identifier**: Tax ID number/60643228000161 (utilização: official, )

**active**: true

**name**: Aché Laboratórios Farmacêuticos S.A.

**alias**: Aché

**telecom**: [+55-11-1234-5678](tel:+55-11-1234-5678), [contato@ache.com.br](mailto:contato@ache.com.br)

**address**: Rodovia Dom Pedro I, Km 62 Guarulhos SP 07000-000 BR (work)

> **contact****purpose**: Administrative**name**: Departamento Administrativo**telecom**: [+55-11-1234-5679](tel:+55-11-1234-5679), [administrativo@ache.com.br](mailto:administrativo@ache.com.br)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "7b98fd1d-5f85-40f5-9436-2c767ab734ae",
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "TAX",
        "display" : "Tax ID number"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cnpj",
    "value" : "60643228000161",
    "assigner" : {
      "display" : "CADASTRO NACIONAL DE PESSOA JURÍDICA"
    }
  }],
  "active" : true,
  "name" : "Aché Laboratórios Farmacêuticos S.A.",
  "alias" : ["Aché"],
  "telecom" : [{
    "system" : "phone",
    "value" : "+55-11-1234-5678",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "contato@ache.com.br",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "both",
    "line" : ["Rodovia Dom Pedro I, Km 62"],
    "city" : "Guarulhos",
    "district" : "Ponte Grande",
    "state" : "SP",
    "postalCode" : "07000-000",
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
      "text" : "Departamento Administrativo"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+55-11-1234-5679",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "administrativo@ache.com.br",
      "use" : "work"
    }]
  }]
}

```
