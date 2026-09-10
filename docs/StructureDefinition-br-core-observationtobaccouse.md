# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreObservationTobaccoUse - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreObservationTobaccoUse**

## Resource Profile: BRCoreObservationTobaccoUse 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationtobaccouse | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreObservationTobaccoUse |

 
O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.md) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html) para representar a avaliação sobre tabagismo em um registro de atendimento clínico ou em um sumário do paciente 

### Escopo/Uso

Este perfil define expectativas mínimas para o recurso [Observation](https://hl7.org/fhir/R4/observation.html) registrar, pesquisar e buscar dados de status de tabagismo associados a um paciente. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes no recurso e restringe como os elementos são usados. Fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção do recurso

### Uso indevido

O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.md) não deve ser usado para registrar informações sobre consumo de álcool ou uso de outras substâncias, mesmo que forem fumadas. Este perfil é específico para o uso de tabaco e deve ser usado apenas para esse propósito.

### Caso de uso

Este perfil pode ser usado em diferentes contextos clínicos para garantir a interoperabilidade e a consistência na documentação do uso. Exemplos de caso de uso:

* **Consulta de Avaliação de Saúde:** durante uma consulta de avaliação geral de saúde, o médico pode utilizar o perfil para documentar o uso de tabaco do paciente., com o intuito de fornecer uma visão completa dos fatores de risco do paciente, ajudando na avaliação do estado geral de saúde e no planejamento de intervenções.
* **Monitoramento de Pacientes Crônicos:** para pacientes com condições crônicas, como doenças cardiovasculares ou doenças pulmonares obstrutivas crônicas (DPOC), é crucial monitorar o uso de tabaco.
* **Programas de Cessação de Tabaco:** profissionais de saúde que gerenciam programas de cessação de tabaco podem usar o perfil para registrar a história de uso de tabaco dos pacientes.
* **Avaliação Pré-Operatória:** antes de procedimentos cirúrgicos, é importante documentar o uso de tabaco para avaliar riscos anestésicos e cirúrgicos.
* **Consulta com Especialistas:** em consultas com especialistas, como cardiologistas ou pneumologistas, a documentação do uso de tabaco pode ser essencial para entender melhor os fatores de risco do paciente.
* **Gestão de Saúde Pública:** Autoridades de saúde pública podem usar dados agregados do perfil para monitorar tendências de tabagismo na população, para desenvolver políticas de saúde pública e programas de intervenção baseados em dados epidemiológicos.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.md) tem os seguintes elementos como obrigatórios:

1. **status:**status da observação
1. **code:**Código que identifica a observação. No caso desse perfil se usa um código LOINC 72166-2 fixo para o uso de tabaco.
1. **subject:**Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
1. **effective[x]:**O período ou data efetiva em que a observação foi feita.

### Extensões

O perfil pode incluir extensões para adicionar informações adicionais, como a razão da ausência de dados (data-absent-reason).

### Limites e relacionamentos

Este perfil pode ser usado em conjunto com outros perfis FHIR, como o [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) e o [br-core-composition](StructureDefinition-br-core-composition.md), para integrar informações de uso de tabaco em resumos de pacientes.

**Usos:**

* Refere a este Perfil: [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-observationtobaccouse.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [BRCoreObservation](StructureDefinition-br-core-observation.md) 

#### Terminologia Ligações (Diferencial)

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

#### Terminologia Ligações (Diferencial)

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

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-observationtobaccouse.csv), [Excel](StructureDefinition-br-core-observationtobaccouse.xlsx), [Schematron](StructureDefinition-br-core-observationtobaccouse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-observationtobaccouse",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationtobaccouse",
  "version" : "1.1.1",
  "name" : "BRCoreObservationTobaccoUse",
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
  "description" : "O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.html) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html) para representar a avaliação sobre tabagismo em um registro de atendimento clínico ou em um sumário do paciente",
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
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#72166-2 'Tobacco smoking status'",
      "fixedCode" : "72166-2"
    },
    {
      "id" : "Observation.code.coding.display",
      "path" : "Observation.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Tobacco smoking status"
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
      "short" : "Frequência de uso de tabaco nos últimos 3 meses",
      "definition" : "Frequência de uso de tabaco nos últimos 3 meses, codificada conforme o ValueSet BRFreqUsoSubstancia",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRFreqUsoSubstancia"
      }
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].coding.system",
      "path" : "Observation.value[x].coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia conforme o ValueSet BRFreqUsoSubstancia"
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "short" : "Código do conceito de frequência de uso",
      "definition" : "Código LOINC representando a frequência de uso de tabaco nos últimos 3 meses"
    },
    {
      "id" : "Observation.value[x].coding.display",
      "path" : "Observation.value[x].coding.display",
      "short" : "Descrição conforme definido pelo LOINC",
      "definition" : "Representação definida pela terminologia LOINC"
    },
    {
      "id" : "Observation.value[x].coding.userSelected",
      "path" : "Observation.value[x].coding.userSelected",
      "short" : "Se esse código foi selecionado diretamente pelo usuário",
      "definition" : "Se esse código foi selecionado diretamente pelo usuário"
    },
    {
      "id" : "Observation.value[x].text",
      "path" : "Observation.value[x].text",
      "short" : "Representação em texto livre da frequência",
      "definition" : "Representação em texto livre da frequência de uso de tabaco"
    }]
  }
}

```
