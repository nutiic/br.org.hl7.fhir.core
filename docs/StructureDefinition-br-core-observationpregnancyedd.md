# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreObservationPregnancyEDD - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreObservationPregnancyEDD**

## Resource Profile: BRCoreObservationPregnancyEDD 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyedd | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreObservationPregnancyEDD |

 
Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar a data prevista para o parto 

### Escopo/Uso

O perfil [br-core-observationpregnancyedd](StructureDefinition-br-core-observationpregnancyedd.md) define os elementos e extensões necessários para registrar a data prevista do parto de uma paciente grávida. O perfil inclui campos para a data em que a data prevista do parto foi registrada e a data efetiva estimada, utiliza o elemento effectivePeriod para indicar o período durante o qual a data prevista do parto foi estimada.

**Uso:**

* **Consulta da Data Prevista do Parto:** Permite que os sistemas de saúde consultem e obtenham a data prevista do parto de uma paciente de forma padronizada e interoperável.
* **Atualização da Data Prevista do Parto:** Facilita a atualização da data prevista do parto em diferentes sistemas de prontuários eletrônicos (EHRs).

### Uso indevido

O perfil [br-core-observationpregnancyedd](StructureDefinition-br-core-observationpregnancyedd.md) deve ser usado exclusivamente para registrar e gerenciar a data prevista do parto de uma paciente grávida e não deve ser utilizado em consultas ou procedimentos que não envolvem a saúde reprodutiva ou a gestação da paciente.

### Caso de uso

Utilizado por obstetras e outros profissionais de saúde para documentar a data prevista do parto durante as consultas de pré-natal. Ajuda no planejamento e agendamento de consultas, exames e intervenções necessárias ao longo da gestação.

Em casos de gestações de alto risco, a data prevista do parto é crítica para monitorar a saúde da mãe e do bebê, pois permite o acompanhamento rigoroso da evolução da gestação e a preparação para possíveis intervenções médicas.

O uso do perfil garante que todos os profissionais envolvidos no cuidado da gestante tenham acesso à data prevista do parto, melhorando a coordenação dos cuidados e contribui para a coleta de dados precisos sobre a duração da gestação e os resultados perinatais, ajudando a identificar tendências e necessidades de saúde pública.

Em programas de planejamento familiar, a data prevista do parto é usada para educar e preparar os futuros pais.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes (definição obrigatória) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição de suporte obrigatório). Eles são apresentados abaixo em uma explicação simples e legível. Orientações e exemplos específicos do perfil também são fornecidos. As Visualizações Formais abaixo fornecem o resumo formal, as definições e os requisitos de terminologia.

Para o perfil [br-core-observationpregnancyedd](StructureDefinition-br-core-observationpregnancyedd.md) os elementos de dados que são obrigatórios (mandatórios) e os que devem ser suportados (must support) são:

1. code: Código que identifica a observação como relacionada ao resultado da gestação.
1. subject: Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
1. subject. reference: Referência literal, URL relativa, interna ou absoluta
1. effective[x]: O período ou data efetiva em que a observação foi feita.
1. data-absent-reason: Motivo pelo qual algum dado está ausente, se aplicável.

Elementos apenas Must Support:

* value[x]:valueQuantity: O Resultado real da observação, como um código que representa o resultado da gestação (ex: nascimento vivo, natimorto).
* O elemento absentreason é must support se a informação sobre a data provável do parto não estiver registrada

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

Este perfil é específico para registrar a data prevista do parto e não deve ser usado para outras informações clínicas ou de saúde.

O perfil está diretamente relacionado ao recurso de [br-core-patient](StructureDefinition-br-core-patient.md), identificando a pessoa cujo status de gestação está sendo registrado. Relaciona-se também ao performer , que determinou ou registrou a data prevista do parto. Muitas vezes, a data prevista do parto é determinada durante um encontro clínico ([br-core-encounter](StructureDefinition-br-core-encounter.md)), e essa relação ajuda a contextualizar a observação dentro do atendimento contínuo ao paciente, podendo estar relacionado ao registro [br-core-condition](StructureDefinition-br-core-condition.md), para registrar condições de saúde específicas que influenciam a gestação e a data prevista do parto. Finalmente, este recurso pode estar associado a outras observações ou outros resultados de testes que influenciam a estimativa da data prevista do parto.

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-observationpregnancyedd.json)

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

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-observationpregnancyedd.csv), [Excel](StructureDefinition-br-core-observationpregnancyedd.xlsx), [Schematron](StructureDefinition-br-core-observationpregnancyedd.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-observationpregnancyedd",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyedd",
  "version" : "1.1.0",
  "name" : "BRCoreObservationPregnancyEDD",
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
  "description" : "Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar a data prevista para o parto",
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
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/edd-method-uv-ips"
      }
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
      "definition" : "Código do conceito na sintaxe definida pela terminologia"
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
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "mustSupport" : true
    }]
  }
}

```
