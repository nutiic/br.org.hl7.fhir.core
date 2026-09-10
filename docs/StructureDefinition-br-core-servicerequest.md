# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreServiceRequest - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreServiceRequest**

## Resource Profile: BRCoreServiceRequest 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreServiceRequest |

 
Este recurso restringe o recurso [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) que registra uma solicitação de serviço, como investigações diagnósticas, tratamentos ou operações a serem realizadas 

### Escopo/Uso

O [br-core-servicerequest](StructureDefinition-br-core-servicerequest.md) é um registro de uma solicitação para um procedimento, diagnóstico ou outro serviço a ser planejado, proposto ou executado, conforme distinguido pela intenção, conforme o valor do campo **serviceRequest.intent**, relacionado a um ou em um paciente. O procedimento levará a um procedimento ([br-core-procedure](StructureDefinition-br-core-procedure.md)) ou a um relatório de diagnóstico ([br-core-diagnosticReport](StructureDefinition-br-core-diagnosticreport.md)), que por sua vez pode referenciar uma ou mais observações ([br-core-observation](StructureDefinition-br-core-observation.md)), que resumem o desempenho dos procedimentos e a documentação associada, como observações, imagens, descobertas que são relevantes para o tratamento/gerenciamento do sujeito.

Este recurso pode ser usado para compartilhar informações relevantes necessárias para dar suporte a uma referência ou transferência de solicitação de atendimento de um profissional ou organização para outro quando um paciente precisa ser encaminhado a outro provedor para uma consulta/segunda opinião e/ou para gerenciamento de curto ou longo prazo de um ou mais problemas ou questões de saúde.

Exemplos incluem:

* testes/estudos de diagnóstico
* procedimentos endoscópicos
* aconselhamento
* biópsias
* terapias (por exemplo, fisio, social, psicológica)
* cirurgias ou procedimentos (exploratórios)
* exercícios
* consulta e avaliações especializadas
* serviços comunitários
* serviços de enfermagem
* revisão de medicamentos farmacêuticos e
* outras intervenções clínicas.

Os procedimentos podem ser realizados por um profissional de saúde, um amigo ou parente ou, em alguns casos, pelo próprio paciente.

A principal intenção do [br-core-servicerequest](StructureDefinition-br-core-servicerequest.md) é dar suporte a procedimentos de pedidos para um paciente (o que inclui pacientes não humanos em medicina veterinária). No entanto, em muitos contextos, os processos relacionados à assistência médica incluem a realização de investigações diagnósticas em grupos de indivíduos, dispositivos envolvidos na prestação de assistência médica e até mesmo locais ambientais, como dutos, corpos d’água, etc. O [br-core-servicerequest](StructureDefinition-br-core-servicerequest.md) dá suporte a todos esses usos. A solicitação de serviço pode representar um pedido inserido por um profissional em um sistema prescrição eletrônica bem como uma proposta feita por um sistema de suporte à decisão clínica (CDS) com base no registro clínico de um paciente e no contexto de atendimento. Procedimentos planejados referenciados por um [br-core-careplan](StructureDefinition-br-core-careplan.md) também podem ser representados por este recurso.

Este recurso facilita que um sistema clínico gere uma solicitação de serviço. A solicitação de serviço é então acessada ou trocada com um sistema, talvez por meio de intermediários, que representa uma organização (por exemplo, serviço de diagnóstico ou imagem, equipe cirúrgica, departamento de fisioterapia) que pode executar o procedimento. A organização que recebe a solicitação de serviço, após aceitar a solicitação, atualizará a solicitação conforme o trabalho for executado e, finalmente, emitirá um relatório que faz referência às solicitações que ela atendeu.

O recurso [br-core-servicerequest](StructureDefinition-br-core-servicerequest.md) permite solicitar apenas um único procedimento. Se um fluxo de trabalho exigir a solicitação de vários procedimentos simultaneamente, isso será feito usando várias instâncias desse recurso. Essas instâncias podem ser vinculadas de diferentes maneiras, dependendo das necessidades do fluxo de trabalho. Para obter orientação, consulte o perfil FHIR R4 [Request](https://hl7.org/fhir/R4/request.html).

### Caso de uso

Exemplos de uso dos recursos do ServiceRequest são:

* Consulta sobre um procedimento específico ou solicitação de teste, como um pedido de eletrocardiograma (ECG) ou um encaminhamento para um programa de suporte.
* Consulta sobre um serviço específico oferecido a um paciente, como um encaminhamento para um programa de suporte.
* Consultar uma categoria de solicitação de serviço (por exemplo, todas as solicitações de cardiologia).

### Caso de uso da RNDS

Este perfil está representado pela requisição de regulação assistencial conforme [https://simplifier.net/redenacionaldedadosemsaude/brrequisicaoregulacaoassistencial](https://simplifier.net/redenacionaldedadosemsaude/brrequisicaoregulacaoassistencial). A estrutura da RNDS utiliza o perfil FHIR R4 [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html).

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada Perfil ServiceRequest deve ter:**

1. status - situação
1. intent - um código de intenção que indica se a solicitação é uma proposta, um plano ou um pedido
1. subject - um código que define o que está sendo solicitado
1. um paciente

### Cada Perfil ServiceRequest deve oferecer suporte a:

Não há elementos.

### Orientações de implementação específicas do perfil

### Limites e relacionamentos

O [br-core-servicerequest](StructureDefinition-br-core-servicerequest.md) é um registro de uma proposta/plano ou ordem para um serviço a ser executado que resultaria em um [br-core-procedure](StructureDefinition-br-core-procedure.md), [br-core-observation](StructureDefinition-br-core-observation.md), [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md), [br-core-imagingstudy](StructureDefinition-br-core-imagingstudy.md) ou recurso similar. Em contraste com ServiceRequest, [Task](https://hl7.org/fhir/R4/task.html) que abrange tanto a intenção quanto o evento e rastreia a execução até a conclusão e é destinado a ações “administrativas” como solicitar e rastrear coisas a serem feitas em um registro, ou manter o controle de uma lista de verificação de etapas a serem executadas como parte de um processo de atendimento. Um [br-core-servicerequest](StructureDefinition-br-core-servicerequest.md) pode ser uma autorização de nível superior que acionou a criação de Task, ou pode ser o recurso de “solicitação” que Task está buscando atender.

[ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) e [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html) estão relacionados. Um [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html) é uma solicitação para meramente divulgar informações. Enquanto um [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) seria usado para solicitar informações como parte de treinamento ou aconselhamento - ou seja, quando o processo envolverá a verificação da compreensão do paciente ou uma tentativa de mudar o estado mental do paciente. Em alguns fluxos de trabalho, ambos podem existir. Por exemplo, ao receber um [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html), um profissional pode iniciar um [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html).

Este recurso é referenciado por [Appointment](https://hl7.org/fhir/R4/appointment.html#Appointment), [BiologicallyDerivedProduct](https://hl7.org/fhir/R4/biologicallyderivedproduct.html#BiologicallyDerivedProduct), [br-core-careplan](StructureDefinition-br-core-careplan.md), [Claim](https://hl7.org/fhir/R4/claim.html#Claim), [DeviceUseStatement](https://hl7.org/fhir/R4/deviceusestatement.html#DeviceUseStatement), [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md), [br-core-encounter](StructureDefinition-br-core-encounter.md), [EpisodeOfCare](https://hl7.org/fhir/R4/episodeofcare.html#EpisodeOfCare), [ExplanationOfBenefit](https://hl7.org/fhir/R4/explanationofbenefit.html#ExplanationOfBenefit), [Goal](https://hl7.org/fhir/R4/goal.html#Goal), [br-core-imagingstudy](StructureDefinition-br-core-imagingstudy.md), [Media](https://hl7.org/fhir/R4/media.html#Media), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [br-core-observation](StructureDefinition-br-core-observation.md), [br-core-procedure](StructureDefinition-br-core-procedure.md), [QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html#QuestionnaireResponse), [br-core-specimen](StructureDefinition-br-core-specimen.md).

**Usos:**

* Refere a este Perfil: [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [br-core-encounter](StructureDefinition-br-core-encounter.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md)... Show 5 more, [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md), [BRCoreSpecimen](StructureDefinition-br-core-specimen.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-servicerequest.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Resumo **

Obrigatório: 4 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [br-core-healthcareservice (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice)](StructureDefinition-br-core-healthcareservice.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)

 **Visão diferencial** 

Esta estrutura é derivada de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Resumo **

Obrigatório: 4 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [br-core-healthcareservice (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice)](StructureDefinition-br-core-healthcareservice.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-servicerequest.csv), [Excel](StructureDefinition-br-core-servicerequest.xlsx), [Schematron](StructureDefinition-br-core-servicerequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-servicerequest",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest",
  "version" : "1.1.0",
  "name" : "BRCoreServiceRequest",
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
  "description" : "Este recurso restringe o recurso [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) que registra uma solicitação de serviço, como investigações diagnósticas, tratamentos ou operações a serem realizadas",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.id",
      "path" : "ServiceRequest.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "ServiceRequest.meta",
      "path" : "ServiceRequest.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "ServiceRequest.implicitRules",
      "path" : "ServiceRequest.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "ServiceRequest.language",
      "path" : "ServiceRequest.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "ServiceRequest.text",
      "path" : "ServiceRequest.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "ServiceRequest.contained",
      "path" : "ServiceRequest.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "ServiceRequest.modifierExtension",
      "path" : "ServiceRequest.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "ServiceRequest.instantiatesCanonical",
      "path" : "ServiceRequest.instantiatesCanonical",
      "short" : "Instancia o protocolo ou definição FHIR",
      "definition" : "Instancia o protocolo ou definição FHIR"
    },
    {
      "id" : "ServiceRequest.instantiatesUri",
      "path" : "ServiceRequest.instantiatesUri",
      "short" : "Instancia protocolo externo ou definição",
      "definition" : "Instancia protocolo externo ou definição"
    },
    {
      "id" : "ServiceRequest.basedOn",
      "path" : "ServiceRequest.basedOn",
      "short" : "Referência aos planos de cuidado/solicitações/medicamentos associados a esta requisição",
      "definition" : "Referência aos planos de cuidado/solicitações/medicamentos associados a esta requisição",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest"]
      }]
    },
    {
      "id" : "ServiceRequest.replaces",
      "path" : "ServiceRequest.replaces",
      "short" : "Referência à requisição a ser substituida",
      "definition" : "Referência à requisição a ser substituida"
    },
    {
      "id" : "ServiceRequest.requisition",
      "path" : "ServiceRequest.requisition",
      "short" : "Identificador da requisição",
      "definition" : "Identificador da requisição"
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "short" : "Status da requisição",
      "definition" : "Status da requisição"
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "short" : "Código da intencionalidade desta requisição",
      "definition" : "Código da intencionalidade desta requisição"
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "short" : "Categoria desta requisição",
      "definition" : "Categoria desta requisição",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCategoriaProcedimento"
      }
    },
    {
      "id" : "ServiceRequest.priority",
      "path" : "ServiceRequest.priority",
      "short" : "Prioridade desta requisição",
      "definition" : "Prioridade desta requisição",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCaraterAtendimentoMIRA"
      }
    },
    {
      "id" : "ServiceRequest.doNotPerform",
      "path" : "ServiceRequest.doNotPerform",
      "short" : "Verdadeiro se o serviço/procedimento não deve ser executado",
      "definition" : "Verdadeiro se o serviço/procedimento não deve ser executado"
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Código do procedimento solicitado",
      "definition" : "Código do procedimento solicitado",
      "min" : 1,
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRProcedimentosNacionais"
      }
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "short" : "Informações adicionais da requesição",
      "definition" : "Informações adicionais da requesição"
    },
    {
      "id" : "ServiceRequest.quantity[x]",
      "path" : "ServiceRequest.quantity[x]",
      "short" : "Quantidade de procedimento solicitados",
      "definition" : "Quantidade de procedimento solicitados"
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "short" : "Referência ao paciente/grupo/localidade/dispositivo associado a esta requisição",
      "definition" : "Referência ao paciente/grupo/localidade/dispositivo associado a esta requisição",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "short" : "Referência ao atendimento relacionado a esta requisição",
      "definition" : "Referência ao atendimento relacionado a esta requisição"
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "short" : "Quando o procedimento deve ocorrer",
      "definition" : "Quando o procedimento deve ocorrer"
    },
    {
      "id" : "ServiceRequest.asNeeded[x]",
      "path" : "ServiceRequest.asNeeded[x]",
      "short" : "Pré-condições para a realização do procedimento",
      "definition" : "Pré-condições para a realização do procedimento"
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "short" : "Data de assinatura da requisição",
      "definition" : "Data de assinatura da requisição"
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "short" : "Referência ao profissional/organização/paciente/dispotivo/pessoa relacionada que está solicitando o procedimento",
      "definition" : "Referência ao profissional/organização/paciente/dispotivo/pessoa relacionada que está solicitando o procedimento",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "ServiceRequest.performerType",
      "path" : "ServiceRequest.performerType",
      "short" : "Função do profissional executante solicitado",
      "definition" : "Função do profissional executante solicitado"
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "short" : "Referência ao profissional executante solicitado",
      "definition" : "Referência ao profissional executante solicitado",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "ServiceRequest.locationCode",
      "path" : "ServiceRequest.locationCode",
      "short" : "Localização solicitada",
      "definition" : "Localização solicitada"
    },
    {
      "id" : "ServiceRequest.locationReference",
      "path" : "ServiceRequest.locationReference",
      "short" : "ReferÇencia à localização solicitada",
      "definition" : "ReferÇencia à localização solicitada",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "short" : "Explicação/Justificativa para procedimento ou serviço",
      "definition" : "Explicação/Justificativa para procedimento ou serviço"
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "short" : "Referência à explicação/justificativa para serviço ou procedimento",
      "definition" : "Referência à explicação/justificativa para serviço ou procedimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }]
    },
    {
      "id" : "ServiceRequest.insurance",
      "path" : "ServiceRequest.insurance",
      "short" : "Referência às coberturas associadas",
      "definition" : "Referência às coberturas associadas"
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "short" : "Referência às informações adicionais",
      "definition" : "Referência às informações adicionais"
    },
    {
      "id" : "ServiceRequest.specimen",
      "path" : "ServiceRequest.specimen",
      "short" : "Referência à amostras associadas",
      "definition" : "Referência à amostras associadas"
    },
    {
      "id" : "ServiceRequest.bodySite",
      "path" : "ServiceRequest.bodySite",
      "short" : "Local anatômico associado ao procedimento",
      "definition" : "Local anatômico associado ao procedimento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "short" : "Comentários",
      "definition" : "Comentários"
    },
    {
      "id" : "ServiceRequest.patientInstruction",
      "path" : "ServiceRequest.patientInstruction",
      "short" : "Instruções para o paciente",
      "definition" : "Instruções para o paciente"
    },
    {
      "id" : "ServiceRequest.relevantHistory",
      "path" : "ServiceRequest.relevantHistory",
      "short" : "Referência ao recurso Provenance",
      "definition" : "Referência ao recurso Provenance"
    }]
  }
}

```
