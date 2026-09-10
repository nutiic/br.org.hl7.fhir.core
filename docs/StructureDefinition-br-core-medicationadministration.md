# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-medicationadministration - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-medicationadministration**

## Resource Profile: br-core-medicationadministration 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreMedicationAdministration |

 
Descreve o evento de um paciente consumindo ou de algum medicamento sendo administrado a um paciente. Isso pode ser tão simples quanto engolir um comprimido ou pode ser uma infusão de longa duração. Recursos relacionados vinculam esse evento à prescrição de autorização e ao atendimento specífco entre o paciente e o profissional de saúde 

### Escopo/Uso

Este recurso abrange a administração de todos os medicamentos, mas não a administração de vacinas. Consulte o recurso/Perfil [br-core-immunization](https://saude.go.br/fhir/StructureDefinition/br-core-immunization) para registrar a administração de vacinas. O recurso [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md) será usado principalmente em ambientes de atendimento (incluindo internação) para registrar a captura de administrações de medicamentos, incluindo autoadministrações de medicamentos orais, injeções, ajustes intravenosos, etc. Este recurso pode também ser utilizado em ambientes ambulatoriais para registrar vacinas contra alergia e outras administrações não relacionadas à imunização. Em alguns casos, ele pode ser usado para relatórios de saúde domiciliar, como registrar insulina autoadministrada ou mesmo administrada por um dispositivo. O recurso br-core-medicationadministration é um recurso de evento de uma perspectiva de fluxo de trabalho FHIR - veja Evento de fluxo de trabalho

O recurso [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md) é um recurso de evento de uma perspectiva de fluxo de trabalho FHIR - veja Evento de fluxo de trabalho

### Caso de uso

O recurso [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md) no FHIR é utilizado para documentar e rastrear a administração de medicamentos a um paciente, mas não faz parte dos documentos clínicos da RNDS. Este recurso desempenha um papel importante em sistemas de prescrição, gerenciamento de terapias e auditorias clínicas. As seguintes situações de uso se aplicam a este recurso:

1. Registro de Administração de Medicamentos em Hospitais
* Descrição: Enfermeiros registram a administração de medicamentos no ponto de cuidado (por exemplo, via sistemas de prontuário eletrônico).

1. Monitoramento de Terapias Intravenosas
* Descrição: Representação de infusões contínuas ou intermitentes, incluindo taxa de fluxo, tipo de solução e aditivos.

1. Auditorias e Conformidade
* Descrição: Rastrear administrações para atender a regulamentações e garantir conformidade com protocolos hospitalares.

1. Administração de Medicamentos em Casa
* Descrição: Pacientes ou cuidadores registram a administração de medicamentos prescritos em dispositivos ou aplicativos.

1. Suporte a Estudos Clínicos
* Descrição: Registro detalhado de administrações para documentar a adesão ao protocolo de estudos.

1. Geração de Alarmes em Tempo Real
* Descrição: Integração com dispositivos para monitorar atrasos ou falhas na administração planejada.

1. Comunicação entre Sistemas
* Descrição: Troca de informações sobre administração entre diferentes sistemas, como farmácias, dispositivos de infusão e Registros Eletrônicos de Saúde.

1. Registro de Reações Adversas Imediatas
* Descrição: Documentação de eventos adversos ocorridos durante ou imediatamente após a administração.

### Limites e relacionamentos

O recurso [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md) é destinado a rastrear a administração de medicamentos não vacinais. A administração de vacinas deve ser manipulada usando o recurso [br-core-immunization](https://saude.go.br/fhir/StructureDefinition/br-core-immunization) . Alguns sistemas tratam imunizações da mesma forma que qualquer outra administração de medicamentos. Esses sistemas DEVEM usar um recurso de [br-core-immunization](https://saude.go.br/fhir/StructureDefinition/br-core-immunization) para representá-los. Se os sistemas precisarem usar um recurso [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md) para capturar vacinações para fluxo de trabalho ou outros motivos, eles DEVEM também criar e expor uma instância do [br-core-immunization](https://saude.go.br/fhir/StructureDefinition/br-core-immunization).

O domínio de medicamentos inclui uma série de recursos relacionados:

| | |
| :--- | :--- |
| MedicationRequest([br-core-medicationrequest](StructureDefinition-br-core-medicationrequest)) | Uma ordem para fornecimento do medicamento e instruções para administração do medicamento a um paciente. |
| MedicamentoDispense([br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md)) | Fornecimento de um medicamento com a intenção de que ele seja posteriormente consumido por um paciente (geralmente em resposta a uma prescrição). |
| MedicationAdministration([br-core-medicationadministration](StructureDefinition-br-core-medicationdadministration.md)) | Quando um paciente realmente consome um medicamento, ou o medicamento é administrado a ele de outra forma |
| MedicationStatement([br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md)) | Este é um registro de um medicamento sendo tomado por um paciente ou que um medicamento foi dado a um paciente, onde o registro é o resultado de um relatório do paciente ou de outro clínico. Uma declaração de medicamento não é parte do fluxo prescrever->dispensar->administrar, mas é um relatório de que este fluxo (ou pelo menos uma parte dela) ocorreu, resultando em uma crença de que o paciente recebeu um medicamento específico. |

**Usos:**

* Refere a este Perfil: [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md)... Show 2 more, [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-medicationadministration.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)

 **Visão diferencial** 

Esta estrutura é derivada de [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-medicationadministration.csv), [Excel](StructureDefinition-br-core-medicationadministration.xlsx), [Schematron](StructureDefinition-br-core-medicationadministration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-medicationadministration",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration",
  "version" : "1.1.1",
  "name" : "BRCoreMedicationAdministration",
  "title" : "br-core-medicationadministration",
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
  "description" : "Descreve o evento de um paciente consumindo ou de algum medicamento sendo administrado a um paciente. Isso pode ser tão simples quanto engolir um comprimido ou pode ser uma infusão de longa duração. Recursos relacionados vinculam esse evento à prescrição de autorização e ao atendimento specífco entre o paciente e o profissional de saúde",
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
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.id",
      "path" : "MedicationAdministration.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "MedicationAdministration.meta",
      "path" : "MedicationAdministration.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "MedicationAdministration.implicitRules",
      "path" : "MedicationAdministration.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "MedicationAdministration.language",
      "path" : "MedicationAdministration.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "MedicationAdministration.text",
      "path" : "MedicationAdministration.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "MedicationAdministration.contained",
      "path" : "MedicationAdministration.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "MedicationAdministration.extension",
      "path" : "MedicationAdministration.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "MedicationAdministration.modifierExtension",
      "path" : "MedicationAdministration.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "MedicationAdministration.identifier",
      "path" : "MedicationAdministration.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "MedicationAdministration.instantiates",
      "path" : "MedicationAdministration.instantiates",
      "short" : "Instancia protocolo ou definição",
      "definition" : "Instancia protocolo ou definição"
    },
    {
      "id" : "MedicationAdministration.partOf",
      "path" : "MedicationAdministration.partOf",
      "short" : "Parte do evento referenciado",
      "definition" : "Parte do evento referenciado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure"]
      }]
    },
    {
      "id" : "MedicationAdministration.status",
      "path" : "MedicationAdministration.status",
      "short" : "Códigos de status de administração de medicamentos",
      "definition" : "Códigos de status de administração de medicamentos"
    },
    {
      "id" : "MedicationAdministration.statusReason",
      "path" : "MedicationAdministration.statusReason",
      "short" : "Motivo da não realização da administração",
      "definition" : "Motivo da não realização da administração",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/reason-medication-not-given-codes"
      }
    },
    {
      "id" : "MedicationAdministration.category",
      "path" : "MedicationAdministration.category",
      "short" : "Tipo de uso de medicamentos",
      "definition" : "Tipo de uso de medicamentos"
    },
    {
      "id" : "MedicationAdministration.medication[x]",
      "path" : "MedicationAdministration.medication[x]",
      "short" : "O que foi administrado",
      "definition" : "O que foi administrado"
    },
    {
      "id" : "MedicationAdministration.subject",
      "path" : "MedicationAdministration.subject",
      "short" : "Referência ao paciente que recebeu o medicamento",
      "definition" : "Referência ao paciente que recebeu o medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "MedicationAdministration.context",
      "path" : "MedicationAdministration.context",
      "short" : "Referência ao atendimento que administrou o medicamento",
      "definition" : "Referência ao atendimento que administrou o medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "MedicationAdministration.supportingInformation",
      "path" : "MedicationAdministration.supportingInformation",
      "short" : "Informações adicionais para suporte à administração",
      "definition" : "Informações adicionais para suporte à administração"
    },
    {
      "id" : "MedicationAdministration.effective[x]",
      "path" : "MedicationAdministration.effective[x]",
      "short" : "Hora de início e término da administração do medicamento",
      "definition" : "Hora de início e término da administração do medicamento"
    },
    {
      "id" : "MedicationAdministration.performer",
      "path" : "MedicationAdministration.performer",
      "short" : "Quem realizou a administração da medicamento e o que eles fizeram",
      "definition" : "Quem realizou a administração da medicamento e o que eles fizeram"
    },
    {
      "id" : "MedicationAdministration.performer.id",
      "path" : "MedicationAdministration.performer.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationAdministration.performer.extension",
      "path" : "MedicationAdministration.performer.extension",
      "short" : "Conteúdo adicional definido pelas implementações",
      "definition" : "Conteúdo adicional definido pelas implementações"
    },
    {
      "id" : "MedicationAdministration.performer.modifierExtension",
      "path" : "MedicationAdministration.performer.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "MedicationAdministration.performer.function",
      "path" : "MedicationAdministration.performer.function",
      "short" : "Função do profissional que administrou o medicamento",
      "definition" : "Função do profissional que administrou o medicamento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/med-admin-perform-function"
      }
    },
    {
      "id" : "MedicationAdministration.performer.actor",
      "path" : "MedicationAdministration.performer.actor",
      "short" : "Referência ao profissional que realizou a administraçãoexampleamento",
      "definition" : "Referência ao profissional que realizou a administração do medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "MedicationAdministration.reasonCode",
      "path" : "MedicationAdministration.reasonCode",
      "short" : "Motivo da administração do medicamento",
      "definition" : "Motivo da administração do medicamento"
    },
    {
      "id" : "MedicationAdministration.reasonReference",
      "path" : "MedicationAdministration.reasonReference",
      "short" : "Referência à condição ou observação que é o motivo da administração do medicamento",
      "definition" : "Referência à condição ou observação que é o motivo da administração do medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport"]
      }]
    },
    {
      "id" : "MedicationAdministration.request",
      "path" : "MedicationAdministration.request",
      "short" : "Referência à solicitação do medicamento",
      "definition" : "Referência à solicitação do medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest"]
      }]
    },
    {
      "id" : "MedicationAdministration.device",
      "path" : "MedicationAdministration.device",
      "short" : "Referência ao dispositivo utilizado para administrar o medicamento",
      "definition" : "Referência ao dispositivo utilizado para administrar o medicamento"
    },
    {
      "id" : "MedicationAdministration.note",
      "path" : "MedicationAdministration.note",
      "short" : "Informações sobre a administração do medicamento",
      "definition" : "Informações sobre a administração do medicamento"
    },
    {
      "id" : "MedicationAdministration.dosage",
      "path" : "MedicationAdministration.dosage",
      "short" : "Dose administrada do medicamento",
      "definition" : "Dose administrada do medicamento"
    },
    {
      "id" : "MedicationAdministration.dosage.id",
      "path" : "MedicationAdministration.dosage.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationAdministration.dosage.extension",
      "path" : "MedicationAdministration.dosage.extension",
      "short" : "Conteúdo adicional definido pelas implementações",
      "definition" : "Conteúdo adicional definido pelas implementações"
    },
    {
      "id" : "MedicationAdministration.dosage.modifierExtension",
      "path" : "MedicationAdministration.dosage.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "MedicationAdministration.dosage.text",
      "path" : "MedicationAdministration.dosage.text",
      "short" : "Instruções de dosagem em texto livre, por exemplo, SIG",
      "definition" : "Instruções de dosagem em texto livre, por exemplo, SIG"
    },
    {
      "id" : "MedicationAdministration.dosage.site",
      "path" : "MedicationAdministration.dosage.site",
      "short" : "Local do corpo que o corpo foi administrado",
      "definition" : "Local do corpo que o corpo foi administrado",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.route",
      "path" : "MedicationAdministration.dosage.route",
      "short" : "Via de administração do medicamento",
      "definition" : "Via de administração do medicamento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration"
      }
    },
    {
      "id" : "MedicationAdministration.dosage.method",
      "path" : "MedicationAdministration.dosage.method",
      "short" : "Método de admnistração do medicamento",
      "definition" : "Método de admnistração do medicamento"
    },
    {
      "id" : "MedicationAdministration.dosage.dose",
      "path" : "MedicationAdministration.dosage.dose",
      "short" : "Quantidade da dose do medicamento",
      "definition" : "Quantidade da dose do medicamento"
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]",
      "path" : "MedicationAdministration.dosage.rate[x]",
      "short" : "Quantidade da dose por unidade de tempo",
      "definition" : "Quantidade da dose por unidade de tempo"
    },
    {
      "id" : "MedicationAdministration.eventHistory",
      "path" : "MedicationAdministration.eventHistory",
      "short" : "Referência à uma lista de eventos",
      "definition" : "Referência à uma lista de eventos"
    }]
  }
}

```
