# BR.GOV.SAUDE.BR-CORE.FHIR\c2a71a42-d3cd-4be8-8bf4-fdddea59034f - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **c2a71a42-d3cd-4be8-8bf4-fdddea59034f**

## Example MedicationAdministration: c2a71a42-d3cd-4be8-8bf4-fdddea59034f

| |
| :--- |
|  |

**status**: Completed

**medication**: Amoxicilina 500mg cápsula

**subject**: [João Carlos](Patient-b2f63a4c-ddaa-4652-8481-ac1ff473104e.md)

**context**: [Ambulatorial](Encounter-c6d553d8-cce0-404b-9d1f-eeffbf7fc6df.md)

**effective**: 2024-12-18 08:00:00-0300

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Maria Clara](Practitioner-d3b61455-f432-48f0-b83b-ba825922d735.md) |

### Dosages

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Site** | **Route** | **Dose** |
| * | Administrar 1 cápsula via oral. | Cavidade oral | Oral use | 500 mg (Detalhes: UCUM códigomg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "c2a71a42-d3cd-4be8-8bf4-fdddea59034f",
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://www.whocc.no/atc",
      "code" : "J01CA04",
      "display" : "amoxicilina"
    }],
    "text" : "Amoxicilina 500mg cápsula"
  },
  "subject" : {
    "reference" : "Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e",
    "display" : "João Carlos"
  },
  "context" : {
    "reference" : "Encounter/c6d553d8-cce0-404b-9d1f-eeffbf7fc6df",
    "display" : "Ambulatorial"
  },
  "effectiveDateTime" : "2024-12-18T08:00:00-03:00",
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/d3b61455-f432-48f0-b83b-ba825922d735",
      "display" : "Maria Clara"
    }
  }],
  "dosage" : {
    "text" : "Administrar 1 cápsula via oral.",
    "site" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "74262004"
      }],
      "text" : "Cavidade oral"
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    },
    "dose" : {
      "value" : 500,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
