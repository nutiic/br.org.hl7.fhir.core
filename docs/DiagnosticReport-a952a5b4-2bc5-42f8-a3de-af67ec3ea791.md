# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de reporte de diagnóstico. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de reporte de diagnóstico.**

## Example DiagnosticReport: Exemplo de reporte de diagnóstico.

| |
| :--- |
|  |

Língua: pt-BR

## Blood pressure panel with all children optional (SERVICO DE DIAGNOSTICO DE LABORATORIO CLINICO) 

| | |
| :--- | :--- |
| Assunto | Ana Beatriz Oliveira (official) Female, DoB: 2018-09-25 ( Health Card Number: NamingSystemCNS#765432109876543 (use: official, )) |
| Quando Para | 2024-12-19 14:30:00+0000 |
| Comunicado | 2024-12-19 16:00:00+0000 |
| Intérprete | [Hospital Sírio-Libanês](Organization-1428c345-c221-411f-880f-6fb163817387.md) |

**Detalhes do relatório**

* **Código**: [Blood Pressure](Observation-07ce5462-f77b-4ad6-af8c-2f67a6500b97.md)
  * **Valor**: 
  * **Bandeiras**: Final
  * **Nota**: 
  * **Quando Para**: 2025-01-13 08:30:00+0000
  * **Comunicado**: 2025-01-13 08:35:00+0000
* **Código**: [Colesterol total e frações](Observation-52ba1c80-5d2c-4faf-8c90-f4363e20d7bb.md)
  * **Valor**: 
  * **Bandeiras**: Final
  * **Nota**: > Paciente orientado para seguir com dieta saudável e exercícios para gerenciar colesterol
  * **Quando Para**: 2025-01-13 08:00:00+0000
  * **Comunicado**: 2025-01-13 08:30:00+0000

Resultados dentro dos limites normais.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "a952a5b4-2bc5-42f8-a3de-af67ec3ea791",
  "language" : "pt-BR",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRServicoEspecializado",
      "code" : "145",
      "display" : "SERVICO DE DIAGNOSTICO DE LABORATORIO CLINICO"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "85354-9",
      "display" : "Blood pressure panel with all children optional"
    }]
  },
  "subject" : {
    "reference" : "Patient/b1997888-85fd-41b6-bf94-6242cf3c8265",
    "display" : "Ana Beatriz"
  },
  "effectiveDateTime" : "2024-12-19T14:30:00Z",
  "issued" : "2024-12-19T16:00:00Z",
  "performer" : [{
    "reference" : "Organization/1428c345-c221-411f-880f-6fb163817387",
    "display" : "Hospital Sírio-Libanês"
  }],
  "result" : [{
    "reference" : "Observation/07ce5462-f77b-4ad6-af8c-2f67a6500b97",
    "display" : "Blood Pressure"
  },
  {
    "reference" : "Observation/52ba1c80-5d2c-4faf-8c90-f4363e20d7bb",
    "display" : "Colesterol total e frações"
  }],
  "conclusion" : "Resultados dentro dos limites normais."
}

```
