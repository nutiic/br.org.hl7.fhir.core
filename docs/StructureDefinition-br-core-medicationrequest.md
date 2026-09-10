# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-medicationrequest - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-medicationrequest**

## Resource Profile: br-core-medicationrequest 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreMedicationRequest |

 
Um pedido ou solicitação para fornecimento do medicamento e instruções para administração do medicamento a um paciente. O recurso é chamado de ‘MedicationRequest’ em vez de ‘MedicationPrescription’ ou ‘MedicationOrder’ para generalizar o uso em ambientes de internação e ambulatorial, incluindo planos de cuidados, etc., e para harmonizar com padrões de fluxo de trabalho 

### Escopo/Uso

Este recurso abrange todos os tipos de pedidos de medicamentos para um paciente. Isso inclui pedidos de medicamentos para internação, bem como pedidos comunitários (sejam atendidos pelo prescritor ou por uma farmácia). Também inclui pedidos de medicamentos de venda livre (por exemplo, aspirina), nutrição parenteral total e suplementos dietéticos/vitamínicos. Pode ser usado para dar suporte ao pedido de dispositivos relacionados a medicamentos. Não se destina ao uso na prescrição de dietas específicas ou para solicitar itens não relacionados a medicamentos (óculos, suprimentos, etc.). Além disso, o [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md) pode ser utilizado para relatar pedidos/solicitações de sistemas externos que foram relatados para fins informativos e não são autoritativos e não se espera que sejam atendidos (por exemplo, dispensados ou administrados).

O recurso [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md) é um recurso de “solicitação” de uma perspectiva de fluxo de trabalho FHIR - consulte [Solicitação de fluxo de trabalho](https://www.hl7.org/fhir/R4/workflow.html#request).

O recurso o [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md) permite solicitar apenas um único medicamento. Se um fluxo de trabalho exigir a solicitação de vários itens simultaneamente, isso será feito usando várias instâncias desse recurso. Essas instâncias podem ser vinculadas de diferentes maneiras, dependendo das necessidades do fluxo de trabalho. Para obter orientação, consulte o padrão [Request](https://www.hl7.org/fhir/R4/request.html#compound).

### Caso de uso da RNDS

Na RNDS o documento clínico [Registro da Prescrição de Medicamentos (RPM)](https://simplifier.net/redenacionaldedadosemsaude/brregistroprescricaomedicamento) descreve a prescrição de medicamentos por profissional de saúde habilitado, compreendendo a prescrição em âmbito de atendimento ambulatorial e de medicamentos não sujeitos a controle especial. Para isso a RDNS utiliza a structuredefintion [BRPrescricaoMedicamento](https://simplifier.net/redenacionaldedadosemsaude/brprescricaomedicamento) para descrever a prescrição de medicamentos. Cada um dos medicamentos prescritos são descritos utilizando outra estrutura, a structuredefinition [BRMedicamento](https://simplifier.net/redenacionaldedadosemsaude/brmedicamento). Os modelos da RNDS não contemplam todos os caso de uso previstos para os casos de uso do recurso MedicationRequest. O perfil [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md) foi criado para atender todos os casos de uso de prescrição de medicamentos: comunitários, ambulatoriais medicamentos controlados, prescrição única e de uso contínuo e de venda livre em farmácias comerciais.

### Identificadores

Não se aplica.

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

O recurso [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md) é utilizado solicitar ou pedir medicamentos para um indivíduo. Este também pode ser utilizado para relatar uma solicitação ou pedido de medicamento de uma organização ou fonte para outra. Ao solicitar suprimentos ou dispositivos quando há um foco no paciente ou instruções sobre seu uso, [SupplyRequest](https://www.hl7.org/fhir/R4/supplyrequest.html) ou [DeviceRequest](https://www.hl7.org/fhir/R4/devicerequest.html) devem ser utilizados. Ao relatar o uso de um medicamento por um paciente, o recurso [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md) deve ser utilizado.

O domínio Medicamentos inclui uma série de recursos relacionados:

| | |
| :--- | :--- |
| MedicationRequest([br-core-medicationrequest](StructureDefinition-br-core-medicationrequest)) | Uma ordem para fornecimento do medicamento e instruções para administração do medicamento a um paciente. |
| MedicamentoDispense([br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md)) | Fornecimento de um medicamento com a intenção de que ele seja posteriormente consumido por um paciente (geralmente em resposta a uma prescrição). |
| MedicationAdministration([br-core-medicationadministration](StructureDefinition-br-core-medicationdadministration.md)) | Quando um paciente realmente consome um medicamento, ou o medicamento é administrado a ele de outra forma |
| MedicationStatement([br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md)) | Este é um registro de um medicamento sendo tomado por um paciente ou que um medicamento foi dado a um paciente, onde o registro é o resultado de um relatório do paciente ou de outro clínico. Uma declaração de medicamento não é parte do fluxo prescrever->dispensar->administrar, mas é um relatório de que este fluxo (ou pelo menos uma parte dela) ocorreu, resultando em uma crença de que o paciente recebeu um medicamento específico. |

Este recurso é referenciado por [br-core-careplan](https://www.hl7.org/fhir/R4/careplan.html#CarePlan), [Claim](https://www.hl7.org/fhir/R4/claim.html#Claim), [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticresport), [ExplanationOfBenefit](https://www.hl7.org/fhir/R4/explanationofbenefit.html#ExplanationOfBenefit), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationastatement), [br-core-observation](StructureDefinition-br-core-observation.md) e [br-core-servicerequest](StructureDefinition-br-core-servicerequest.md).

**Usos:**

* Refere a este Perfil: [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md)... Show 6 more, [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md), [br-core-sumarioalta](StructureDefinition-br-core-sumarioalta.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-medicationrequest.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

** Resumo **

Obrigatório: 2 elementos(3 aninhado obrigatoriamente elementos)
 Proibido: 1 elemento

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.reported[x]
* The element 1 is sliced based on the value of MedicationRequest.medication[x]

 **Visão diferencial** 

Esta estrutura é derivada de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

** Resumo **

Obrigatório: 2 elementos(3 aninhado obrigatoriamente elementos)
 Proibido: 1 elemento

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.reported[x]
* The element 1 is sliced based on the value of MedicationRequest.medication[x]

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-medicationrequest.csv), [Excel](StructureDefinition-br-core-medicationrequest.xlsx), [Schematron](StructureDefinition-br-core-medicationrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-medicationrequest",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest",
  "version" : "1.1.1",
  "name" : "BRCoreMedicationRequest",
  "title" : "br-core-medicationrequest",
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
  "description" : "Um pedido ou solicitação para fornecimento do medicamento e instruções para administração do medicamento a um paciente. O recurso é chamado de 'MedicationRequest' em vez de 'MedicationPrescription' ou 'MedicationOrder' para generalizar o uso em ambientes de internação e ambulatorial, incluindo planos de cuidados, etc., e para harmonizar com padrões de fluxo de trabalho",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.id",
      "path" : "MedicationRequest.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "MedicationRequest.meta",
      "path" : "MedicationRequest.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "MedicationRequest.implicitRules",
      "path" : "MedicationRequest.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "MedicationRequest.language",
      "path" : "MedicationRequest.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "MedicationRequest.text",
      "path" : "MedicationRequest.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "MedicationRequest.contained",
      "path" : "MedicationRequest.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "MedicationRequest.extension",
      "path" : "MedicationRequest.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "MedicationRequest.modifierExtension",
      "path" : "MedicationRequest.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "MedicationRequest.identifier",
      "path" : "MedicationRequest.identifier",
      "short" : "Identificadores para este recurso",
      "definition" : "Identificadores para este recurso"
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Status atual da requisição de medicamento: ativa,  em espera, cancelada, concluída, registrada por engano, interrompida, rascunho, desconhecido",
      "definition" : "Status atual da requisição de medicamento: ativa,  em espera, cancelada, concluída, registrada por engano, interrompida, rascunho, desconhecido"
    },
    {
      "id" : "MedicationRequest.statusReason",
      "path" : "MedicationRequest.statusReason",
      "short" : "Motivo do status atual",
      "definition" : "Motivo do status atual"
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Tipo de requisição de medicamento: prescrição, prescrição original, prescrição automática, reposição, refill, planejada, opcional (a critério médico), instância específica da prescrição",
      "definition" : "Tipo de requisição de medicamento: prescrição, prescrição original, prescrição automática, reposição, refill, planejada, opcional (a critério médico), instância específica da prescrição"
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "short" : "Código que identifica a categoria de uso do medicamento requisitado",
      "definition" : "Código que identifica a categoria de uso do medicamento requisitado"
    },
    {
      "id" : "MedicationRequest.priority",
      "path" : "MedicationRequest.priority",
      "short" : "Identifica o grau de prioridade da requisição de medicamentos",
      "definition" : "Identifica o grau de prioridade da requisição de medicamentos: rotina | urgente | o mais rápido possível | emergência",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.doNotPerform",
      "path" : "MedicationRequest.doNotPerform",
      "short" : "Verdadeiro se a requisição for de proibição de execução",
      "definition" : "Verdadeiro se a requisição for de proibição de execução"
    },
    {
      "id" : "MedicationRequest.reported[x]",
      "path" : "MedicationRequest.reported[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Informado em vez de registro primário",
      "definition" : "Informado em vez de registro primário"
    },
    {
      "id" : "MedicationRequest.reported[x]:reportedReference",
      "path" : "MedicationRequest.reported[x]",
      "sliceName" : "reportedReference",
      "short" : "Reportado em vez de ser o registro primário",
      "definition" : "Reportado em vez de ser o registro primário",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Medicamento prescrito",
      "definition" : "Medicamento prescrito"
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationReference",
      "path" : "MedicationRequest.medication[x]",
      "sliceName" : "medicationReference",
      "short" : "Referência ao br-core-medication",
      "definition" : "Referência ao br-core-medication",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication"]
      }]
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "short" : "Referência oa paciente que se destina esta requisição de medicamento",
      "definition" : "Referência oa paciente que se destina esta requisição de medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "MedicationRequest.subject.id",
      "path" : "MedicationRequest.subject.id",
      "short" : "Identificador único para referência entre elementos",
      "definition" : "Identificador único para referência entre elementos"
    },
    {
      "id" : "MedicationRequest.subject.extension",
      "path" : "MedicationRequest.subject.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "MedicationRequest.subject.reference",
      "path" : "MedicationRequest.subject.reference",
      "short" : "Referência literal. URL relativa, interna ou externa",
      "definition" : "Referência literal. URL relativa, interna ou externa"
    },
    {
      "id" : "MedicationRequest.subject.type",
      "path" : "MedicationRequest.subject.type",
      "short" : "Tipo de recurso ao qual a referência é feita",
      "definition" : "Tipo de recurso ao qual a referência é feita"
    },
    {
      "id" : "MedicationRequest.subject.identifier",
      "path" : "MedicationRequest.subject.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "MedicationRequest.subject.display",
      "path" : "MedicationRequest.subject.display",
      "short" : "Alternativa de texto para o recurso",
      "definition" : "Alternativa de texto para o recurso"
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "short" : "Referência ao atendimento",
      "definition" : "Referência ao atendimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "MedicationRequest.supportingInformation",
      "path" : "MedicationRequest.supportingInformation",
      "short" : "Informações para apoiar a requisição do medicamento",
      "definition" : "Informações para apoiar a requisição do medicamento"
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "short" : "Data de criação desta requisição de medicamento",
      "definition" : "Data de criação desta requisição de medicamento",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "Referência à quem ou o quê solicitou esta requisição",
      "definition" : "Referência à quem ou o quê solicitou esta requisição",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "MedicationRequest.performer",
      "path" : "MedicationRequest.performer",
      "short" : "Referência ao prescritor indicado para a administração do medicamento",
      "definition" : "Referência ao prescritor indicado para a administração do medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }]
    },
    {
      "id" : "MedicationRequest.performerType",
      "path" : "MedicationRequest.performerType",
      "short" : "Especialidade do prescritor para a administração do medicamento",
      "definition" : "Especialidade do prescritor para a administração do medicamento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "MedicationRequest.recorder",
      "path" : "MedicationRequest.recorder",
      "short" : "Pessoa que registrou a requisição",
      "definition" : "Pessoa que registrou a requisição",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"]
      }]
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "short" : "Motivo ou indicação para solicitar ou não o medicamento. Conceito codificado que indica o motivo pelo qual o medicamento foi solicitado ou não",
      "definition" : "Motivo ou indicação para solicitar ou não o medicamento. Conceito codificado que indica o motivo pelo qual o medicamento foi solicitado ou não",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCID10"
      }
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "short" : "Condição ou observação que apoia o motivo pelo qual a prescrição está sendo escrita",
      "definition" : "Condição ou observação que apoia o motivo pelo qual a prescrição está sendo escrita",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation"]
      }]
    },
    {
      "id" : "MedicationRequest.instantiatesCanonical",
      "path" : "MedicationRequest.instantiatesCanonical",
      "short" : "Instancia do protocolo ou definição FHIR",
      "definition" : "Instancia do protocolo ou definição FHIR"
    },
    {
      "id" : "MedicationRequest.instantiatesUri",
      "path" : "MedicationRequest.instantiatesUri",
      "short" : "URI da instancia do  protocolo ou a definição FHIR externa",
      "definition" : "URI da instancia do protocolo ou a definição externa"
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "short" : "o quê a requisição atende",
      "definition" : "o quê a requisição atende",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation"]
      }]
    },
    {
      "id" : "MedicationRequest.groupIdentifier",
      "path" : "MedicationRequest.groupIdentifier",
      "short" : "requisição composta da qual esta requisição faz parte",
      "definition" : "requisição composta da qual esta requisição faz parte"
    },
    {
      "id" : "MedicationRequest.courseOfTherapyType",
      "path" : "MedicationRequest.courseOfTherapyType",
      "short" : "Identifica o padrão de administração de medicamentos",
      "definition" : "Identifica o padrão de administração de medicamentos"
    },
    {
      "id" : "MedicationRequest.insurance",
      "path" : "MedicationRequest.insurance",
      "short" : "Cobertura de planos/seguros de saúde associada",
      "definition" : "Cobertura de planos/seguros de saúde associada"
    },
    {
      "id" : "MedicationRequest.note",
      "path" : "MedicationRequest.note",
      "short" : "Informações sobre a requisição",
      "definition" : "Informações sobre a requisição"
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "short" : "Como o medicamento deve ser usado",
      "definition" : "Como o medicamento deve ser usado",
      "max" : "1"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.id",
      "path" : "MedicationRequest.dosageInstruction.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.extension",
      "path" : "MedicationRequest.dosageInstruction.extension",
      "short" : "Conteúdo adicional definido pelas implementações",
      "definition" : "Conteúdo adicional definido pelas implementações"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.modifierExtension",
      "path" : "MedicationRequest.dosageInstruction.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.sequence",
      "path" : "MedicationRequest.dosageInstruction.sequence",
      "short" : "Ordem na requisição",
      "definition" : "Ordem na requisição"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.text",
      "path" : "MedicationRequest.dosageInstruction.text",
      "short" : "Instruções de dosagem em texto livre, por exemplo, SIG",
      "definition" : "Instruções de dosagem em texto livre, por exemplo, SIG"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.additionalInstruction",
      "path" : "MedicationRequest.dosageInstruction.additionalInstruction",
      "short" : "Instruções suplementares ou advertências ao paciente",
      "definition" : "Instruções suplementares ou advertências ao paciente - por exemplo: 'com as refeições', 'pode ​​causar sonolência'"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.patientInstruction",
      "path" : "MedicationRequest.dosageInstruction.patientInstruction",
      "short" : "Instruções orientadas ao paciente ou ao consumidor",
      "definition" : "Instruções orientadas ao paciente ou ao consumidor"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing",
      "path" : "MedicationRequest.dosageInstruction.timing",
      "short" : "Quando a medicamento deve ser administrado",
      "definition" : "Quando a medicamento deve ser administrado"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat",
      "short" : "Quando o evento ocorre",
      "definition" : "Quando o evento ocorre",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "path" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "short" : "Conceito codificado que identifica a pré-condição que deve ser atendida ou avaliada antes de consumir ou administrar uma dose de medicamento",
      "definition" : "Conceito codificado que identifica a pré-condição que deve ser atendida ou avaliada antes de consumir ou administrar uma dose de medicamento",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCID10"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.site",
      "path" : "MedicationRequest.dosageInstruction.site",
      "short" : "Local anatômico de administração do medicamento",
      "definition" : "Local anatômico de administração do medicamento"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route",
      "path" : "MedicationRequest.dosageInstruction.route",
      "short" : "Via de admiminstração do medicamento",
      "definition" : "Via de admiminstração do medicamento",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.method",
      "path" : "MedicationRequest.dosageInstruction.method",
      "short" : "Método de administração do medicamento",
      "definition" : "Método de administração do medicamento"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate",
      "short" : "Quantidade a ser administrada do medicamento",
      "definition" : "Quantidade a ser administrada do medicamento"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.id",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.extension",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.extension",
      "short" : "Conteúdo adicional definido pelas implementações",
      "definition" : "Conteúdo adicional definido pelas implementações"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.type",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.type",
      "short" : "O tipo de dose ou taxa de administração especificada",
      "definition" : "O tipo de dose ou taxa de administração especificada"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "short" : "Quantidade de medicamento por dose",
      "definition" : "Quantidade de medicamento por dose",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "short" : "Quantidade de medicamento por unidade de tempo",
      "definition" : "Quantidade de medicamento por unidade de tempo"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod",
      "short" : "Quantidade máxima de medicamento por unidade de tempo",
      "definition" : "Quantidade máxima de medicamento por unidade de tempo"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerAdministration",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerAdministration",
      "short" : "Quantidade máxima de medicamento por administração",
      "definition" : "Quantidade máxima de medicamento por administração"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerLifetime",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerLifetime",
      "short" : "Quantidade máxima de medicamento por toda a vida do paciente",
      "definition" : "Quantidade máxima de medicamento por toda a vida do paciente"
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "short" : "Autorização de fornecimento de medicamentos",
      "definition" : "Autorização de fornecimento de medicamentos"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.id",
      "path" : "MedicationRequest.dispenseRequest.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.extension",
      "path" : "MedicationRequest.dispenseRequest.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.modifierExtension",
      "path" : "MedicationRequest.dispenseRequest.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.initialFill",
      "path" : "MedicationRequest.dispenseRequest.initialFill",
      "short" : "Preenchimento dos primeiros detalhes da autorização de fornecimento de medicamentos",
      "definition" : "Preenchimento dos primeiros detalhes da autorização de fornecimento de medicamentos"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.initialFill.id",
      "path" : "MedicationRequest.dispenseRequest.initialFill.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.initialFill.extension",
      "path" : "MedicationRequest.dispenseRequest.initialFill.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.initialFill.modifierExtension",
      "path" : "MedicationRequest.dispenseRequest.initialFill.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.initialFill.quantity",
      "path" : "MedicationRequest.dispenseRequest.initialFill.quantity",
      "short" : "Quantidade inicial de fornecimento autorizada",
      "definition" : "Quantidade inicial de fornecimento autorizada"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.initialFill.duration",
      "path" : "MedicationRequest.dispenseRequest.initialFill.duration",
      "short" : "Duração da primeira autorização de fornecimento de medicamentos",
      "definition" : "Duração da primeira autorização de fornecimento de medicamentos"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.dispenseInterval",
      "path" : "MedicationRequest.dispenseRequest.dispenseInterval",
      "short" : "Período mínimo de tempo entre dispensações de medicamentos autorizado",
      "definition" : "Período mínimo de tempo entre dispensações de medicamentos autorizado"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod",
      "short" : "Validade da autorização de fornecimento de medicamentos",
      "definition" : "validade da autorização de fornecimento de medicamentos",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod.id",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod.start",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod.start",
      "short" : "Data/Hora do início da validade da autorização(intervalo fechado)",
      "definition" : "Data/Hora de início da validade da autorização (intervalo fechado)"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod.end",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod.end",
      "short" : "Data/Hora do final da validade da autorização(intervalo fechado)",
      "definition" : "Data/Hora do final da validade da autorização(intervalo fechado), se não for contínuo"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "short" : "Número de refills autorizados",
      "definition" : "Número de refills autorizados"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity",
      "path" : "MedicationRequest.dispenseRequest.quantity",
      "short" : "Quantidade de medicamento a ser fornecido por dispensação",
      "definition" : "Quantidade de medicamento a ser fornecido por dispensação"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.expectedSupplyDuration",
      "path" : "MedicationRequest.dispenseRequest.expectedSupplyDuration",
      "short" : "Número de dias de fornecimento de medicamentos por dispensação",
      "definition" : "Número de dias de fornecimento de medicamentos por dispensação"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.performer",
      "path" : "MedicationRequest.dispenseRequest.performer",
      "short" : "Referência à organização preferencial para a dispensação",
      "definition" : "Referência à organização preferencial para a dispensação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "MedicationRequest.substitution",
      "path" : "MedicationRequest.substitution",
      "short" : "Restrições à substituição de medicamentos",
      "definition" : "Restrições à substituição de medicamentos"
    },
    {
      "id" : "MedicationRequest.substitution.id",
      "path" : "MedicationRequest.substitution.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationRequest.substitution.extension",
      "path" : "MedicationRequest.substitution.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "MedicationRequest.substitution.modifierExtension",
      "path" : "MedicationRequest.substitution.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "MedicationRequest.substitution.allowed[x]",
      "path" : "MedicationRequest.substitution.allowed[x]",
      "short" : "Informa se a substituição de medicamentos é ou não permitida",
      "definition" : "Informa se a substituição de medicamentos é ou não permitida"
    },
    {
      "id" : "MedicationRequest.substitution.reason",
      "path" : "MedicationRequest.substitution.reason",
      "short" : "Porque (ou não) a substituição foi feita",
      "definition" : "Um conceito codificado que descreve a razão pela qual um medicamento diferente deve (ou não) ser substituído daquele que foi prescrito"
    },
    {
      "id" : "MedicationRequest.priorPrescription",
      "path" : "MedicationRequest.priorPrescription",
      "short" : "Referência à requisição anterior que está sendo substituída",
      "definition" : "Referência à requisição anterior que está sendo substituída",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest"]
      }]
    },
    {
      "id" : "MedicationRequest.detectedIssue",
      "path" : "MedicationRequest.detectedIssue",
      "short" : "Referência à condição clínica detectada",
      "definition" : "Referência à condição clínica detectada"
    },
    {
      "id" : "MedicationRequest.eventHistory",
      "path" : "MedicationRequest.eventHistory",
      "short" : "Referência à uma lista de eventos de interesse na linha do tempo",
      "definition" : "Referência à uma lista de eventos de interesse na linha do tempo"
    }]
  }
}

```
