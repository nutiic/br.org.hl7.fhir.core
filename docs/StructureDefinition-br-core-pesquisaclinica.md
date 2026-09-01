# BR.GOV.SAUDE.BR-CORE.FHIR\Extensão de pesquisa clínica do Core do Brasil - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Extensão de pesquisa clínica do Core do Brasil**

## Extensão: Extensão de pesquisa clínica do Core do Brasil 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-pesquisaclinica | *Versão*:1.1.0 |
| Active as of 2025-02-25 | *Nome computável*:BRCorePesquisaClinica |
| **Copyright/Legal**: CC-01 | |

Este perfil de extensão representa uma pesquisa clínica

Elemento que deve ser utilizado para representar uma pesquisa clínica

**Contexto de uso**

Esta extensão pode ser usada no seguinte elemento(s):

* Element ID Immunization.protocolApplied

**Informações de uso**

**Usos:**

* Usa este Extensão: [BRCoreImmunization](StructureDefinition-br-core-immunization.md)
* Exemplos para este Extensão: [Immunization/714819de-cd07-4423-94ea-7057504a2cc8](Immunization-714819de-cd07-4423-94ea-7057504a2cc8.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-pesquisaclinica.json)

### Visões formais do conteúdo de extensão

 [Descrição de perfis, diferenciais, instantâneos e como as apresentações XML e JSON funcionam](http://hl7.org/fhir/R4/profiling.html#representation). 

*  [Resumo do texto](#tabs-summ) 
*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão complexa: Este perfil de extensão representa uma pesquisa clínica

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão complexa: Este perfil de extensão representa uma pesquisa clínica

 **Visão diferencial** 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Visualização instantânea** 

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-pesquisaclinica.csv), [Excel](StructureDefinition-br-core-pesquisaclinica.xlsx), [Schematron](StructureDefinition-br-core-pesquisaclinica.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-pesquisaclinica",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-pesquisaclinica",
  "version" : "1.1.0",
  "name" : "BRCorePesquisaClinica",
  "title" : "Extensão de pesquisa clínica do Core do Brasil",
  "status" : "active",
  "date" : "2025-02-25T10:41:10-03:00",
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
  "description" : "Este perfil de extensão representa uma pesquisa clínica",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "purpose" : "Elemento que deve ser utilizado para representar uma pesquisa clínica",
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
    "expression" : "Immunization.protocolApplied"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Extensão pesquisa clínica",
      "definition" : "Conceitos que definem a pesquisa clínica",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:numeroProtocoloEstudoANVISA",
      "path" : "Extension.extension",
      "sliceName" : "numeroProtocoloEstudoANVISA",
      "short" : "Número do protocolo do estudo na ANVISA",
      "definition" : "Número do protocolo do estudo registrado na ANVISA",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:numeroProtocoloEstudoANVISA.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:numeroProtocoloEstudoANVISA.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "numeroProtocoloEstudoANVISA"
    },
    {
      "id" : "Extension.extension:numeroProtocoloEstudoANVISA.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:numeroVersaoProtocoloEstudo",
      "path" : "Extension.extension",
      "sliceName" : "numeroVersaoProtocoloEstudo",
      "short" : "Número da versão do protocolo do estudo",
      "definition" : "Versão do protocolo de estudo",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:numeroVersaoProtocoloEstudo.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:numeroVersaoProtocoloEstudo.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "numeroVersaoProtocoloEstudo"
    },
    {
      "id" : "Extension.extension:numeroVersaoProtocoloEstudo.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:numeroRegistroVacinaAnvisa",
      "path" : "Extension.extension",
      "sliceName" : "numeroRegistroVacinaAnvisa",
      "short" : "Número do registro da vacina na ANVISA",
      "definition" : "Registro oficial da vacina na ANVISA",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:numeroRegistroVacinaAnvisa.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:numeroRegistroVacinaAnvisa.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "numeroRegistroVacinaAnvisa"
    },
    {
      "id" : "Extension.extension:numeroRegistroVacinaAnvisa.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-pesquisaclinica"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
