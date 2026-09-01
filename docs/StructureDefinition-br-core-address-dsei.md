# BR.GOV.SAUDE.BR-CORE.FHIR\Distrito Sanitário Especial Indígena (DSEI) - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Distrito Sanitário Especial Indígena (DSEI)**

## Extensão: Distrito Sanitário Especial Indígena (DSEI) 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-dsei | *Versão*:1.1.0 |
| Active as of 2025-10-30 | *Nome computável*:DSEI |
| **Copyright/Legal**: Copyright © 2025 HL7 Brasil | |

Extensão que permite referenciar um Distrito Sanitário Especial Indígena (DSEI) como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.

Permitir a identificação do DSEI responsável pela coordenação das ações de saúde indígena na região onde está localizado o endereço, facilitando a gestão administrativa e epidemiológica dos serviços de saúde.

**Contexto de uso**

Esta extensão pode ser usada no seguinte elemento(s):

* Element ID Address

**Informações de uso**

**Usos:**

* Usa este Extensão: [Endereço Brasileiro](StructureDefinition-br-core-address.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-address-dsei.json)

### Visões formais do conteúdo de extensão

 [Descrição de perfis, diferenciais, instantâneos e como as apresentações XML e JSON funcionam](http://hl7.org/fhir/R4/profiling.html#representation). 

*  [Resumo do texto](#tabs-summ) 
*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão simples com o tipo Reference: Extensão que permite referenciar um Distrito Sanitário Especial Indígena (DSEI) como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão simples com o tipo Reference: Extensão que permite referenciar um Distrito Sanitário Especial Indígena (DSEI) como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.

 **Visão diferencial** 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Visualização instantânea** 

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-address-dsei.csv), [Excel](StructureDefinition-br-core-address-dsei.xlsx), [Schematron](StructureDefinition-br-core-address-dsei.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-address-dsei",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-dsei",
  "version" : "1.1.0",
  "name" : "DSEI",
  "title" : "Distrito Sanitário Especial Indígena (DSEI)",
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
  "description" : "Extensão que permite referenciar um Distrito Sanitário Especial Indígena (DSEI) como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "purpose" : "Permitir a identificação do DSEI responsável pela coordenação das ações de saúde indígena na região onde está localizado o endereço, facilitando a gestão administrativa e epidemiológica dos serviços de saúde.",
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
      "short" : "Distrito Sanitário Especial Indígena (DSEI)",
      "definition" : "Extensão que permite referenciar um Distrito Sanitário Especial Indígena (DSEI) como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-dsei"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Referência ao DSEI",
      "definition" : "Referência ao recurso Location que representa o Distrito Sanitário Especial Indígena.",
      "comment" : "O DSEI deve estar previamente cadastrado como um recurso Location. Existem 34 DSEIs no Brasil, cada um responsável por uma região geográfica específica que abrange territórios indígenas.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    }]
  }
}

```
