# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreCarePlan - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreCarePlan**

## Resource Profile: BRCoreCarePlan 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreCarePlan |

 
Este perfil restringe o recurso [CarePlan](https://hl7.org/fhir/R4/careplan.html) que descreve a intenção de como um ou mais profissionais pretendem prestar cuidados a um determinado paciente, grupo ou comunidade por um período de tempo, possivelmente limitado ao cuidado de uma condição específica ou conjunto de condições 

### Escopo/Uso

O recurso [br-core-careplan](StructureDefinition-br-core-careplan.md) é um dos recursos de solicitação na especificação do fluxo de trabalho do FHIR .

Os Planos de Cuidado ([CarePlan](https://hl7.org/fhir/R4/careplan.html)) são usados em muitas áreas da assistência médica com uma variedade de escopos. Eles podem ser tão simples quanto um clínico geral controlando quando seu paciente deve tomar a próxima imunização contra tétano até um plano detalhado para um paciente oncológico cobrindo dieta, quimioterapia, radiação, trabalho de laboratório e aconselhamento com relações de tempo detalhadas, pré-condições e objetivos. Eles podem ser usados em cuidados veterinários ou pesquisa clínica para descrever o cuidado de um rebanho ou outra coleção de animais. Na saúde pública, eles podem descrever campanhas de educação ou imunização.

Este recurso adota uma abordagem intermediária para a complexidade. Ele captura detalhes básicos sobre quem está envolvido e quais ações são pretendidas sem lidar com dados discretos sobre dependências e relacionamentos de tempo. Eles podem ser suportados quando necessário usando o mecanismo de extensão.

O escopo do recurso [br-core-careplan](StructureDefinition-br-core-careplan.md) pode variar amplamente. Exemplos incluem:

* Planos de cuidado multidisciplinares e interorganizacionais; por exemplo, um plano de oncologia que inclua o oncologista, a equipe domiciliar de enfermagem, a farmácia e outros;
* Planos para gerenciar doenças/condições específicas (por exemplo, plano nutricional para um paciente após ressecção intestinal, plano neurológico após traumatismo craniano, plano pré-natal, plano pós-parto, plano de gerenciamento do luto, etc.);
* Planos de suporte à decisão gerados seguindo diretrizes de prática específicas (por exemplo, plano de tratamento de AVC, plano de diabetes, prevenção de quedas, etc.)
* Planos auto-mantidos pelo paciente ou cuidador, identificando seus objetivos e uma compreensão integrada das ações a serem tomadas

O recurso [br-core-careplan](StructureDefinition-br-core-careplan.md) pode ser usado para representar tanto os planos propostos (por exemplo, recomendações de um mecanismo de suporte à decisão ou retornados como parte de um relatório de consulta) quanto os planos ativos. A natureza do plano é comunicada pelo elemento status. Alguns sistemas podem precisar filtrar [CarePlan](https://hl7.org/fhir/R4/careplan.html) para garantir que apenas planos apropriados sejam expostos por meio de uma determinada interface de usuário.

### Caso de uso

A seguir estão alguns exemplos de cenários de uso para este perfil:

* Consultar o plano de cuidados pertencente a um Paciente;
* Registrar ou atualizar um plano de cuidados existente.

### Caso de uso da RNDS

Descreve o plano de um ou mais profissionais para o cuidado de um paciente em particular, grupo ou comunidade em um período, possivelmente limitado ao cuidado de uma condição específica ou conjunto de condições.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada Perfil [br-core-careplan](StructureDefinition-br-core-careplan.md) deve ter:**

1. Status – indica se o plano está sendo executado atualmente, representa intenções futuras ou agora é um registro histórico.
1. 

| | | | |
| :--- | :--- | :--- | :--- |
| Intent – códigos que indicam o grau de autoridade/intencionalidade associado a um plano de cuidados (proposta | plano | pedido | opção). |


**Cada Perfil [br-core-careplan](StructureDefinition-br-core-careplan.md) deve oferecer suporte a:** Não há elementos.

### Limites e relacionamentos

Para simplificar, o [br-core-careplan](StructureDefinition-br-core-careplan.md) permite a definição inline de atividades como parte de um plano usando o elemento activity.detail. No entanto, as atividades também podem ser definidas usando referências aos vários recursos “request”. Essas referências podem ser para recursos com status “planejado” ou para um pedido ativo. É possível que atividades planejadas existam (por exemplo, compromissos) sem precisar de um [CarePlan](https://hl7.org/fhir/R4/careplan.html). Os recursos [br-core-careplan](StructureDefinition-br-core-careplan.md) são usados quando há necessidade de agrupar atividades, metas e/ou participantes para fornecer algum grau de contexto.

Os recursos [br-core-careplan](StructureDefinition-br-core-careplan.md) podem ser vinculados a condições ([br-core-condition](StructureDefinition-br-core-condition.md)) específicas, mas também podem ser independentes da condição e, em vez disso, focados em um tipo específico de cuidado (por exemplo, psicológico, nutricional) ou no cuidado prestado por um profissional ou grupo de profissionais específico.

Uma recomendação de imunização ([ImmunizationRecommendation](https://hl7.org/fhir/R4/ImmunizationRecommendation.html)) pode ser interpretada como um tipo restrito de [CarePlan](https://hl7.org/fhir/R4/careplan.html) lidando apenas com eventos de imunização. Onde tais informações podem aparecer em qualquer recurso, o recurso específico de imunização é o preferido.

Os recursos [br-core-careplan](StructureDefinition-br-core-careplan.md) representam uma instância de plano específica para um paciente ou grupo específico. Não se destina a ser usado para definir planos ou protocolos genéricos que sejam independentes de um indivíduo ou grupo específico. O [br-core-careplan](StructureDefinition-br-core-careplan.md) representa uma intenção específica, não uma definição geral. Protocolos e conjuntos de pedidos são suportados por meio de [PlanDefinition](https://hl7.org/fhir/R4/plandefinition.html).

Este recurso é referenciado por [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md), [GuidanceResponse](https://hl7.org/fhir/R4/guidanceresponse.html#GuidanceResponse), [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html#ImagingStudy), [Media](https://hl7.org/fhir/R4/media.html#Media), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [br-core-observation](StructureDefinition-br-core-observation.md), [br-core-procedure](StructureDefinition-br-core-procedure.md), [QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html#QuestionnaireResponse) e [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest).

**Usos:**

* Refere a este Perfil: [BRCoreCarePlan](StructureDefinition-br-core-careplan.md), [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md)... Show 6 more, [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md), [br-core-sumarioalta](StructureDefinition-br-core-sumarioalta.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-careplan.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

** Resumo **

Obrigatório: 5 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)

 **Visão diferencial** 

Esta estrutura é derivada de [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

** Resumo **

Obrigatório: 5 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-careplan.csv), [Excel](StructureDefinition-br-core-careplan.xlsx), [Schematron](StructureDefinition-br-core-careplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-careplan",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan",
  "version" : "1.1.0",
  "name" : "BRCoreCarePlan",
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
  "description" : "Este perfil restringe o recurso [CarePlan](https://hl7.org/fhir/R4/careplan.html) que descreve a intenção de como um ou mais profissionais pretendem prestar cuidados a um determinado paciente, grupo ou comunidade por um período de tempo, possivelmente limitado ao cuidado de uma condição específica ou conjunto de condições",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.id",
      "path" : "CarePlan.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "CarePlan.meta",
      "path" : "CarePlan.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "CarePlan.implicitRules",
      "path" : "CarePlan.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "CarePlan.language",
      "path" : "CarePlan.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "CarePlan.text",
      "path" : "CarePlan.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "CarePlan.contained",
      "path" : "CarePlan.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "CarePlan.extension",
      "path" : "CarePlan.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "CarePlan.modifierExtension",
      "path" : "CarePlan.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "CarePlan.identifier",
      "path" : "CarePlan.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "CarePlan.instantiatesCanonical",
      "path" : "CarePlan.instantiatesCanonical",
      "short" : "Instância o protocolo ou definição FHIR",
      "definition" : "Instância o protocolo ou definição FHIR"
    },
    {
      "id" : "CarePlan.instantiatesUri",
      "path" : "CarePlan.instantiatesUri",
      "short" : "uri da instância do protocolo ou definição FHIR",
      "definition" : "uri da instância do protocolo ou definição FHIR"
    },
    {
      "id" : "CarePlan.basedOn",
      "path" : "CarePlan.basedOn",
      "short" : "De acordo com o Plano de Cuidado",
      "definition" : "De acordo com o Plano de Cuidado",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan"]
      }]
    },
    {
      "id" : "CarePlan.replaces",
      "path" : "CarePlan.replaces",
      "short" : "Plano de Cuidado substituído por este Plano de Cuidado",
      "definition" : "Plano de Cuidado substituído por este Plano de Cuidado",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan"]
      }]
    },
    {
      "id" : "CarePlan.partOf",
      "path" : "CarePlan.partOf",
      "short" : "Parte do Plano de Cuidado referenciado",
      "definition" : "Parte do Plano de Cuidado referenciado",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan"]
      }]
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "short" : "O status desse Plano de Cuidado: draft | active | on-hold | revoked | completed | entered-in-error | unknown",
      "definition" : "O status desse Plano de Cuidado: draft | active | on-hold | revoked | completed | entered-in-error | unknown"
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "short" : "Propósito do Plano de Cuidado definido: proposal | plan | order | option",
      "definition" : "Propósito do Plano de Cuidado definido: proposal | plan | order | option"
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "short" : "Tipo de Plano de Cuidado",
      "definition" : "Tipo de Plano de Cuidado"
    },
    {
      "id" : "CarePlan.title",
      "path" : "CarePlan.title",
      "short" : "Nome do Plano de Cuidado",
      "definition" : "Nome do Plano de Cuidado"
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "short" : "Descrição do Plano de Cuidado",
      "definition" : "Descrição do Plano de Cuidado",
      "min" : 1
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "short" : "Paciente referenciado pelo Plano de Cuidado",
      "definition" : "Paciente referenciado pelo Plano de Cuidado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "short" : "Atendimento referenciado pelo Plano de Cuidado",
      "definition" : "Atendimento referenciado pelo Plano de Cuidado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "short" : "O período de tempo que o Plano de Cuidado abrange",
      "definition" : "O período de tempo que o Plano de Cuidado abrange"
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "short" : "Data de criação do Plano de Cuidado",
      "definition" : "Data de criação do Plano de Cuidado"
    },
    {
      "id" : "CarePlan.author",
      "path" : "CarePlan.author",
      "short" : "Autoria do Plano de Cuidado",
      "definition" : "Autoria do Plano de Cuidado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }]
    },
    {
      "id" : "CarePlan.contributor",
      "path" : "CarePlan.contributor",
      "short" : "Colaboradores na definição do Plano de Cuidado",
      "definition" : "Colaboradores na definição do Plano de Cuidado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }]
    },
    {
      "id" : "CarePlan.careTeam",
      "path" : "CarePlan.careTeam",
      "short" : "Equipe assistêncial envolvida no Plano de Cuidado",
      "definition" : "Equipe assistêncial envolvida no Plano de Cuidado"
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "short" : "Problemas de saúde referenciado neste Plano de Cuidado",
      "definition" : "Problemas de saúde referenciado neste Plano de Cuidado",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition"]
      }]
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "short" : "Informações adicionais do Plano de Cuidado",
      "definition" : "Informações adicionais do Plano de Cuidado"
    },
    {
      "id" : "CarePlan.goal",
      "path" : "CarePlan.goal",
      "short" : "Resultado esperado do Plano de Cuidado",
      "definition" : "Resultado esperado do Plano de Cuidado"
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "short" : "Atividade parte do Plano de Cuidado",
      "definition" : "Atividade parte do Plano de Cuidado",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "CarePlan.activity.id",
      "path" : "CarePlan.activity.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "CarePlan.activity.extension",
      "path" : "CarePlan.activity.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "CarePlan.activity.modifierExtension",
      "path" : "CarePlan.activity.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "CarePlan.activity.outcomeCodeableConcept",
      "path" : "CarePlan.activity.outcomeCodeableConcept",
      "short" : "Resultados da atividade",
      "definition" : "Resultados da atividade"
    },
    {
      "id" : "CarePlan.activity.outcomeReference",
      "path" : "CarePlan.activity.outcomeReference",
      "short" : "Referência à 'Appointment', 'Encounter', 'Procedure', etc",
      "definition" : "Referência à 'Appointment', 'Encounter', 'Procedure', etc"
    },
    {
      "id" : "CarePlan.activity.progress",
      "path" : "CarePlan.activity.progress",
      "short" : "Comentários sobre o status/progresso da atividade",
      "definition" : "Comentários sobre o status/progresso da atividade"
    },
    {
      "id" : "CarePlan.activity.reference",
      "path" : "CarePlan.activity.reference",
      "short" : "Detalhes da atividade definidos em recursos específicos",
      "definition" : "Detalhes da atividade definidos em recursos específicos"
    },
    {
      "id" : "CarePlan.activity.detail",
      "path" : "CarePlan.activity.detail",
      "short" : "Definição da atividade",
      "definition" : "Definição da atividade",
      "min" : 1
    },
    {
      "id" : "CarePlan.activity.detail.id",
      "path" : "CarePlan.activity.detail.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "CarePlan.activity.detail.modifierExtension",
      "path" : "CarePlan.activity.detail.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que não podem ser ignoradas"
    },
    {
      "id" : "CarePlan.activity.detail.kind",
      "path" : "CarePlan.activity.detail.kind",
      "short" : "Tipos de recursos definidos como parte do FHIR que podem ser representados como definições em conformidade de uma atividade do Plano de Cuidados",
      "definition" : "Tipos de recursos definidos como parte do FHIR que podem ser representados como definições em conformidade de uma atividade do Plano de Cuidados"
    },
    {
      "id" : "CarePlan.activity.detail.instantiatesCanonical",
      "path" : "CarePlan.activity.detail.instantiatesCanonical",
      "short" : "Instância o protocolo ou definição FHIR",
      "definition" : "Instância o protocolo ou definição FHIR"
    },
    {
      "id" : "CarePlan.activity.detail.instantiatesUri",
      "path" : "CarePlan.activity.detail.instantiatesUri",
      "short" : "Instância protocolo externo ou definição",
      "definition" : "Instância protocolo externo ou definição"
    },
    {
      "id" : "CarePlan.activity.detail.code",
      "path" : "CarePlan.activity.detail.code",
      "short" : "Código da atividade",
      "definition" : "Código da atividade",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRSubgrupoTabelaSUS"
      }
    },
    {
      "id" : "CarePlan.activity.detail.reasonCode",
      "path" : "CarePlan.activity.detail.reasonCode",
      "short" : "Por quê a atividade deve ser feita ou por quê a atividade foi proibida",
      "definition" : "Por quê a atividade deve ser feita ou por quê a atividade foi proibida"
    },
    {
      "id" : "CarePlan.activity.detail.reasonReference",
      "path" : "CarePlan.activity.detail.reasonReference",
      "short" : "Por quê a atividade é necessária",
      "definition" : "Por quê a atividade é necessária"
    },
    {
      "id" : "CarePlan.activity.detail.goal",
      "path" : "CarePlan.activity.detail.goal",
      "short" : "Objetivos da atividade",
      "definition" : "Objetivos da atividade"
    },
    {
      "id" : "CarePlan.activity.detail.status",
      "path" : "CarePlan.activity.detail.status",
      "short" : "Código que reflete o estado atual de uma atividade do Planos de Cuidado",
      "definition" : "Código que reflete o estado atual de uma atividade do Planos de Cuidado"
    },
    {
      "id" : "CarePlan.activity.detail.statusReason",
      "path" : "CarePlan.activity.detail.statusReason",
      "short" : "Motivo do status atual",
      "definition" : "Motivo do status atual"
    },
    {
      "id" : "CarePlan.activity.detail.doNotPerform",
      "path" : "CarePlan.activity.detail.doNotPerform",
      "short" : "Se for verdade, a atividade não deve ser realizada",
      "definition" : "Se for verdade, a atividade não deve ser realizada"
    },
    {
      "id" : "CarePlan.activity.detail.scheduled[x]",
      "path" : "CarePlan.activity.detail.scheduled[x]",
      "short" : "Quando a atividade deve ocorrer",
      "definition" : "Quando a atividade deve ocorrer",
      "min" : 1
    },
    {
      "id" : "CarePlan.activity.detail.location",
      "path" : "CarePlan.activity.detail.location",
      "short" : "Onde a atividade deve ocorrer",
      "definition" : "Onde a atividade deve ocorrer"
    },
    {
      "id" : "CarePlan.activity.detail.performer",
      "path" : "CarePlan.activity.detail.performer",
      "short" : "Responsável pela atividade",
      "definition" : "Responsável pela atividade"
    },
    {
      "id" : "CarePlan.activity.detail.product[x]",
      "path" : "CarePlan.activity.detail.product[x]",
      "short" : "O que deve ser administrado/fornecido",
      "definition" : "O que deve ser administrado/fornecido"
    },
    {
      "id" : "CarePlan.activity.detail.dailyAmount",
      "path" : "CarePlan.activity.detail.dailyAmount",
      "short" : "Quantidade diária a ser consumida/fornecida/administrada",
      "definition" : "Quantidade diária a ser consumida/fornecida/administrada"
    },
    {
      "id" : "CarePlan.activity.detail.quantity",
      "path" : "CarePlan.activity.detail.quantity",
      "short" : "Quantidade a ser consumida/fornecida/administrada",
      "definition" : "Quantidade a ser consumida/fornecida/administrada"
    },
    {
      "id" : "CarePlan.activity.detail.description",
      "path" : "CarePlan.activity.detail.description",
      "short" : "Descrição da atividade a ser realizada",
      "definition" : "Descrição da atividade a ser realizada",
      "min" : 1
    },
    {
      "id" : "CarePlan.note",
      "path" : "CarePlan.note",
      "short" : "Comentários sobre o Planos de Cuidado",
      "definition" : "Comentários sobre o Planos de Cuidado"
    }]
  }
}

```
