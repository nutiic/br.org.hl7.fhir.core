# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreObservationPregnancyOutcome - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreObservationPregnancyOutcome**

## Resource Profile: BRCoreObservationPregnancyOutcome 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyoutcome | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreObservationPregnancyOutcome |

 
Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar o histórico resumido dos resultados da gravidez. 

### Escopo/Uso

O perfil [br-core-observationpregnancyoutcome](StructureDefinition-br-core-observationpregnancyoutcome.md) ou **Histórico Obstétrico**, é utilizado para registrar e gerenciar informações sobre os resultados de gestações de uma paciente. Este perfil define os elementos e extensões necessários para documentar os resultados de gestações, como nascimento vivo.

Ele é utilizado para coletar dados de gestações e seus resultados, fornecendo informações importantes para a tomada de decisões clínicas, ajudando os médicos a planejar cuidados e intervenções apropriadas baseadas no histórico obstétrico da paciente.

### Uso indevido

O perfil é focado apenas em resultados de gestações, não sendo adequado para outras observações clínicas não relacionadas à gestação.

### Caso de uso

1. Consulta do estado de gravidez de um paciente
1. Registrar ou atualizar um estado de gravidez passado ou presente

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes (definição obrigatória) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição de suporte obrigatório). Eles são apresentados abaixo em uma explicação simples e legível. Orientações e exemplos específicos do perfil também são fornecidos. As Visualizações Formais abaixo fornecem o resumo formal, as definições e os requisitos de terminologia.

Para o perfil [br-core-observationpregnancyoutcome](StructureDefinition-br-core-observationpregnancyoutcome.md) os elementos de dados que são obrigatórios (mandatórios) e os que devem ser suportados (must support) são:

1. **code:**Código que identifica a observação como relacionada ao resultado da gestação.
1. **subject:**Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
1. **subject.reference:**Referência literal, URL relativa, interna ou absoluta
1. **effective[x]:**O período ou data efetiva em que a observação foi feita.
1. **data-absent-reason:**Motivo pelo qual algum dado está ausente, se aplicável.

**Elementos apenas Must Support:**

1. **value[x]:valueQuantity:**O Resultado real da observação, como um código que representa o resultado da gestação (ex: nascimento vivo, natimorto).

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

Este perfil é específico para registrar o status de gestação, não sendo adequado para outras condições ou observações clínicas e tem utilização restrita a contextos onde a informação de gestação é relevante ou necessária, como em pacientes que estão em idade reprodutiva ou em procedimentos que envolvem a saúde reprodutiva.

Frequentemente, o status de gestação é determinado durante um Encounter, e essa relação ajuda a contextualizar a observação dentro do atendimento ao paciente.

Ele pode estar relacionado ao perfil Condition, pois pode ser necessário para registrar condições específicas de saúde que afetam ou são afetadas pela gestação, fornecendo contexto adicional para a observação.

**Usos:**

* Refere a este Perfil: [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-observationpregnancyoutcome.json)

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

Deve ser suportado: 4 elementos

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

Deve ser suportado: 4 elementos

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-observationpregnancyoutcome.csv), [Excel](StructureDefinition-br-core-observationpregnancyoutcome.xlsx), [Schematron](StructureDefinition-br-core-observationpregnancyoutcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-observationpregnancyoutcome",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyoutcome",
  "version" : "1.1.0",
  "name" : "BRCoreObservationPregnancyOutcome",
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
  "description" : "Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar o histórico resumido dos resultados da gravidez.",
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
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/pregnancies-summary-uv-ips"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "mustSupport" : true
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "mustSupport" : true
    }]
  }
}

```
