# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-careteam - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-careteam**

## Resource Profile: br-core-careteam 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careteam | *Versão*:1.1.0 |
| Active as of 2026-09-01 | *Nome computável*:BRCoreCareTeam |

 
Este perfil restringe o recurso [CareTeam](https://hl7.org/fhir/R4/careteam.html) que inclui todas as pessoas e organizações que planejam participar da coordenação e prestação de cuidados a um paciente 

### Escopo/Uso

O recurso [br-core-careteam](StructureDefinition-br-core-careteam.md) inclui todas as pessoas, equipes e organizações que planejam participar da coordenação e entrega de cuidados para um único paciente ou um grupo (como um casal em terapia ou um grupo de apoio). O recurso [br-core-careteam](StructureDefinition-br-core-careteam.md) também pode ser atribuído organizacionalmente sem um sujeito em contexto, como uma equipe de código azul ou equipe de resposta a emergências. Isso não se limita a profissionais, mas pode incluir outros cuidadores, como familiares, tutores, o próprio paciente ou outros. O recurso [br-core-careteam](StructureDefinition-br-core-careteam.md), dependendo de onde utilizado, pode incluir membros da equipe de cuidados específicos para um plano de cuidados específico, um episódio, um encontro ou pode refletir todos os membros conhecidos da equipe nessas perspectivas. O recurso [br-core-careteam](StructureDefinition-br-core-careteam.md) de um indivíduo pode ser dinâmico ao longo do tempo, de modo que pode haver transitoriedade de membros da equipe, como uma equipe de reabilitação.

### Caso de uso

A seguir estão alguns exemplos de cenários de uso para este perfil:

* Consultar a equipe de cuidados de um paciente;
* Registrar ou atualizar os dados da equipe de cuidado de um paciente.

### Caso de uso da RNDS

Este perfil ainda não está implementado na RNDS.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada Perfil [br-core-careteam](StructureDefinition-br-core-careteam.md) deve ter:**

* Não há elementos obrigatórios.

**Cada Perfil [br-core-careteam](StructureDefinition-br-core-careteam.md) deve oferecer suporte a:**

* Não há elementos.

### Limites e relacionamentos

O recurso [br-core-careteam](StructureDefinition-br-core-careteam.md)é diferente de um grupo (Group). O grupo é independente do paciente e identifica um conjunto indiferenciado de indivíduos que devem ser alvo de uma ou mais atividades clínicas (por exemplo, conjunto de participantes de ensaios clínicos, conjunto de indivíduos impactados por ou em risco de um evento de saúde pública, um rebanho ou bando, etc.). O recurso [br-core-careteam](StructureDefinition-br-core-careteam.md) estabelece um conjunto de relacionamentos e funções e é específico para um determinado paciente. Os atores são os membros individuais ou grupo organizado de indivíduos. O [br-core-careteam](StructureDefinition-br-core-careteam.md) pode ser referenciado por EpisodeOfCare, [Encounter](https://www.hl7.org/fhir/encounter.html) ou [CarePlan](https://hl7.org/fhir/R4/careplan.html#CarePlan) para identificar o conjunto de indivíduos (e suas respectivas funções) que devem estar envolvidos no fornecimento do atendimento definido por esses recursos.

Este recurso é referenciado por [br-core-careplan](StructureDefinition-br-core-careplan.md), [ChargeItem](https://hl7.org/fhir/R4/chargeitem.html#ChargeItem), [Communication](https://hl7.org/fhir/R4/communication.html#Communication), [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html#CommunicationRequest), [Consent](https://hl7.org/fhir/R4/consent.html#Consent), [Contract](https://hl7.org/fhir/R4/contract.html#Contract), [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html#DeviceRequest), [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md), [EpisodeOfCare](https://hl7.org/fhir/R4/episodeofcare.html#EpisodeOfCare), [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html#ImagingStudy), [Media](https://hl7.org/fhir/R4/media.html#Media), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-observation](StructureDefinition-br-core-observation.md), [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest) e [Task](https://hl7.org/fhir/R4/task.html#Task).

**Usos:**

* Refere a este Perfil: [br-core-careteam](StructureDefinition-br-core-careteam.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-careteam.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [CareTeam](http://hl7.org/fhir/R4/careteam.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [CareTeam](http://hl7.org/fhir/R4/careteam.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-careteam (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careteam)](StructureDefinition-br-core-careteam.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)

 **Visão diferencial** 

Esta estrutura é derivada de [CareTeam](http://hl7.org/fhir/R4/careteam.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [CareTeam](http://hl7.org/fhir/R4/careteam.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-careteam (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careteam)](StructureDefinition-br-core-careteam.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-careteam.csv), [Excel](StructureDefinition-br-core-careteam.xlsx), [Schematron](StructureDefinition-br-core-careteam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-careteam",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careteam",
  "version" : "1.1.0",
  "name" : "BRCoreCareTeam",
  "title" : "br-core-careteam",
  "status" : "active",
  "date" : "2026-09-01T10:20:38-04:00",
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
  "description" : "Este perfil restringe o recurso [CareTeam](https://hl7.org/fhir/R4/careteam.html) que inclui todas as pessoas e organizações que planejam participar da coordenação e prestação de cuidados a um paciente",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CareTeam",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CareTeam",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CareTeam",
      "path" : "CareTeam"
    },
    {
      "id" : "CareTeam.id",
      "path" : "CareTeam.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "CareTeam.meta",
      "path" : "CareTeam.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "CareTeam.implicitRules",
      "path" : "CareTeam.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "CareTeam.language",
      "path" : "CareTeam.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "CareTeam.text",
      "path" : "CareTeam.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "CareTeam.contained",
      "path" : "CareTeam.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "CareTeam.extension",
      "path" : "CareTeam.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "CareTeam.modifierExtension",
      "path" : "CareTeam.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "CareTeam.identifier",
      "path" : "CareTeam.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "CareTeam.status",
      "path" : "CareTeam.status",
      "definition" : "proposed | active | suspended | inactive | entered-in-error"
    },
    {
      "id" : "CareTeam.category",
      "path" : "CareTeam.category",
      "short" : "Tipo da equipe assistêncial",
      "definition" : "Tipo da equipe assistêncial",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRModalidadeAssistencial"
      }
    },
    {
      "id" : "CareTeam.name",
      "path" : "CareTeam.name",
      "short" : "Nome da equipe assistêncial",
      "definition" : "Nome da equipe assistêncial"
    },
    {
      "id" : "CareTeam.subject",
      "path" : "CareTeam.subject",
      "short" : "Paciente referenciado pela equipe assistêncial",
      "definition" : "Paciente referenciado pela equipe assistêncial",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "CareTeam.encounter",
      "path" : "CareTeam.encounter",
      "short" : "Referência ao atendimento",
      "definition" : "Referência ao atendimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "CareTeam.period",
      "path" : "CareTeam.period",
      "short" : "Período de atendimento pela a equipe assistêncial",
      "definition" : "Período de atendimento pela a equipe assistêncial"
    },
    {
      "id" : "CareTeam.participant",
      "path" : "CareTeam.participant",
      "short" : "Lista de participantes envolvidos no atendimento",
      "definition" : "Lista de participantes envolvidos no atendimento"
    },
    {
      "id" : "CareTeam.participant.id",
      "path" : "CareTeam.participant.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "CareTeam.participant.extension",
      "path" : "CareTeam.participant.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "CareTeam.participant.modifierExtension",
      "path" : "CareTeam.participant.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "CareTeam.participant.role",
      "path" : "CareTeam.participant.role",
      "short" : "Função do participante na equipe assistêncial",
      "definition" : "Função do participante na equipe assistêncial",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "CareTeam.participant.member",
      "path" : "CareTeam.participant.member",
      "short" : "Referência ao partipante",
      "definition" : "Referência ao partipante",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careteam"]
      }]
    },
    {
      "id" : "CareTeam.participant.onBehalfOf",
      "path" : "CareTeam.participant.onBehalfOf",
      "short" : "Organização do participante",
      "definition" : "Organização do participante",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "CareTeam.participant.period",
      "path" : "CareTeam.participant.period",
      "short" : "Período de tempo do participante atua no time assistêncial",
      "definition" : "Período de tempo do participante atua no time assistêncial"
    },
    {
      "id" : "CareTeam.reasonCode",
      "path" : "CareTeam.reasonCode",
      "short" : "Motivo pelo qual a equipe assistência foi criada",
      "definition" : "Motivo pelo qual a equipe assistência foi criada"
    },
    {
      "id" : "CareTeam.reasonReference",
      "path" : "CareTeam.reasonReference",
      "short" : "Referência aos diagnóstico que esta equipe assistencial cobre",
      "definition" : "Referência aos diagnóstico que esta equipe assistencial cobre",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition"]
      }]
    },
    {
      "id" : "CareTeam.managingOrganization",
      "path" : "CareTeam.managingOrganization",
      "short" : "Organização da equipe assistêncial",
      "definition" : "Organização da equipe assistêncial",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "CareTeam.telecom",
      "path" : "CareTeam.telecom",
      "short" : "Contato da equipe assistencial",
      "definition" : "Contato da equipe assistencial"
    },
    {
      "id" : "CareTeam.note",
      "path" : "CareTeam.note",
      "short" : "Comentários adicionais sobre a equipe assistencial",
      "definition" : "Comentários adicionais sobre a equipe assistencial"
    }]
  }
}

```
