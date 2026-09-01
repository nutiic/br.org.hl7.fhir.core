# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de uma pessoa relacionada ao paciente. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de uma pessoa relacionada ao paciente.**

## Example RelatedPerson: Exemplo de uma pessoa relacionada ao paciente.

| |
| :--- |
|  |

**identifier**: [NamingSystemCNS](file:///home/raphael/Codigo/git/br.org.hl7.terminologia/output/NamingSystem-cns.html)/123456789012345 (utilização: official, )

**active**: true

**patient**: [José da Silva](Patient-b2f63a4c-ddaa-4652-8481-ac1ff473104e.md)

**relationship**: Cônjuge

**name**: Maria de Souza(Official)

**telecom**: [+55-11-98765-4321](tel:+55-11-98765-4321), [maria.souza@example.com](mailto:maria.souza@example.com)

**gender**: Female

**birthDate**: 1985-06-15

**address**: Rua das Flores, 123 São Paulo SP 01234-567 BR (home)

### Communications

| | | |
| :--- | :--- | :--- |
| - | **Language** | **Preferred** |
| * | Portuguese (Brazil) | true |



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "f48ffa19-7af8-4377-aab8-2c98ca1ce07b",
  "identifier" : [{
    "use" : "official",
    "system" : "https://saude.gov.br/fhir/sid/cns",
    "value" : "123456789012345"
  }],
  "active" : true,
  "patient" : {
    "reference" : "Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e",
    "display" : "José da Silva"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "SPS",
      "display" : "Spouse"
    }],
    "text" : "Cônjuge"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Maria de Souza",
    "family" : "Souza",
    "given" : ["Maria"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+55-11-98765-4321",
    "use" : "mobile"
  },
  {
    "system" : "email",
    "value" : "maria.souza@example.com",
    "use" : "home"
  }],
  "gender" : "female",
  "birthDate" : "1985-06-15",
  "address" : [{
    "use" : "home",
    "type" : "both",
    "line" : ["Rua das Flores, 123"],
    "city" : "São Paulo",
    "district" : "Jardim Paulista",
    "state" : "SP",
    "postalCode" : "01234-567",
    "country" : "BR"
  }],
  "communication" : [{
    "language" : {
      "coding" : [{
        "system" : "urn:ietf:bcp:47",
        "code" : "pt-BR",
        "display" : "Portuguese (Brazil)"
      }]
    },
    "preferred" : true
  }]
}

```
