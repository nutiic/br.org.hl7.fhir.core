# BR.GOV.SAUDE.BR-CORE.FHIR\Extensão do perfil BRCoreConsent define extensões específicas para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018) - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Extensão do perfil BRCoreConsent define extensões específicas para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)**

## Extensão: Extensão do perfil BRCoreConsent define extensões específicas para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018) 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-base-legal-lgpd | *Versão*:1.1.1 |
| Active as of 2026-01-10 | *Nome computável*:BRBaseLegalLGPD |
| **Copyright/Legal**: CC-01 | |

Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa

Elemento que deve ser utilizado para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)

**Contexto de uso**

Esta extensão pode ser usada no seguinte elemento(s):

* Element ID Patient

**Informações de uso**

**Usos:**

* Usa este Extensão: [br-core-consent](StructureDefinition-br-core-consent.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-base-legal-lgpd.json)

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

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-base-legal-lgpd.csv), [Excel](StructureDefinition-br-core-base-legal-lgpd.xlsx), [Schematron](StructureDefinition-br-core-base-legal-lgpd.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-base-legal-lgpd",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-base-legal-lgpd",
  "version" : "1.1.1",
  "name" : "BRBaseLegalLGPD",
  "title" : "Extensão do perfil BRCoreConsent define extensões específicas para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)",
  "status" : "active",
  "date" : "2026-01-10T09:41:10-03:00",
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
  "purpose" : "Elemento que deve ser utilizado para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)",
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
      "short" : "Extensão de brcoreconsent para LGPD",
      "definition" : "Conceitos que definem os requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)",
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
      "fixedUri" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-base-legal-lgpd"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
