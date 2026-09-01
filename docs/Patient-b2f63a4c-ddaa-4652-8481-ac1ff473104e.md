# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de paciente. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de paciente.**

## Example Patient: Exemplo de paciente.

| |
| :--- |
|  |

Língua: pt-BR

João Carlos Silva (official) Male, DoB: 1985-03-01 ( Health Card Number: NamingSystemCNS#987654321098765 (use: official, ))

-------

| | |
| :--- | :--- |
| Other Id: | Tax ID number/12345678901 (utilização: official, ) |
| Detalhes do contacto | * [+55 11 98765-4321](tel:+551198765-4321)
* [joao.carlos@example.com](mailto:joao.carlos@example.com)
* Rua Exemplo, 123, Bairro Centro, São Paulo, SP, 01000-000(home)
 |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) | São Paulo SP Brasil |
| [Raça BR IPS](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-raca-br-ips.html) | Branca |
| [Sexo no nascimento BR IPS](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-sexo-nascimento-br-ips.html) | Male |
| [Gender Identity](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-genderIdentity.html) | Identifies as male gender |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "b2f63a4c-ddaa-4652-8481-ac1ff473104e",
  "language" : "pt-BR",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "city" : "São Paulo",
      "state" : "SP",
      "country" : "Brasil"
    }
  },
  {
    "url" : "https://ips.saude.gov.br/fhir/StructureDefinition/raca-br-ips",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRRacaCor",
        "code" : "01",
        "display" : "Branca"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-genderIdentity",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "446151000124109"
      }]
    }
  },
  {
    "url" : "https://ips.saude.gov.br/fhir/StructureDefinition/sexo-nascimento-br-ips",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/administrative-gender",
        "code" : "male",
        "display" : "Male"
      }]
    }
  }],
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
    "value" : "12345678901"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "HC",
        "display" : "Health Card Number"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cns",
    "value" : "987654321098765"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Silva",
    "given" : ["João", "Carlos"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+55 11 98765-4321",
    "use" : "mobile"
  },
  {
    "system" : "email",
    "value" : "joao.carlos@example.com",
    "use" : "home"
  }],
  "gender" : "male",
  "birthDate" : "1985-03-01",
  "address" : [{
    "use" : "home",
    "type" : "both",
    "text" : "Rua Exemplo, 123, Bairro Centro, São Paulo, SP, 01000-000",
    "line" : ["Rua Exemplo, 123"],
    "city" : "São Paulo",
    "state" : "SP",
    "postalCode" : "01000-000",
    "country" : "Brasil"
  }]
}

```
