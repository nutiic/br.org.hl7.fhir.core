# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-medicationdispense - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-medicationdispense**

## Resource Profile: br-core-medicationdispense 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense | *Versão*:1.1.0 |
| Active as of 2026-09-01 | *Nome computável*:BRCoreMedicationDispense |

 
Este recurso Indica que um medicamento deve ser ou foi dispensado para uma pessoa/paciente. O recurso inclui a descrição do medicamento (suprimento) fornecido bem como as instruções para a sua administração. A dispensação do medicamento é o resultado de um pedido de medicamentos feito por um sistema de informações 

### Escopo/Uso

Este recurso abrange o fornecimento de medicamentos a um paciente. Exemplos incluem dispensação e retirada de uma farmácia ambulatorial ou comunitária, dispensação de medicamentos específicos do paciente da farmácia hospitalar para uma enfermaria, bem como emissão de uma dose única do estoque da enfermaria para um paciente para consumo final.

MedicationDispense é um recurso de evento de uma perspectiva de fluxo de trabalho FHIR - veja [https://hl7.org/fhir/r4/workflow.html#event](https://hl7.org/fhir/r4/workflow.html#event).

### Caso de uso

O recurso brasileiro [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md) restringe os casos de uso do Recurso FHIR canônico, e deve ser utilizado para dispensação de qualquer medicamento, em qualquer tipo de estabelecimento, mesmo não vinculado ao SUS.

O recurso [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md) contempla as seguintes situações de uso:

* Solicitações de medicamentos de Atenção Primária, Assistência Comunitária e Atendimento de Urgência e Emergência em uma farmácia do SUS;
* Solicitações de medicamentos ambulatoriais para uma farmácia privada;
* Solicitações de medicamentos ambulatoriais a um provedor de medicamentos;
* Solicitações de medicamentos para internação, para um paciente nomeado, a serem dispensados pela farmácia do hospital e destinados à administração em um leito do hospital;
* Solicitações de medicamentos para um paciente nomeado que está em licença de curta duração de uma internação (mas não recebeu alta), a serem dispensados pela farmácia do hospital e destinados à administração em casa;
* Solicitações de medicamentos na alta, para um paciente nomeado, a serem dispensados pela farmácia do hospital e emitidos na alta para administração em casa;
* Solicitações de medicamentos ambulatoriais, para um paciente nomeado, a serem dispensados pela farmácia do hospital e destinados à administração no departamento ambulatorial, departamento de emergência ou unidade de hospital-dia;
* Solicitações de medicamentos ambulatoriais, para um paciente nomeado, a serem dispensados pela farmácia do hospital para administração em casa.

### Caso de uso da RNDS

NA RNDS o registro de Dispensação de Medicamentos (RDM) é descrito como um documento clínico (composition) conforme [BRRegistrodispensacaomedicamento](https://simplifier.net/redenacionaldedadosemsaude/brregistrodispensacaomedicamento). Esta estrutura referencia o recurso RNDS [BRDispensacaoMedicamento](https://simplifier.net/redenacionaldedadosemsaude/brdispensacaomedicamento) que é o FHIR R4 – medicationdispense, ou seja, exatamente o que está sendo descrito aqui. Na RNDS este registro está limitado a dispensação de medicamentos **não sujeitos a controle especial ocorrida em âmbito de atendimento ambulatorial por unidades públicas de saúde, unidades privadas financiadas pelo SUS ou pelo Programa Farmácia Popular do Brasil**, conforme modelo disposto no Anexo B da Portaria SAES/MS nº 50/2022.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes ( definição Mandatory ) ou devem ser suportados se os dados estiverem presentes no sistema de envio ( definição Must Support ). Eles são apresentados abaixo em uma explicação simples e legível por humanos. Orientações e exemplos específicos de perfil também são fornecidos. As Exibições Formais abaixo fornecem o resumo formal, definições e requisitos de terminologia.

**Cada medicamento dispensado deve ter:**

1. um status (por exemplo, dispensado, não dispensado)
1. um medicamento*
1. um paciente
* veja orientação abaixo

**Cada dispensação de medicamento deve suportar:**

1. o encontro associado à dispensação
1. quem dispensou o medicamento
1. a prescrição autorizadora
1. tipo de dispensação (por exemplo, parcialmente dispensado)
1. a quantidade dispensada
1. uma data para quando o medicamento foi dispensado ao paciente
1. instruções de dosagem em texto livre
1. quando a medicamento deve ser administrada
1. a via de administração
1. a dose e a taxa (doseAndRate)

**Orientações de implementação específicas do perfil:**

* O recurso MedicationDispense é usado para representar o status de dispensação de medicamento no Brasil, excetuando os medicamentos de receitas controladas pela ANVISA, que ainda exigem que as receitas físicas sejam retidas na farmácia. Este Perfil pode representar um medicamento usando um código ou fazer Referência à um recurso de Medicamento . 
* De acordo com a RNDS, [BRRegistrodispensacaomedicamento](https://simplifier.net/redenacionaldedadosemsaude/brregistrodispensacaomedicamento), ao se utilizar o medication[medicationCodeableConcept] os conceitos da Ontologia Brasileira de Medicamentos (OBM) deverão ser utilizados (http://portal-obm.saude.gov.br).
* Ao referenciar um recurso de Medicamento no elemento em medication[medicationReference], o recurso pode ser contido ou um recurso externo.
* Os sistemas não precisam suportar um código e uma referência, mas **DEVEM** suportar pelo menos um desses métodos.
* Se uma referência externa a um recurso de medicamento for usada, o servidor **DEVERÁ** suportar o _includeparâmetro para pesquisar este elemento.
* O aplicativo cliente **DEVE** suportar todos os tipos de métodos.
 

### Limites e relacionamentos

O domínio medicamento(Medication) inclui uma série de recursos relacionados, conforme abaixo:

| | |
| :--- | :--- |
| MedicationRequest([br-core-medicationrequest](StructureDefinition-br-core-medicationrequest)) | Uma ordem para fornecimento do medicamento e instruções para administração do medicamento a um paciente. |
| MedicamentoDispense([br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md)) | Fornecimento de um medicamento com a intenção de que ele seja posteriormente consumido por um paciente (geralmente em resposta a uma prescrição). |
| MedicationAdministration([br-core-medicationadministration](StructureDefinition-br-core-medicationdadministration.md)) | Quando um paciente realmente consome um medicamento, ou o medicamento é administrado a ele de outra forma |
| MedicationStatement([br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md)) | Este é um registro de um medicamento sendo tomado por um paciente ou que um medicamento foi dado a um paciente, onde o registro é o resultado de um relatório do paciente ou de outro clínico. Uma declaração de medicamento não é parte do fluxo prescrever->dispensar->administrar, mas é um relatório de que este fluxo (ou pelo menos uma parte dela) ocorreu, resultando em uma crença de que o paciente recebeu um medicamento específico. |

**Usos:**

* Refere a este Perfil: [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-medicationdispense.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) 

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) 

** Resumo **

Obrigatório: 6 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationDispense.medication[x]

 **Visão diferencial** 

Esta estrutura é derivada de [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) 

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) 

** Resumo **

Obrigatório: 6 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationDispense.medication[x]

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-medicationdispense.csv), [Excel](StructureDefinition-br-core-medicationdispense.xlsx), [Schematron](StructureDefinition-br-core-medicationdispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-medicationdispense",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense",
  "version" : "1.1.0",
  "name" : "BRCoreMedicationDispense",
  "title" : "br-core-medicationdispense",
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
  "description" : "Este recurso Indica que um medicamento deve ser ou foi dispensado para uma pessoa/paciente. O recurso inclui a descrição do medicamento (suprimento) fornecido bem como as instruções para a sua administração. A dispensação do medicamento é o resultado de um  pedido de medicamentos feito por um sistema de informações",
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
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense"
    },
    {
      "id" : "MedicationDispense.id",
      "path" : "MedicationDispense.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "MedicationDispense.meta",
      "path" : "MedicationDispense.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "MedicationDispense.implicitRules",
      "path" : "MedicationDispense.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "MedicationDispense.language",
      "path" : "MedicationDispense.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "MedicationDispense.text",
      "path" : "MedicationDispense.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "MedicationDispense.contained",
      "path" : "MedicationDispense.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "MedicationDispense.extension",
      "path" : "MedicationDispense.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "MedicationDispense.modifierExtension",
      "path" : "MedicationDispense.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "MedicationDispense.identifier",
      "path" : "MedicationDispense.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "MedicationDispense.partOf",
      "path" : "MedicationDispense.partOf",
      "short" : "Referência ao procedimento que esta dispensação faz parte",
      "definition" : "Referência ao procedimento que esta dispensação faz parte"
    },
    {
      "id" : "MedicationDispense.status",
      "path" : "MedicationDispense.status",
      "short" : "Código de status da dispensação de medicamentos",
      "definition" : "Código de status da dispensação de medicamentos"
    },
    {
      "id" : "MedicationDispense.statusReason[x]",
      "path" : "MedicationDispense.statusReason[x]",
      "short" : "Porquê uma dispensação não foi realizada",
      "definition" : "Porquê uma dispensação não foi realizada"
    },
    {
      "id" : "MedicationDispense.category",
      "path" : "MedicationDispense.category",
      "short" : "Tipo de dispensação de medicamentos",
      "definition" : "Tipo de dispensação de medicamentos",
      "min" : 1
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Que medicamento foi fornecido",
      "definition" : "Que medicamento foi fornecido"
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationReference",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationReference",
      "short" : "Referência ao medicamento dispensado",
      "definition" : "Referência ao medicamento dispensado",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication"]
      }]
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "short" : "Referência ao paciente para quem o medicamento foi dispensado",
      "definition" : "Referência ao paciente para quem o medicamento foi dispensado",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "MedicationDispense.context",
      "path" : "MedicationDispense.context",
      "short" : "Referência ao atendimento o qual o medicamento foi dispensado",
      "definition" : "Referência ao atendimento o qual o medicamento foi dispensado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "MedicationDispense.supportingInformation",
      "path" : "MedicationDispense.supportingInformation",
      "short" : "Referência à outros recursos que subsidiam a dispensação do medicamento",
      "definition" : "Referência à outros recursos que subsidiam a dispensação do medicamento"
    },
    {
      "id" : "MedicationDispense.performer",
      "path" : "MedicationDispense.performer",
      "short" : "Quem realizou a dispensação do medicamento",
      "definition" : "Quem realizou a dispensação do medicamento",
      "min" : 1
    },
    {
      "id" : "MedicationDispense.performer.id",
      "path" : "MedicationDispense.performer.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationDispense.performer.extension",
      "path" : "MedicationDispense.performer.extension",
      "short" : "Conteúdo adicional definido pelas implementações",
      "definition" : "Conteúdo adicional definido pelas implementações"
    },
    {
      "id" : "MedicationDispense.performer.modifierExtension",
      "path" : "MedicationDispense.performer.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "MedicationDispense.performer.function",
      "path" : "MedicationDispense.performer.function",
      "short" : "Função do profissional da dispensação do medicamento",
      "definition" : "Função do profissional da dispensação do medicamento"
    },
    {
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
      "short" : "Referência ao profissional/organização/dispositivo/pessoa/paciente que realizou a dispensação do medicamento",
      "definition" : "Referência ao profissional/organização/dispositivo/pessoa/paciente que realizou a dispensação do medicamento",
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
      "id" : "MedicationDispense.location",
      "path" : "MedicationDispense.location",
      "short" : "Referência ao local de dispensação do medicamento",
      "definition" : "Referência ao local de dispensação do medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "short" : "Referência à solicitação da dispensação do medicamento",
      "definition" : "Referência à solicitação da dispensação do medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest"]
      }]
    },
    {
      "id" : "MedicationDispense.type",
      "path" : "MedicationDispense.type",
      "short" : "Tipo de dispensação do medicamento",
      "definition" : "Tipo de dispensação do medicamento"
    },
    {
      "id" : "MedicationDispense.quantity",
      "path" : "MedicationDispense.quantity",
      "short" : "Quantidade de medicamento dispensada",
      "definition" : "Quantidade de medicamento dispensada",
      "min" : 1
    },
    {
      "id" : "MedicationDispense.daysSupply",
      "path" : "MedicationDispense.daysSupply",
      "short" : "Número de dias de dispensação do medicamento",
      "definition" : "Número de dias de dispensação do medicamento"
    },
    {
      "id" : "MedicationDispense.whenPrepared",
      "path" : "MedicationDispense.whenPrepared",
      "short" : "Quando o produto foi embalado e revisado",
      "definition" : "Quando o produto foi embalado e revisado"
    },
    {
      "id" : "MedicationDispense.whenHandedOver",
      "path" : "MedicationDispense.whenHandedOver",
      "short" : "Quando o produto foi distribuído",
      "definition" : "Quando o produto foi distribuído",
      "min" : 1
    },
    {
      "id" : "MedicationDispense.destination",
      "path" : "MedicationDispense.destination",
      "short" : "Para onde o medicamento foi enviado",
      "definition" : "Para onde o medicamento foi enviado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "MedicationDispense.receiver",
      "path" : "MedicationDispense.receiver",
      "short" : "Referência ao profissional ou ao paciente que recebeu o medicamento",
      "definition" : "Referência ao profissional ou ao paciente que recebeu o medicamento",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "MedicationDispense.note",
      "path" : "MedicationDispense.note",
      "short" : "Informações sobre a dispensação do medicamento",
      "definition" : "Informações sobre a dispensação do medicamento"
    },
    {
      "id" : "MedicationDispense.dosageInstruction",
      "path" : "MedicationDispense.dosageInstruction",
      "short" : "Como o medicamento deve ser usado pelo paciente ou administrado pelo cuidador",
      "definition" : "Como o medicamento deve ser usado pelo paciente ou administrado pelo cuidador"
    },
    {
      "id" : "MedicationDispense.substitution",
      "path" : "MedicationDispense.substitution",
      "short" : "Se uma substituição foi realizada na dispensação",
      "definition" : "Se uma substituição foi realizada na dispensação"
    },
    {
      "id" : "MedicationDispense.substitution.id",
      "path" : "MedicationDispense.substitution.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "MedicationDispense.substitution.extension",
      "path" : "MedicationDispense.substitution.extension",
      "short" : "Conteúdo adicional definido pelas implementações",
      "definition" : "Conteúdo adicional definido pelas implementações"
    },
    {
      "id" : "MedicationDispense.substitution.modifierExtension",
      "path" : "MedicationDispense.substitution.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "MedicationDispense.substitution.wasSubstituted",
      "path" : "MedicationDispense.substitution.wasSubstituted",
      "short" : "Se foi ou não realizada uma substituição na dispensação do medicamento",
      "definition" : "Se foi ou não realizada uma substituição na dispensação do medicamento"
    },
    {
      "id" : "MedicationDispense.substitution.type",
      "path" : "MedicationDispense.substitution.type",
      "short" : "Código que indica se um medicamento diferente do prescrito foi substituido",
      "definition" : "Código que indica se um medicamento diferente do prescrito foi substituido"
    },
    {
      "id" : "MedicationDispense.substitution.reason",
      "path" : "MedicationDispense.substitution.reason",
      "short" : "Por que a substituição foi feita",
      "definition" : "Por que a substituição foi feita"
    },
    {
      "id" : "MedicationDispense.substitution.responsibleParty",
      "path" : "MedicationDispense.substitution.responsibleParty",
      "short" : "Referência ao profissional responsável pela substituição do medicamento",
      "definition" : "Referência ao profissional responsável pela substituição do medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"]
      }]
    },
    {
      "id" : "MedicationDispense.detectedIssue",
      "path" : "MedicationDispense.detectedIssue",
      "short" : "Referência à condição clínica",
      "definition" : "Referência à condição clínica"
    },
    {
      "id" : "MedicationDispense.eventHistory",
      "path" : "MedicationDispense.eventHistory",
      "short" : "Referência à uma lista de eventos",
      "definition" : "Referência à uma lista de eventos"
    }]
  }
}

```
