# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-appointment - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-appointment**

## Resource Profile: br-core-appointment 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-appointment | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreAppointment |

 
Perfil brasileiro do recurso FHIR R4 Appointment, utilizado para agendamento de atendimentos, procedimentos e interações de cuidado no contexto do SUS, RNDS, saúde suplementar e privada, incluindo marcação, remarcação e cancelamento, bem como gestão de participantes, datas/horários e justificativas. 

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-appointment.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Appointment](http://hl7.org/fhir/R4/appointment.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Appointment](http://hl7.org/fhir/R4/appointment.html) 

** Resumo **

Deve ser suportado: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [br-core-healthcareservice (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice)](StructureDefinition-br-core-healthcareservice.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Appointment](http://hl7.org/fhir/R4/appointment.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Appointment](http://hl7.org/fhir/R4/appointment.html) 

** Resumo **

Deve ser suportado: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [br-core-healthcareservice (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice)](StructureDefinition-br-core-healthcareservice.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-appointment.csv), [Excel](StructureDefinition-br-core-appointment.xlsx), [Schematron](StructureDefinition-br-core-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-appointment",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-appointment",
  "version" : "1.1.1",
  "name" : "BRCoreAppointment",
  "title" : "br-core-appointment",
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
  "description" : "Perfil brasileiro do recurso FHIR R4 Appointment, utilizado para agendamento de atendimentos, procedimentos e interações de cuidado no contexto do SUS, RNDS, saúde suplementar e privada, incluindo marcação, remarcação e cancelamento, bem como gestão de participantes, datas/horários e justificativas.",
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
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
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
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.id",
      "path" : "Appointment.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Appointment.meta",
      "path" : "Appointment.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Appointment.implicitRules",
      "path" : "Appointment.implicitRules",
      "short" : "Conjunto de regras usadas para criar o conteúdo",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Appointment.language",
      "path" : "Appointment.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Appointment.text",
      "path" : "Appointment.text",
      "short" : "Resumo narrativo em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Appointment.contained",
      "path" : "Appointment.contained",
      "short" : "Recursos aninhados",
      "definition" : "Recursos contidos neste recurso"
    },
    {
      "id" : "Appointment.extension",
      "path" : "Appointment.extension",
      "short" : "Extensões adicionais não previstas no modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Appointment.modifierExtension",
      "path" : "Appointment.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Appointment.identifier",
      "path" : "Appointment.identifier",
      "short" : "Identificadores do agendamento",
      "definition" : "Identificadores para este Appointment (p.ex. identificador do sistema local ou da RNDS)",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.status",
      "path" : "Appointment.status",
      "short" : "Status do agendamento",
      "definition" : "Situação atual do agendamento (proposto, pendente, agendado, concluído, cancelado, etc.)",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/appointmentstatus"
      }
    },
    {
      "id" : "Appointment.cancelationReason",
      "path" : "Appointment.cancelationReason",
      "short" : "Motivo do cancelamento",
      "definition" : "Razão codificada para cancelamento do agendamento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/appointment-cancellation-reason"
      }
    },
    {
      "id" : "Appointment.serviceCategory",
      "path" : "Appointment.serviceCategory",
      "short" : "Categoria do serviço",
      "definition" : "Categoria ampla do serviço de saúde",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRModalidadeAssistencial"
      }
    },
    {
      "id" : "Appointment.serviceType",
      "path" : "Appointment.serviceType",
      "short" : "Tipo de serviço",
      "definition" : "Tipo específico de serviço/atendimento a ser realizado",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRProcedimentosNacionais"
      }
    },
    {
      "id" : "Appointment.specialty",
      "path" : "Appointment.specialty",
      "short" : "Especialidade clínica",
      "definition" : "Especialidade clínica requerida para o atendimento",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "Appointment.appointmentType",
      "path" : "Appointment.appointmentType",
      "short" : "Tipo do agendamento",
      "definition" : "Classificação do agendamento (p.ex. rotina, retorno, encaixe)",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0276"
      }
    },
    {
      "id" : "Appointment.reasonCode",
      "path" : "Appointment.reasonCode",
      "short" : "Motivo (código) do agendamento",
      "definition" : "Códigos que expressam a justificativa para o agendamento",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCID10"
      }
    },
    {
      "id" : "Appointment.reasonReference",
      "path" : "Appointment.reasonReference",
      "short" : "Motivo (referência) do agendamento",
      "definition" : "Referências clínicas (p.ex., Condition, Procedure, Observation) que justificam o agendamento"
    },
    {
      "id" : "Appointment.priority",
      "path" : "Appointment.priority",
      "short" : "Prioridade (0 = rotina)",
      "definition" : "Nível de prioridade do agendamento (inteiro; 0 para rotina, valores maiores indicam maior prioridade)"
    },
    {
      "id" : "Appointment.description",
      "path" : "Appointment.description",
      "short" : "Descrição livre do agendamento",
      "definition" : "Resumo textual do propósito do agendamento"
    },
    {
      "id" : "Appointment.supportingInformation",
      "path" : "Appointment.supportingInformation",
      "short" : "Informações de apoio",
      "definition" : "Referências a recursos que dão contexto ao agendamento (p.ex., DocumentReference, ImagingStudy)"
    },
    {
      "id" : "Appointment.start",
      "path" : "Appointment.start",
      "short" : "Início planejado",
      "definition" : "Data/hora planejada de início do atendimento"
    },
    {
      "id" : "Appointment.end",
      "path" : "Appointment.end",
      "short" : "Término planejado",
      "definition" : "Data/hora planejada de término do atendimento"
    },
    {
      "id" : "Appointment.minutesDuration",
      "path" : "Appointment.minutesDuration",
      "short" : "Duração prevista (minutos)",
      "definition" : "Duração estimada do atendimento em minutos"
    },
    {
      "id" : "Appointment.slot",
      "path" : "Appointment.slot",
      "short" : "Slots reservados",
      "definition" : "Slots do agendador reservados para este Appointment"
    },
    {
      "id" : "Appointment.created",
      "path" : "Appointment.created",
      "short" : "Data de criação",
      "definition" : "Data em que o agendamento foi criado"
    },
    {
      "id" : "Appointment.comment",
      "path" : "Appointment.comment",
      "short" : "Comentários adicionais",
      "definition" : "Informações adicionais relevantes sobre o agendamento"
    },
    {
      "id" : "Appointment.patientInstruction",
      "path" : "Appointment.patientInstruction",
      "short" : "Instruções ao paciente",
      "definition" : "Instruções para o paciente sobre o agendamento"
    },
    {
      "id" : "Appointment.basedOn",
      "path" : "Appointment.basedOn",
      "short" : "Solicitação que originou o agendamento",
      "definition" : "Referência à solicitação (ServiceRequest, CarePlan, etc.) que originou o agendamento"
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "short" : "Participantes do agendamento",
      "definition" : "Participantes envolvidos no agendamento (profissional, paciente, organização, dispositivo, etc.)"
    },
    {
      "id" : "Appointment.participant.type",
      "path" : "Appointment.participant.type",
      "short" : "Tipo de participante",
      "definition" : "Função ou papel do participante no agendamento (p.ex. médico, paciente, intérprete)",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoParticipante"
      }
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "short" : "Entidade participante",
      "definition" : "Referência ao recurso que representa o participante",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice"]
      }]
    },
    {
      "id" : "Appointment.participant.required",
      "path" : "Appointment.participant.required",
      "short" : "Participação obrigatória?",
      "definition" : "Indica se a presença do participante é obrigatória",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/participantrequired"
      }
    },
    {
      "id" : "Appointment.participant.status",
      "path" : "Appointment.participant.status",
      "short" : "Status de participação",
      "definition" : "Confirmação do participante (accepted, declined, tentative, needs-action)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/participationstatus"
      }
    },
    {
      "id" : "Appointment.participant.period",
      "path" : "Appointment.participant.period",
      "short" : "Período de disponibilidade",
      "definition" : "Intervalo de tempo durante o qual o participante está disponível"
    },
    {
      "id" : "Appointment.requestedPeriod",
      "path" : "Appointment.requestedPeriod",
      "short" : "Período solicitado",
      "definition" : "Período ou faixa de tempo solicitada para o agendamento (antes da confirmação)"
    }]
  }
}

```
