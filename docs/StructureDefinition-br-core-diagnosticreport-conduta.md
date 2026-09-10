# BR.GOV.SAUDE.BR-CORE.FHIR\BR Core DiagnosticReport Conduta - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BR Core DiagnosticReport Conduta**

## Extensão: BR Core DiagnosticReport Conduta 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport-conduta | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreDiagnosticReportConduta |

Esta extensão representa uma conduta associada ao laudo, fornecendo orientações ou sugestões baseadas nos resultados do diagnóstico para o manejo clínico do paciente.

**Contexto de uso**

Esta extensão pode ser usada no seguinte elemento(s):

* Element ID DiagnosticReport

**Informações de uso**

**Usos:**

* Usa este Extensão: [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-diagnosticreport-conduta.json)

### Visões formais do conteúdo de extensão

 [Descrição de perfis, diferenciais, instantâneos e como as apresentações XML e JSON funcionam](http://hl7.org/fhir/R4/profiling.html#representation). 

*  [Resumo do texto](#tabs-summ) 
*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão simples com o tipo CodeableConcept: Esta extensão representa uma conduta associada ao laudo, fornecendo orientações ou sugestões baseadas nos resultados do diagnóstico para o manejo clínico do paciente.

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Resumo **

Extensão simples com o tipo CodeableConcept: Esta extensão representa uma conduta associada ao laudo, fornecendo orientações ou sugestões baseadas nos resultados do diagnóstico para o manejo clínico do paciente.

 **Visão diferencial** 

Esta estrutura é derivada de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Visualização instantânea** 

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-diagnosticreport-conduta.csv), [Excel](StructureDefinition-br-core-diagnosticreport-conduta.xlsx), [Schematron](StructureDefinition-br-core-diagnosticreport-conduta.sch) 

#### Terminologia Ligações

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-diagnosticreport-conduta",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport-conduta",
  "version" : "1.1.0",
  "name" : "BRCoreDiagnosticReportConduta",
  "title" : "BR Core DiagnosticReport Conduta",
  "status" : "active",
  "date" : "2026-09-10T12:27:48-04:00",
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
  "description" : "Esta extensão representa uma conduta associada ao laudo, fornecendo orientações ou sugestões baseadas nos resultados do diagnóstico para o manejo clínico do paciente.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
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
    "expression" : "DiagnosticReport"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BR Core DiagnosticReport Conduta",
      "definition" : "Esta extensão representa uma conduta associada ao laudo, fornecendo orientações ou sugestões baseadas nos resultados do diagnóstico para o manejo clínico do paciente."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport-conduta"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCondutaColposcopia"
      }
    }]
  }
}

```
