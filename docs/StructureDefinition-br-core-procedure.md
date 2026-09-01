# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreProcedure - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreProcedure**

## Resource Profile: BRCoreProcedure 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure | *Versão*:1.1.0 |
| Active as of 2026-09-01 | *Nome computável*:BRCoreProcedure |

 
Este recurso descreve uma ação que é ou foi realizada em ou para um paciente. Pode ser uma intervenção física como uma operação, ou menos invasiva como serviços de longo prazo, aconselhamento ou hipnoterapia 

### Escopo e uso

Procedimento é um dos recursos de [evento](https://hl7.org/fhir/r4/workflow.html#event) na especificação do [fluxo de trabalho](https://hl7.org/fhir/r4/workflow.html) FHIR .

Este recurso é usado para registrar os detalhes de procedimentos atuais e históricos de procedimentos realizados em ou para um paciente. Um procedimento é uma atividade que é realizada em, com ou para um paciente como parte da prestação de cuidados. Exemplos incluem procedimentos cirúrgicos, procedimentos de diagnóstico, procedimentos endoscópicos, biópsias, aconselhamento, fisioterapia, serviços de apoio pessoal, serviços de creche para adultos, transporte não emergencial, modificação da casa, exercícios, etc. Os procedimentos podem ser realizados por um profissional de saúde, um provedor de serviços, um amigo ou parente ou, em alguns casos, pelo próprio paciente.

Este recurso fornece informações resumidas sobre a ocorrência do procedimento e não se destina a fornecer instantâneos em tempo real de um procedimento conforme ele se desenrola, embora para procedimentos de longa duração, como psicoterapia, ele possa representar informações de nível resumido sobre o progresso geral. A criação de um recurso para dar suporte a informações detalhadas do procedimento em tempo real aguarda a identificação de um caso de uso de implementação específico para compartilhar tais informações.

### Caso de uso

* Consulta de procedimentos realizados em um Paciente
* [Registrar ou atualizar](https://build.fhir.org/ig/HL7/US-Core/future-of-US-core.html#future-candidate-requirements-under-consideration) um procedimento realizado em um paciente

### Caso de uso da RNDS

Na RNDS este recurso é utilizado como parte do RAC – Registro de Atendimento Clínico na seção de Procedimentos Realizados.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes (definição [Mandatory](https://build.fhir.org/ig/HL7/US-Core/must-support.html)) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição [Must Support](https://build.fhir.org/ig/HL7/US-Core/must-support.html)). Eles são apresentados abaixo em uma explicação simples e legível por humanos. Orientações e exemplos específicos de perfil também são fornecidos. As [Exibições Formais](https://build.fhir.org/ig/HL7/US-Core/StructureDefinition-us-core-procedure.html#profile) abaixo fornecem o resumo formal, definições e requisitos de terminologia.

**Cada procedimento deve ter:**

1. um status
1. um código que identifica o tipo de procedimento realizado no paciente
1. um paciente
1. quando o procedimento foi realizado

**Cada procedimento deve oferecer suporte a:**

1. o encontro associado ao procedimento

**Orientações de implementação específicas do perfil:**

* Procedure.performed é obrigatório se Procedure.status estiver “concluído” ou “em andamento”.
* O Procedure.code tem uma ligação adicional de “ atual “ e uma ligação base “preferida”. 
* Para as regras de conformidade sobre a vinculação [atual](https://hl7.org/fhir/R5/terminologies.html#binding) para dados codificados, revise [esta seção](https://build.fhir.org/ig/HL7/US-Core/general-requirements.html#current-binding-for-coded-elements) na página Requisitos Gerais.
* Os códigos de procedimento podem ser obtidos do ValueSet [BRProcedimentos](https://terminologia.saude.gov.br/#/orgs/MS/collections/BRProcedimentosNacionais-1.0/) Nacionais, que incluem os CS: SIGTAP, TUSS e CBHPM
 
* Servidores e Clientes **DEVERÃO** oferecer suporte aos Perfis br-core-servicerequest e br-core-procedure para comunicar o motivo ou justificativa para uma referência como Requisitos adicionais. Normalmente, o motivo ou justificativa para uma referência ou consulta é comunicado por meio da vinculação do procedure.basedOn do Perfil br-core- servicerequest que inclui serviceRequest.reasonCode ou quando o Procedimento não tem um ServiceRequest associado, ele é comunicado por meio do ServiceRequest.reasonReference do Perfil br-core- procedure . Dependendo do procedimento que está sendo documentado, um Servidor selecionará o Perfil apropriado para uso. Procedure.reasonCodeProcedure.reasonReference.

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

O recurso [br-core-procedure](StructureDefinition-br-core-procedure.md) não deve ser utilizado para capturar um evento se um recurso mais específico já existir - ou seja, [imunizações](https://hl7.org/fhir/r4/immunization.html), [administrações de medicamentos](https://hl7.org/fhir/r4/medicationadministration.html) e [comunicações](https://hl7.org/fhir/r4/communication.html). O limite entre determinar se uma ação é um Procedimento (treinamento ou aconselhamento) em oposição a uma Comunicação é baseado em se há uma intenção específica de mudar a mentalidade do paciente. A mera divulgação de informações seria considerada uma Comunicação. Um processo que envolve a verificação da compreensão do paciente ou para mudar o estado mental do paciente seria um Procedimento.

Observe que muitos processos de diagnóstico são procedimentos que geram Observations ([br-core-observation](StructureDefinition-br-core-observation.md)) e DiagnosticReports ([br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md)) . Em muitos casos, tal observação não requer uma representação explícita do procedimento usado para criar a observação, mas onde há detalhes de interesse sobre como o procedimento de diagnóstico foi realizado, o recurso Procedure ([br-core-procedure](StructureDefinition-br-core-procedure.md)) deve ser utilizado para descrever a atividade.

Alguns procedimentos de diagnóstico podem não ter um registro de Procedimento. O registro de Procedimento só é necessário quando há necessidade de capturar informações sobre a intervenção física que foi realizada para capturar as informações de diagnóstico (por exemplo, anestésico, incisão, tamanho do escopo, etc).

Uma Tarefa ([Task](https://hl7.org/fhir/r4/task.html)) é uma etapa do fluxo de trabalho, como cancelar um pedido, atender um pedido, assinar um pedido, mesclar um conjunto de registros, admitir um paciente. Procedimentos são ações que visam resultar em uma mudança física ou mental para ou para o sujeito (por exemplo, cirurgia, fisioterapia, treinamento, aconselhamento). Um recurso [Task](https://hl7.org/fhir/r4/task.html) geralmente existe em paralelo com recursos clínicos. Por exemplo, um [Task](https://hl7.org/fhir/r4/task.html) pode solicitar o atendimento de uma ServiceRequest ([br-core-servicerequest](https://hl7.org/fhir/r4/servicerequest.html)) solicitando um Procedimento.

**Usos:**

* Refere a este Perfil: [br-core-encounter](StructureDefinition-br-core-encounter.md), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md)... Show 4 more, [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md), [br-core-sumarioalta](StructureDefinition-br-core-sumarioalta.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-procedure.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Procedure](http://hl7.org/fhir/R4/procedure.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Procedure](http://hl7.org/fhir/R4/procedure.html) 

** Resumo **

Obrigatório: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)
* [br-core-composition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition)](StructureDefinition-br-core-composition.md)
* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Procedure](http://hl7.org/fhir/R4/procedure.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Procedure](http://hl7.org/fhir/R4/procedure.html) 

** Resumo **

Obrigatório: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)
* [br-core-composition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition)](StructureDefinition-br-core-composition.md)
* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-procedure.csv), [Excel](StructureDefinition-br-core-procedure.xlsx), [Schematron](StructureDefinition-br-core-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-procedure",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure",
  "version" : "1.1.0",
  "name" : "BRCoreProcedure",
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
  "description" : "Este recurso descreve uma ação que é ou foi realizada em ou para um paciente. Pode ser uma intervenção física como uma operação, ou menos invasiva como serviços de longo prazo, aconselhamento ou hipnoterapia",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.id",
      "path" : "Procedure.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Procedure.meta",
      "path" : "Procedure.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Procedure.implicitRules",
      "path" : "Procedure.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Procedure.language",
      "path" : "Procedure.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Procedure.text",
      "path" : "Procedure.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Procedure.contained",
      "path" : "Procedure.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Procedure.modifierExtension",
      "path" : "Procedure.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "Procedure.instantiatesCanonical",
      "path" : "Procedure.instantiatesCanonical",
      "short" : "Instâncias ou definições do protocolo FHIR",
      "definition" : "Instâncias ou definições do protocolo FHIR"
    },
    {
      "id" : "Procedure.instantiatesUri",
      "path" : "Procedure.instantiatesUri",
      "short" : "Instâncias externas do protocolo ou definições",
      "definition" : "Instâncias externas do protocolo ou definições"
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "short" : "Referência aos planos de cuidado/requisições para este procedimento",
      "definition" : "Referência aos planos de cuidado/requisições para este procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest"]
      }]
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "short" : "Referência aos procedimento/observação/administração de medicamentos asssociados a este procedimento",
      "definition" : "Referência aos procedimento/observação/administração de medicamentos asssociados a este procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration"]
      }]
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "Código do status do procedimento",
      "definition" : "Código do status do procedimento"
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "Motivo para o status atual",
      "definition" : "Motivo para o status atual",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRMotivoProcedimentoNaoRealizado"
      }
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "Classificação do procedimento",
      "definition" : "Classificação do procedimento. Exemplo: um código que classifica um procedimento para fins de pesquisa, classificação e exibição",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCategoriaProcedimento"
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Código do procedimento",
      "definition" : "Código do procedimento",
      "min" : 1,
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRProcedimentosNacionais"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "Referência ao paciente",
      "definition" : "Referência ao paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "Procedure.subject.id",
      "path" : "Procedure.subject.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Procedure.subject.extension",
      "path" : "Procedure.subject.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Procedure.subject.reference",
      "path" : "Procedure.subject.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Procedure.subject.type",
      "path" : "Procedure.subject.type",
      "short" : "Tipo ao qual a referência se refere (por exemplo, Paciente)",
      "definition" : "Tipo ao qual a referência se refere (por exemplo, Paciente)"
    },
    {
      "id" : "Procedure.subject.identifier",
      "path" : "Procedure.subject.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Procedure.subject.display",
      "path" : "Procedure.subject.display",
      "short" : "Texto alternativo para o recurso",
      "definition" : "Texto alternativo para o recurso"
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "short" : "Referência ao atendimento associado a este procedimento",
      "definition" : "Referência ao atendimento associado a este procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "short" : "Quando o procedimento foi realizado",
      "definition" : "Quando o procedimento foi realizado"
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "short" : "Referência à paciente/pessoa/profissional que registrou o procedimento",
      "definition" : "Referência à paciente/pessoa/profissional que registrou o procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"]
      }]
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "short" : "Referência à paciente/pessoa/profissional que atestou este procedimento",
      "definition" : "Referência à paciente/pessoa/profissional que atestou este procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"]
      }]
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "Executante do procedimento",
      "definition" : "Executante do procedimento",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Procedure.performer.id",
      "path" : "Procedure.performer.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Procedure.performer.extension",
      "path" : "Procedure.performer.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Procedure.performer.modifierExtension",
      "path" : "Procedure.performer.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Procedure.performer.function",
      "path" : "Procedure.performer.function",
      "short" : "Função do executante",
      "definition" : "Função do executante"
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "short" : "Referência do profispaciente/pessoa/profissional executante",
      "definition" : "Referência do profispaciente/pessoa/profissional executante",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "Procedure.performer.onBehalfOf",
      "path" : "Procedure.performer.onBehalfOf",
      "short" : "Referência à organização associada a este procedimento",
      "definition" : "Referência à organização associada a este procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Procedure.location",
      "path" : "Procedure.location",
      "short" : "Referência ao local de execução do procedimento",
      "definition" : "Referência ao local de execução do procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "short" : "Motivo da realização do procedimento",
      "definition" : "Motivo da realização do procedimento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRProblemaDiagnostico"
      }
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "short" : "Referência à condição, observação, procedimento, relatório diagnóstico, documento clínico associado ao procedimento",
      "definition" : "Referência à condição, observação, procedimento, relatório diagnóstico, documento clínico associado ao procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }]
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "short" : "Local anatômico associado ao procedimento",
      "definition" : "Local anatômico associado ao procedimento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "Resultado do procedimento",
      "definition" : "Resultado do procedimento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRDesfechoProcedimento"
      }
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "short" : "Referência ao documento/relatório resultantes deste procedimento",
      "definition" : "Referência ao documento/relatório resultantes deste procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition"]
      }]
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "short" : "Complicações deste procedimento",
      "definition" : "Complicações deste procedimento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRProblemaDiagnostico"
      }
    },
    {
      "id" : "Procedure.complicationDetail",
      "path" : "Procedure.complicationDetail",
      "short" : "Referência às condições resultantes das complicações dete procedimento",
      "definition" : "Referência às condições resultantes das complicações dete procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition"]
      }]
    },
    {
      "id" : "Procedure.followUp",
      "path" : "Procedure.followUp",
      "short" : "Instruções para acompanhamento",
      "definition" : "Instruções para acompanhamento"
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "Informações adicionais sobre o procedimento",
      "definition" : "Informações adicionais sobre o procedimento"
    },
    {
      "id" : "Procedure.focalDevice",
      "path" : "Procedure.focalDevice",
      "short" : "Dispositivo manipulado, implantado ou removido",
      "definition" : "Dispositivo manipulado, implantado ou removido"
    },
    {
      "id" : "Procedure.focalDevice.id",
      "path" : "Procedure.focalDevice.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Procedure.focalDevice.extension",
      "path" : "Procedure.focalDevice.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Procedure.focalDevice.modifierExtension",
      "path" : "Procedure.focalDevice.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Procedure.focalDevice.action",
      "path" : "Procedure.focalDevice.action",
      "short" : "Código do tipo de alteração no dispositivo durante o procedimento",
      "definition" : "Código do tipo de alteração no dispositivo durante o procedimento"
    },
    {
      "id" : "Procedure.focalDevice.manipulated",
      "path" : "Procedure.focalDevice.manipulated",
      "short" : "Referência ao dispositivo alterado neste procedimento",
      "definition" : "Referência ao dispositivo alterado neste procedimento"
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "short" : "Referência ao dispositivo/medicamento/substância utilizados durante o procedimento",
      "definition" : "Referência ao dispositivo/medicamento/substância utilizados durante o procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication",
        "http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "short" : "Tipo de dispositivos utilizados durante o procedimento",
      "definition" : "Tipo de dispositivos utilizados durante o procedimento"
    }]
  }
}

```
