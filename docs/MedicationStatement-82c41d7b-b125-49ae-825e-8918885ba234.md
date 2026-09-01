# BR.GOV.SAUDE.BR-CORE.FHIR\Exemplo de declaração de medicação. - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Exemplo de declaração de medicação.**

## Example MedicationStatement: Exemplo de declaração de medicação.

| |
| :--- |
|  |

**status**: Completed

**medication**: [levofloxacino](Medication-3a46210c-7eb3-48ec-aa67-db7e7ee18864.md)

**subject**: [João Carlos](Patient-b2f63a4c-ddaa-4652-8481-ac1ff473104e.md)

**effective**: 2024-04-01 --> 2024-04-07

**dateAsserted**: 2024-05-01

**informationSource**: [Maria Clara](Practitioner-d3b61455-f432-48f0-b83b-ba825922d735.md)

**reasonCode**: Febre alta sem causa definida

**note**: 

> 

Paciente relatou que usou Dipirona 500mg durante uma semana para controle de febre.


> **dosage****text**: Tomar 1 comprimido via oral a cada 6 horas durante 7 dias.**timing**: 4 por 1 day**route**: Oral use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 500 mg (Detalhes: UCUM códigomg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "82c41d7b-b125-49ae-825e-8918885ba234",
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/3a46210c-7eb3-48ec-aa67-db7e7ee18864",
    "display" : "levofloxacino"
  },
  "subject" : {
    "reference" : "Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e",
    "display" : "João Carlos"
  },
  "effectivePeriod" : {
    "start" : "2024-04-01",
    "end" : "2024-04-07"
  },
  "dateAsserted" : "2024-05-01",
  "informationSource" : {
    "reference" : "Practitioner/d3b61455-f432-48f0-b83b-ba825922d735",
    "display" : "Maria Clara"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://hl7.org/fhir/sid/icd-10",
      "code" : "R50.9",
      "display" : "Fever, unspecified"
    }],
    "text" : "Febre alta sem causa definida"
  }],
  "note" : [{
    "text" : "Paciente relatou que usou Dipirona 500mg durante uma semana para controle de febre."
  }],
  "dosage" : [{
    "text" : "Tomar 1 comprimido via oral a cada 6 horas durante 7 dias.",
    "timing" : {
      "repeat" : {
        "frequency" : 4,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 500,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
