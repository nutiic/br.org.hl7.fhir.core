# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de medicação. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de medicação.**

## Example Medication: Exemplo de medicação.

| |
| :--- |
|  |

**code**: Levofloxacino; sistêmico

**status**: Active

**manufacturer**: [Aché Laboratórios Farmacêuticos S.A.](Organization-7b98fd1d-5f85-40f5-9436-2c767ab734ae.md)



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "3a46210c-7eb3-48ec-aa67-db7e7ee18864",
  "code" : {
    "coding" : [{
      "system" : "http://www.whocc.no/atc",
      "code" : "J01MA12",
      "display" : "levofloxacino"
    }],
    "text" : "Levofloxacino; sistêmico"
  },
  "status" : "active",
  "manufacturer" : {
    "reference" : "Organization/7b98fd1d-5f85-40f5-9436-2c767ab734ae",
    "display" : "Aché Laboratórios Farmacêuticos S.A."
  }
}

```
