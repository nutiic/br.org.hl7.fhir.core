# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreObservationBreastfeedingStatus - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreObservationBreastfeedingStatus**

## Resource Profile: BRCoreObservationBreastfeedingStatus 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationbreastfeedingstatus | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreObservationBreastfeedingStatus |

 
Esse recurso [br-core-observationbreastfeedingstatus](StructureDefinition-br-core-observationbreastfeedingstatus.md) é uma restrição do perfil Observation para registrar informações sobre o tipo de aleitamento materno do paciente nos seus primeiros anos de vida 

### Escopo/Uso

Este perfil define expectativas mínimas para o recurso Observation registrar, pesquisar e buscar dados sobre a amamentação associados a um paciente. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes no recurso e restringe como os elementos são usados. Fornece a base para o desenvolvimento de padrões para casos de uso específicos, promovendo a interoperabilidade e a adoção do recurso.

### Uso indevido

Esse recurso é específico para o registro do tipo de aleitamento do paciente nos seus primeiros anos de vida, não devendo ser utilizado em outras observações que não envolvam a amamentação.

### Caso de uso

Este perfil pode ser usado em diferentes contextos clínicos para garantir a interoperabilidade e a consistência na documentação do uso. Exemplos de caso de uso:

* Consulta de Avaliação de Saúde de Puericultura 
* Documentar a amamentação durante uma consulta de avaliação geral de saúde.
 
* Monitoramento de Pacientes Pediátricos
* Avaliar o impacto da amamentação em pacientes pediátricos.
* Programas de Promoção do Aleitamento Materno
* Registrar a história de amamentação e acompanhar o progresso do paciente em programas de promoção da amamentação.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

1. **status:**status da observação
1. **code:**Identifica o tipo de observação. No caso da amamentação, é comum utilizar um código LOINC apropriado, como 74012-6 para “Amamentação”.
1. **subject:**Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
1. **effective[x]:**O período ou data efetiva em que a observação foi feita.
1. **value[x].valueCodeableConcept:**para registrar o tipo de aleitamento, usando o VS BRTipoaleitamentomaterno
1. **Data-absent-reason:**must support quando a informação sobre amamentação não estiver presente no registro do Sumário do Paciente.

### Extensões

O perfil pode incluir extensões para adicionar informações adicionais, como a razão da ausência de dados (data-absent-reason).

### Limites e relacionamentos

Este perfil pode ser usado em conjunto com outros perfis FHIR, como o [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) e o [br-core-composition](StructureDefinition-br-core-composition.md), para integrar informações de amamentação em resumos de pacientes.

**Usos:**

* Refere a este Perfil: [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-observationbreastfeedingstatus.json)

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

Deve ser suportado: 1 elemento

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x]

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

Deve ser suportado: 1 elemento

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x]

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-observationbreastfeedingstatus.csv), [Excel](StructureDefinition-br-core-observationbreastfeedingstatus.xlsx), [Schematron](StructureDefinition-br-core-observationbreastfeedingstatus.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-observationbreastfeedingstatus",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationbreastfeedingstatus",
  "version" : "1.1.0",
  "name" : "BRCoreObservationBreastfeedingStatus",
  "status" : "active",
  "date" : "2026-09-10T13:05:34-04:00",
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
  "description" : "Esse recurso [br-core-observationbreastfeedingstatus](StructureDefinition-br-core-observationbreastfeedingstatus.html) é uma restrição do perfil Observation para registrar informações sobre o tipo de aleitamento materno do paciente nos seus primeiros anos de vida",
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
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoAleitamentoMaterno"
      }
    }]
  }
}

```
