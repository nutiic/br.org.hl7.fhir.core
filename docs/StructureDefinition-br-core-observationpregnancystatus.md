# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreObservationPregnancyStatus - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreObservationPregnancyStatus**

## Resource Profile: BRCoreObservationPregnancyStatus 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancystatus | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreObservationPregnancyStatus |

 
Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar o estado da gravidez. 

### Escopo/Uso

O Perfil [br-core-observationpregnancystatus](StructureDefinition-br-core-observationpregnancystatus.md) herda do recurso FHIR R4 [Observation](https://hl7.org/fhir/R4/observation.html) - consulte-o para obter definições de escopo e uso. Esse perfil atende aos requisitos do elemento de dados de Status de Gravidez do br-core. Ele define expectativas mínimas para o recurso de registrar, pesquisar e buscar a observação do estado ou condição de gravidez da paciente. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes no recurso e restringe como os elementos são usados.

### Uso indevido

Este perfil é irrelevante e não deve ser usado para pacientes masculinos, pois a gestação não se aplica a eles, assim como em crianças e adolescentes que não estão em período reprodutivo ou nos casos que o atendimento clínico não tem relação com a gestação, como consultas de rotina para gripe ou pequenas lesões.

### Caso de uso

1. Consulta do estado de gravidez de um paciente
1. Registrar ou atualizar um estado de gravidez passado ou presente

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Para o perfil [br-core-observationpregnancystatus](StructureDefinition-br-core-observationpregnancystatus.md) os elementos de dados que são obrigatórios (mandatórios) e os que devem ser suportados (must support) são:

1. **code:**Código que identifica a observação como relacionada ao resultado da gestação.
1. **subject:**Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
1. **subject.reference:**Referência literal, URL relativa, interna ou absoluta
1. **effective[x]:**O período ou data efetiva em que a observação foi feita.
1. **data-absent-reason:**Motivo pelo qual algum dado está ausente, se aplicável.
1. **hasMember.reference:**Referência literal, URL relativa, interna ou absoluta

**Elementos apenas Must Support:**

1. **value[x]:valueCodeableConcept:**Concept - reference to a terminology or just text
1. **hasMember:**Data provável do parto

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

O perfil está diretamente relacionado ao recurso de [br-core-patient](StructureDefinition-br-core-patient.md), identificando a pessoa cujo resultado de gestação está sendo registrado. Muitas vezes, o resultado da gestação é determinado durante um encounter (br-core-encounter), e essa relação ajuda a contextualizar a observação dentro do atendimento contínuo ao paciente.

Relaciona-se também aos profissionais de saúde ([br-core-practitioner](StructureDefinition-br-core-practitioner.md)) que realizaram o acompanhamento ou a determinação do resultado da gestação.

Pode estar relacionado a condições específicas de saúde que afetam ou são afetadas pela gestação, fornecendo contexto adicional para a observação, sendo relacionado ao perfil [br-core-condition](StructureDefinition-br-core-condition.md) e também pode estar associado a outras observações ou resultados de testes que influenciam a determinação do resultado da gestação.

**Usos:**

* Refere a este Perfil: [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-observationpregnancystatus.json)

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

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x]

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-observationpregnancystatus.csv), [Excel](StructureDefinition-br-core-observationpregnancystatus.xlsx), [Schematron](StructureDefinition-br-core-observationpregnancystatus.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-observationpregnancystatus",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancystatus",
  "version" : "1.1.0",
  "name" : "BRCoreObservationPregnancyStatus",
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
  "description" : "Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar o estado da gravidez.",
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
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips"
      }
    }]
  }
}

```
