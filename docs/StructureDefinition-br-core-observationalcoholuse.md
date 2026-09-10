# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreObservationAlcoholUse - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreObservationAlcoholUse**

## Resource Profile: BRCoreObservationAlcoholUse 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationalcoholuse | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreObservationAlcoholUse |

 
O perfil [br-core-observationalcoholuse](StructureDefinition-br-core-observationalcoholuse.md) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html), projetado para documentar a avaliação do uso de álcool em um resumo de paciente 

### Escopo/Uso

Este perfil define expectativas mínimas para o recurso Observation registrar, pesquisar e buscar dados sobre o consumo de álcool associados a um paciente. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes no recurso e restringe como os elementos são usados. Fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção do recurso.

### Uso indevido

O perfil [br-core-observationalcohooluse](StructureDefinition-br-core-observationalcoholuse.md) é projetado para documentar o uso de álcool na história social de um paciente, e seu uso deve ser adequado ao contexto clínico específico e não deve ser utilizado para registrar outros comportamentos de saúde.

### Caso de uso

Este perfil pode ser usado em diferentes contextos clínicos para garantir a interoperabilidade e a consistência na documentação do uso. Exemplos de caso de uso:

* Consulta de Avaliação de Saúde:
* Documentar o uso de álcool durante uma consulta de avaliação geral de saúde.
* Monitoramento de Pacientes Crônicos:
* Avaliar o impacto do uso de álcool em pacientes com condições crônicas.
* Programas de Cessação de Álcool:
* Registrar a história de uso de álcool e acompanhar o progresso do paciente em programas de cessação.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

1. **status:**status da observação
1. **code:**Identifica o tipo de observação. No caso do uso de álcool, é comum utilizar um código LOINC apropriado, como 74013-4 para “Uso de álcool”.
1. **subject:**Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
1. **effective[x]:**O período ou data efetiva em que a observação foi feita.
1. **Data-absent-reason:**must support quando a informação sobre uso de álcool não estiverem presentes no registro do Sumário do Paciente

### Extensões

O perfil pode incluir extensões para adicionar informações adicionais, como a razão da ausência de dados (data-absent-reason).

### Limites e relacionamentos

Este perfil pode ser usado em conjunto com outros perfis FHIR, como o [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) e o [br-core-composition](StructureDefinition-br-core-composition.md), para integrar informações de uso de álcool em resumos de pacientes.

**Usos:**

* Refere a este Perfil: [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-observationalcoholuse.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [BRCoreObservation](StructureDefinition-br-core-observation.md) 

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [BRCoreObservation](StructureDefinition-br-core-observation.md) 

** Resumo **

Obrigatório: 0 elemento(1 aninhado obrigatoriamente elemento)
 Fixo: 1 elemento

 **Visão diferencial** 

Esta estrutura é derivada de [BRCoreObservation](StructureDefinition-br-core-observation.md) 

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [BRCoreObservation](StructureDefinition-br-core-observation.md) 

** Resumo **

Obrigatório: 0 elemento(1 aninhado obrigatoriamente elemento)
 Fixo: 1 elemento

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-observationalcoholuse.csv), [Excel](StructureDefinition-br-core-observationalcoholuse.xlsx), [Schematron](StructureDefinition-br-core-observationalcoholuse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-observationalcoholuse",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationalcoholuse",
  "version" : "1.1.1",
  "name" : "BRCoreObservationAlcoholUse",
  "status" : "active",
  "date" : "2026-09-10T13:58:29-04:00",
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
  "description" : "O perfil [br-core-observationalcoholuse](StructureDefinition-br-core-observationalcoholuse.html) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html), projetado para documentar a avaliação do uso de álcool em um resumo de paciente",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Observation.code.coding.system",
      "path" : "Observation.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.code.coding.code",
      "path" : "Observation.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#74013-4 'Alcoholic drinks per day'",
      "fixedCode" : "74013-4"
    },
    {
      "id" : "Observation.code.coding.display",
      "path" : "Observation.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Alcoholic drinks per day"
    },
    {
      "id" : "Observation.code.coding.userSelected",
      "path" : "Observation.code.coding.userSelected",
      "short" : "Se esse código foi selecionado diretamente pelo usuário",
      "definition" : "Se esse código foi selecionado diretamente pelo usuário"
    },
    {
      "id" : "Observation.code.text",
      "path" : "Observation.code.text",
      "short" : "Representação do texto livre do conceito",
      "definition" : "Representação em texto livre do conceito codificado"
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Número de doses de álcool ingeridas por dia",
      "definition" : "Quantidade de doses de álcool ingeridas por dia, conforme o código LOINC 74013-4 'Alcoholic drinks per day'",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "short" : "Valor numérico da quantidade de doses",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "short" : "Unidade de medida em texto (p.ex. doses/dia)"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "short" : "Sistema de unidades (UCUM)",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "short" : "Código UCUM da unidade de medida"
    }]
  }
}

```
