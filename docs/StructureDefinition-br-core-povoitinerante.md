# BR.GOV.SAUDE.BR-CORE.FHIR\Extensão de povo itinerante do Core do Brasil - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Extensão de povo itinerante do Core do Brasil**

## Extensão: Extensão de povo itinerante do Core do Brasil 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-povoitinerante | *Versão*:1.1.1 |
| Active as of 2024-07-24 | *Nome computável*:BRCorePovoItinerante |
| **Copyright/Legal**: CC-01 | |

Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa

Elemento que deve ser utilizado para definir o povo itinerante do paciente

**Contexto de uso**

Esta extensão pode ser usada no seguinte elemento(s):

* Element ID Patient

**Informações de uso**

**Usos:**

* Usa este Extensão: [BRCorePatient](StructureDefinition-br-core-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-povoitinerante.json)

### Visões formais do conteúdo de extensão

 [Descrição de perfis, diferenciais, instantâneos e como as apresentações XML e JSON funcionam](http://hl7.org/fhir/R4/profiling.html#representation). 

*  [Resumo do texto](#tabs-summ) 
*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão simples com o tipo CodeableConcept: Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão simples com o tipo CodeableConcept: Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa

 **Visão diferencial** 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Visualização instantânea** 

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-povoitinerante.csv), [Excel](StructureDefinition-br-core-povoitinerante.xlsx), [Schematron](StructureDefinition-br-core-povoitinerante.sch) 

#### Terminologia Ligações

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-povoitinerante",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-povoitinerante",
  "version" : "1.1.1",
  "name" : "BRCorePovoItinerante",
  "title" : "Extensão de povo itinerante do Core do Brasil",
  "status" : "active",
  "date" : "2024-07-24T09:41:10-03:00",
  "publisher" : "Ministério da Saúde do Brasil",
  "contact" : [{
    "name" : "Ministério da Saúde do Brasil",
    "telecom" : [{
      "system" : "url",
      "value" : "https://gov.br/saude"
    },
    {
      "system" : "email",
      "value" : "contato@gointerop.com"
    }]
  },
  {
    "name" : "Italo Macedo",
    "telecom" : [{
      "system" : "email",
      "value" : "italo@gointerop.com",
      "use" : "work"
    }]
  }],
  "description" : "Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "purpose" : "Elemento que deve ser utilizado para definir o povo itinerante do paciente",
  "copyright" : "CC-01",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Extensão de povo itinerante",
      "definition" : "Conceitos que definem o povo itinerante do paciente",
      "max" : "1"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-povoitinerante"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Povo itinerante",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRPovoItinerante"
      }
    }]
  }
}

```
