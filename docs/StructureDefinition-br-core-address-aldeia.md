# BR.GOV.SAUDE.BR-CORE.FHIR\Aldeia Indígena - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Aldeia Indígena**

## Extensão: Aldeia Indígena 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-aldeia | *Versão*:1.1.0 |
| Active as of 2025-10-30 | *Nome computável*:Aldeia |
| **Copyright/Legal**: Copyright © 2025 HL7 Brasil | |

Extensão que permite referenciar uma aldeia indígena como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.

Permitir a identificação precisa da aldeia indígena onde um indivíduo reside ou onde uma atividade de saúde é realizada, essencial para a organização dos serviços de saúde indígena.

**Contexto de uso**

Esta extensão pode ser usada no seguinte elemento(s):

* Element ID Address

**Informações de uso**

**Usos:**

* Usa este Extensão: [Endereço Brasileiro](StructureDefinition-br-core-address.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-address-aldeia.json)

### Visões formais do conteúdo de extensão

 [Descrição de perfis, diferenciais, instantâneos e como as apresentações XML e JSON funcionam](http://hl7.org/fhir/R4/profiling.html#representation). 

*  [Resumo do texto](#tabs-summ) 
*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão simples com o tipo Reference: Extensão que permite referenciar uma aldeia indígena como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão simples com o tipo Reference: Extensão que permite referenciar uma aldeia indígena como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.

 **Visão diferencial** 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Visualização instantânea** 

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-address-aldeia.csv), [Excel](StructureDefinition-br-core-address-aldeia.xlsx), [Schematron](StructureDefinition-br-core-address-aldeia.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-address-aldeia",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-aldeia",
  "version" : "1.1.0",
  "name" : "Aldeia",
  "title" : "Aldeia Indígena",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-30",
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
  "description" : "Extensão que permite referenciar uma aldeia indígena como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "purpose" : "Permitir a identificação precisa da aldeia indígena onde um indivíduo reside ou onde uma atividade de saúde é realizada, essencial para a organização dos serviços de saúde indígena.",
  "copyright" : "Copyright © 2025 HL7 Brasil",
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
    "expression" : "Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Aldeia Indígena",
      "definition" : "Extensão que permite referenciar uma aldeia indígena como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-aldeia"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Referência à Aldeia",
      "definition" : "Referência ao recurso Location que representa a aldeia indígena.",
      "comment" : "A aldeia deve estar previamente cadastrada como um recurso Location do tipo 'si' (special institution) ou outro tipo apropriado que represente comunidades indígenas.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    }]
  }
}

```
