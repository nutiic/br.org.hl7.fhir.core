# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-encounter - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-encounter**

## Resource Profile: br-core-encounter 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreEncounter |

 
Uma interação entre um paciente e o(s) prestador(es) de serviços saúde com a finalidade de fornecer serviço(s) de saúde ou avaliar o estado de saúde de um paciente 

### Escopo/Uso

O encontro com o paciente é caracterizado pelo ambiente onde ele ocorre: ambulatórios, emergência, saúde domiciliar, internação e encontros virtuais. Abrange desde a pré-admissão até a alta. O paciente pode ser atendido por diferentes profissionais de saúde e mudar de local durante o encontro.

Devido ao amplo escopo do Encontro, nem todos os elementos serão relevantes em todos os ambientes. Por esse motivo, as informações relacionadas à admissão/alta são mantidas em um componente separado de Hospitalização dentro do Encontro. O elemento class é usado para distinguir entre essas configurações, o que orientará a validação adicional e aplicação de regras de negócio.

Existem variações significativas entre organizações e países sobre quais eventos de negócios iniciam um novo Encontro e o nível de agregação usado. Cada visita de um médico durante uma hospitalização pode gerar uma nova instância de Encontro. No entanto, essa instância pode ser agregada a uma única para toda a hospitalização, dependendo da prática local e dos sistemas usados. Em algumas jurisdições, grupos de Encontros podem ser criados por razões financeiras ou outras. Os Encontros podem ser agrupados em outros usando o elemento partOf. Veja os exemplos abaixo.

Instâncias de encontro podem existir antes do encontro real para transmitir informações de pré-admissão, incluindo o uso de elementos de encontros para refletir a data de início prevista ou os locais de encontro planejados. Nesse caso, o elemento Status é definido como ‘Planejado’.

O componente de Hospitalização é projetado para armazenar informações detalhadas sobre eventos de hospitalização. Deve sempre corresponder ao período do encontro em questão. Caso o período divirja, deve-se utilizar outro encontro para registrar essas informações como parte da instância atual do encontro.

O procedimento e o encontro possuem referências mútuas, devendo cada um deles referir-se a procedimentos distintos: uma referência para o procedimento realizado durante o encontro (armazenada em Procedure.encounter) e outra para os casos em que um encontro é decorrente de um procedimento anterior (armazenada em Encounter.indication), como nos encontros de acompanhamento para resolver complicações de um procedimento prévio.

### Gerenciamento de status

Um encontro passa por vários status no seu ciclo de vida: planejado, em andamento, concluído ou cancelado. Esses status são usados para diversos fins e a análise do histórico pode ser necessária. Isso envolve revisar todas as versões do encontro e analisar o período de cada uma. Para simplificar esse processo, um componente de histórico de status está incluído.

O campo de status não define por si só se um encontro é “admitido”. O contexto e as políticas da organização determinam isso. Em unidades de cuidados intensivos ou clínicas comunitárias, status como “chegou”, “triado” ou “em andamento” podem indicar internação.

O status “de licença” pode ou não fazer parte da admissão, dependendo se o paciente foi autorizado a ir para casa temporariamente. No caso de uma consulta ambulatorial, o paciente também pode ser considerado admitido. A definição de admitido varia, mas geralmente acreditamos que um paciente é admitido quando o status está em andamento.

### Extensões

A extensão padrão para o encontro é o Associated Encounter. Esta extensão deve ser utilizada para fazer Referência à um encontro em que não há nenhuma propriedade que já defina essa associação no recurso.

### Limites e relacionamentos

O recurso Encontro não deve armazenar informações de agendamento; use o recurso Appointment para isso. Em muitos sistemas, encontros ambulatoriais (Encontro) e Appointment são usados juntos. No FHIR, Appointment serve para marcar uma data, enquanto Encontro contém informações sobre o encontro real, como a chegada do paciente.

Como tal, um encontro no status “planejado” não é idêntico ao compromisso que o agendou, mas é o encontro anterior à sua ocorrência real, com a expectativa de que o encontro seja atualizado à medida que avança para a conclusão. A chegada do paciente a um local não significa necessariamente o início do encontro (por exemplo, um paciente chega uma hora antes do que é realmente atendido por um médico).

Um agendamento é normalmente utilizado durante a fase de planejamento para pesquisar, localizar um horário disponível e então marcar a consulta. Uma vez que este processo esteja concluído e o agendamento esteja prestes a começar, ele será marcado como cumprido e vinculado ao encontro recém-criado. Este novo encontro pode iniciar com o status de “chegou” quando a pessoa for admitida em um estabelecimento, e depois continuar para a ala onde outra parte do encontro pode começar.

Os recursos de comunicação são usados para uma interação simultânea entre um profissional e um paciente onde não há contato direto. Os exemplos incluem uma mensagem telefônica ou a transmissão de alguma documentação de correspondência.

Não há duração registrada para um recurso de comunicação, mas ele pode conter horários de envio e recebimento.

**Usos:**

* Refere a este Perfil: [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md), [BRCoreCarePlan](StructureDefinition-br-core-careplan.md), [br-core-careteam](StructureDefinition-br-core-careteam.md), [br-core-composition](StructureDefinition-br-core-composition.md)... Show 11 more, [BRCoreCondition](StructureDefinition-br-core-condition.md), [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [br-core-encounter](StructureDefinition-br-core-encounter.md), [BRCoreImmunization](StructureDefinition-br-core-immunization.md), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-encounter.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Encounter](http://hl7.org/fhir/R4/encounter.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Encounter](http://hl7.org/fhir/R4/encounter.html) 

** Resumo **

Obrigatório: 4 elementos(4 aninhado obrigatoriamente elementos)

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Encounter](http://hl7.org/fhir/R4/encounter.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Encounter](http://hl7.org/fhir/R4/encounter.html) 

** Resumo **

Obrigatório: 4 elementos(4 aninhado obrigatoriamente elementos)

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-encounter.csv), [Excel](StructureDefinition-br-core-encounter.xlsx), [Schematron](StructureDefinition-br-core-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-encounter",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter",
  "version" : "1.1.0",
  "name" : "BRCoreEncounter",
  "title" : "br-core-encounter",
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
  "description" : "Uma interação entre um paciente e o(s) prestador(es) de  serviços saúde com a finalidade de fornecer serviço(s) de saúde ou avaliar o estado de saúde de um paciente",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.id",
      "path" : "Encounter.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Encounter.meta",
      "path" : "Encounter.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Encounter.implicitRules",
      "path" : "Encounter.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Encounter.language",
      "path" : "Encounter.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Encounter.text",
      "path" : "Encounter.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Encounter.contained",
      "path" : "Encounter.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Encounter.modifierExtension",
      "path" : "Encounter.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "Status atual do atendimento: planned | arrived | triaged | in-progress | onleave | finished | cancelled +",
      "definition" : "Status atual do atendimento: planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
    },
    {
      "id" : "Encounter.statusHistory",
      "path" : "Encounter.statusHistory",
      "short" : "Lista de status de atendimentos anteriores",
      "definition" : "Lista de status de atendimentos anteriores"
    },
    {
      "id" : "Encounter.statusHistory.id",
      "path" : "Encounter.statusHistory.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Encounter.statusHistory.extension",
      "path" : "Encounter.statusHistory.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Encounter.statusHistory.modifierExtension",
      "path" : "Encounter.statusHistory.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Encounter.statusHistory.status",
      "path" : "Encounter.statusHistory.status",
      "short" : "Status de atendimentos anteriores: planned | arrived | triaged | in-progress | onleave | finished | cancelled +",
      "definition" : "Status de atendimentos anteriores: planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
    },
    {
      "id" : "Encounter.statusHistory.period",
      "path" : "Encounter.statusHistory.period",
      "short" : "O tempo em que o episódio estava no status especificado",
      "definition" : "O tempo em que o episódio estava no status especificado"
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "Classificação do atendimento com o paciente",
      "definition" : "Classificação do atendimento com o paciente",
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRModalidadeAssistencial"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "extensible",
        "description" : "Classification of the encounter.",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
      }
    },
    {
      "id" : "Encounter.classHistory",
      "path" : "Encounter.classHistory",
      "short" : "Lista de classes de atendimentos anteriores",
      "definition" : "Lista de classes de atendimentos anteriores"
    },
    {
      "id" : "Encounter.classHistory.id",
      "path" : "Encounter.classHistory.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Encounter.classHistory.extension",
      "path" : "Encounter.classHistory.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Encounter.classHistory.modifierExtension",
      "path" : "Encounter.classHistory.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Encounter.classHistory.class",
      "path" : "Encounter.classHistory.class",
      "short" : "Classe dos atendimento anteriore",
      "definition" : "Classe dos atendimento anteriore"
    },
    {
      "id" : "Encounter.classHistory.period",
      "path" : "Encounter.classHistory.period",
      "short" : "Período do atendimento anteriore",
      "definition" : "Período do atendimento anteriore"
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "short" : "Tipo específico do atendimento",
      "definition" : "Tipo específico do atendimento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRAtendimentoPrestado"
      }
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "short" : "Tipo específico do serviço",
      "definition" : "Tipo específico do serviço",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRServicoEspecializado"
      }
    },
    {
      "id" : "Encounter.priority",
      "path" : "Encounter.priority",
      "short" : "Prioridade do atendimento",
      "definition" : "Prioridade do atendimento",
      "min" : 1,
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCaraterAtendimento"
      }
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "short" : "Referência ao paciente ou grupo deste atendimento",
      "definition" : "Referência ao paciente ou grupo deste atendimento",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "short" : "Referência ao episódio de cuidado relacionado a este atendimento",
      "definition" : "Referência ao episódio de cuidado relacionado a este atendimento"
    },
    {
      "id" : "Encounter.basedOn",
      "path" : "Encounter.basedOn",
      "short" : "Referência ao ServiceRequest que iniciou este atendimento",
      "definition" : "Referência ao ServiceRequest que iniciou este atendimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest"]
      }]
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "short" : "Participantes no atendimento",
      "definition" : "Participantes no atendimento"
    },
    {
      "id" : "Encounter.participant.id",
      "path" : "Encounter.participant.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Encounter.participant.extension",
      "path" : "Encounter.participant.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Encounter.participant.modifierExtension",
      "path" : "Encounter.participant.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Encounter.participant.type",
      "path" : "Encounter.participant.type",
      "short" : "Função do participante no atendimento",
      "definition" : "Função do participante no atendimento",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRResponsabilidadeParticipante"
      }
    },
    {
      "id" : "Encounter.participant.period",
      "path" : "Encounter.participant.period",
      "short" : "Período de atuação do participante",
      "definition" : "Período de atuação do participante"
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "short" : "Referência à profissionais envolvidos no atendimento",
      "definition" : "Referência à profissionais envolvidos no atendimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"]
      }]
    },
    {
      "id" : "Encounter.appointment",
      "path" : "Encounter.appointment",
      "short" : "Referência ao agendamento desde atendimento",
      "definition" : "Referência ao agendamento desde atendimento"
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "Hora de início e término do atendimento",
      "definition" : "Hora de início e término do atendimento",
      "min" : 1
    },
    {
      "id" : "Encounter.length",
      "path" : "Encounter.length",
      "short" : "Duração do atendimento",
      "definition" : "Duração do atendimento"
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "short" : "Queixa principal do atendimento",
      "definition" : "Queixa principal do atendimento",
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCIAP2"
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRReasonEncounter"
      }
    },
    {
      "id" : "Encounter.reasonReference",
      "path" : "Encounter.reasonReference",
      "short" : "Referência ao motivo do atendimento",
      "definition" : "Referência ao motivo do atendimento",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation"]
      }]
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "short" : "Lista de diagnósticos deste atendimento",
      "definition" : "Lista de diagnósticos deste atendimento"
    },
    {
      "id" : "Encounter.diagnosis.id",
      "path" : "Encounter.diagnosis.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Encounter.diagnosis.extension",
      "path" : "Encounter.diagnosis.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Encounter.diagnosis.modifierExtension",
      "path" : "Encounter.diagnosis.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Encounter.diagnosis.condition",
      "path" : "Encounter.diagnosis.condition",
      "short" : "O diagnóstico ou procedimento relevante para este atendimento",
      "definition" : "O diagnóstico ou procedimento relevante para este atendimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure"]
      }]
    },
    {
      "id" : "Encounter.diagnosis.use",
      "path" : "Encounter.diagnosis.use",
      "short" : "Papel deste diagnóstico no atendimento (por exemplo, internação, faturamento, alta…)",
      "definition" : "Papel deste diagnóstico no atendimento (por exemplo, internação, faturamento, alta…)",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/diagnosis-role"
      }
    },
    {
      "id" : "Encounter.diagnosis.rank",
      "path" : "Encounter.diagnosis.rank",
      "short" : "Classificação do diagnóstico",
      "definition" : "Classificação do diagnóstico"
    },
    {
      "id" : "Encounter.account",
      "path" : "Encounter.account",
      "short" : "Referências as contas desde atendimento",
      "definition" : "Referências as contas desde atendimento"
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "short" : "Detalhes sobre a internação em um serviço de saúde",
      "definition" : "Detalhes sobre a internação em um serviço de saúde"
    },
    {
      "id" : "Encounter.hospitalization.id",
      "path" : "Encounter.hospitalization.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Encounter.hospitalization.extension",
      "path" : "Encounter.hospitalization.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Encounter.hospitalization.modifierExtension",
      "path" : "Encounter.hospitalization.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Encounter.hospitalization.preAdmissionIdentifier",
      "path" : "Encounter.hospitalization.preAdmissionIdentifier",
      "short" : "Identificador de pré-internação",
      "definition" : "Identificador de pré-internação"
    },
    {
      "id" : "Encounter.hospitalization.origin",
      "path" : "Encounter.hospitalization.origin",
      "short" : "Referência ao local/organização de onde o paciente veio antes da internação",
      "definition" : "Referência ao local/organização de onde o paciente veio antes da internação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Encounter.hospitalization.admitSource",
      "path" : "Encounter.hospitalization.admitSource",
      "short" : "De onde o paciente foi admitido (encaminhamento médico, transferência)",
      "definition" : "De onde o paciente foi admitido (encaminhamento médico, transferência)",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRProcedencia"
      }
    },
    {
      "id" : "Encounter.hospitalization.reAdmission",
      "path" : "Encounter.hospitalization.reAdmission",
      "short" : "O tipo de readmissão hospitalar  (se houver). Se o valor estiver ausente, a internação não será dentificada como uma reinternação",
      "definition" : "O tipo de readmissão hospitalar  (se houver). Se o valor estiver ausente, a internação não será dentificada como uma reinternação"
    },
    {
      "id" : "Encounter.hospitalization.dietPreference",
      "path" : "Encounter.hospitalization.dietPreference",
      "short" : "Preferências alimentares do paciente",
      "definition" : "Preferências alimentares do paciente"
    },
    {
      "id" : "Encounter.hospitalization.specialCourtesy",
      "path" : "Encounter.hospitalization.specialCourtesy",
      "short" : "Cortesias especiais (VIP, membro do conselho)",
      "definition" : "Cortesias especiais (VIP, membro do conselho)"
    },
    {
      "id" : "Encounter.hospitalization.specialArrangement",
      "path" : "Encounter.hospitalization.specialArrangement",
      "short" : "Necessidades especiais: cadeira de rodas, tradutor, maca, etc",
      "definition" : "Necessidades especiais: cadeira de rodas, tradutor, maca, etc"
    },
    {
      "id" : "Encounter.hospitalization.destination",
      "path" : "Encounter.hospitalization.destination",
      "short" : "Referência ao local/organização de encaminhamento pós-alta",
      "definition" : "Referência ao local/organização de encaminhamento pós-alta",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "short" : "Categoria ou tipo de local após a alta",
      "definition" : "Categoria ou tipo de local após a alta",
      "min" : 1,
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRMotivoDesfecho"
      }
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "short" : "Lista de locais onde o paciente esteve",
      "definition" : "Lista de locais onde o paciente esteve"
    },
    {
      "id" : "Encounter.location.id",
      "path" : "Encounter.location.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Encounter.location.extension",
      "path" : "Encounter.location.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Encounter.location.modifierExtension",
      "path" : "Encounter.location.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "short" : "Local onde o atendimento acontece",
      "definition" : "Local onde o atendimento acontece",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "Encounter.location.status",
      "path" : "Encounter.location.status",
      "short" : "O status do local: planned | active | reserved | completed",
      "definition" : "O status do local: planned | active | reserved | completed",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-location-status"
      }
    },
    {
      "id" : "Encounter.location.physicalType",
      "path" : "Encounter.location.physicalType",
      "short" : "O tipo físico do local (geralmente o nível na hierarquia do local - quarto, enfermaria, etc.)",
      "definition" : "O tipo físico do local (geralmente o nível na hierarquia do local - quarto, enfermaria, etc.)",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/location-physical-type"
      }
    },
    {
      "id" : "Encounter.location.period",
      "path" : "Encounter.location.period",
      "short" : "Período de tempo durante o qual o paciente esteve presente no local",
      "definition" : "Período de tempo durante o qual o paciente esteve presente no local"
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "short" : "A organização (instalação) responsável por este encontro",
      "definition" : "A organização (instalação) responsável por este encontro",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Encounter.partOf",
      "path" : "Encounter.partOf",
      "short" : "Outro atendimento do qual este atendimento faz parte",
      "definition" : "Outro atendimento do qual este atendimento faz parte",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    }]
  }
}

```
