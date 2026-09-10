# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-medicationstatement - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-medicationstatement**

## Resource Profile: br-core-medicationstatement 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRMedicationStatement |

 
Um registro de um medicamento que está sendo consumido por um paciente. Um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html) indica que o paciente pode estar tomando o medicamento agora ou tomou o medicamento no passado ou tomará o medicamento no futuro. A fonte dessas informações pode ser o paciente, outra pessoa significativa (como um membro da família ou cônjuge) ou um clínico. Um cenário comum em que essas informações são capturadas é durante o processo de obtenção do histórico durante uma visita ou internação do paciente. As informações sobre medicamentos podem vir de fontes como a memória do paciente, de um frasco de prescrição ou de uma lista de medicamentos que o paciente, o clínico ou outra parte mantém. 
A principal diferença entre um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html) e um [br-core-medicationadministration](https://saude.gov.br/fhir/StructureDefiniton/medicationadministration.html) é que o último contém informações completas sobre a administração e é baseada em informações reais sobre a administração e da pessoa que administrou o medicamento. Um [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) é frequentemente, se não sempre, menos específico. Não há data/hora obrigatória em que o medicamento foi administrado; na verdade, sabe-se apenas que uma fonte relatou que o paciente está tomando esse medicamento, onde detalhes como hora, quantidade ou taxa ou mesmo o produto do medicamento podem estar incompletos, ausentes ou menos precisos. Conforme dito anteriormente, as informações do [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) podem vir da memória do paciente, de um frasco de prescrição ou de uma lista de medicamentos que o paciente, o clínico ou outra parte mantém. A administração de medicamentos é mais formal e não deixa de ter informações detalhadas. 

### Escopo/Uso

O uso comum inclui:

* o registro de drogas sem receita e/ou recreativas;
* o registro de uma lista de medicamentos de admissão no hospital;
* o resumo dos “medicamentos ativos” de um paciente em um perfil de paciente;
* Consultar e recuperar a medicamento atual de um paciente;
* Registrar ou atualizar a medicamento atual de um paciente;

Um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) pode ser usado para registrar abuso de substâncias ou o uso de outros agentes, como tabaco ou álcool. Isso normalmente seria feito se essas substâncias fossem destinadas a serem incluídas na verificação de suporte à decisão clínica (por exemplo, verificação de interação) e como parte de uma lista de medicamentos ativos. Se a intenção for preencher o histórico social e/ou incluir informações adicionais (por exemplo, desejo de parar, quantidade por dia, efeitos negativos à saúde), então é melhor registrar como uma Observação (br-core-observation) que poderia então ser usada para preencher o Histórico Social.

Este recurso não produz uma lista de medicamentos, mas produz declarações individuais de medicamentos que podem ser usadas no recurso [List](https://www.hl7.org/fhir/r4/list.html) para construir vários tipos de listas de medicamentos. Observe que outras listas de medicamentos também podem ser construídas a partir de outros recursos Pharmacy (por exemplo, [br-core-medicationrequest](https://saude.gov.br/fhir/StructureDefiniton/medicationrequest.html), [br-core-medicationadministration](https://saude.gov.br/fhir/StructureDefiniton/medicationadministration.html)).

Uma declaração de medicamento não faz parte da sequência prescrever -> dispensar -> administrar, mas é um relato de um paciente, outra pessoa importante ou de um médico, de que uma ou mais ações de prescrever, dispensar ou administrar ocorreram, resultando na crença de que o paciente está, usou ou usará um medicamento específico.

MedicationStatement é um recurso de event na perspectiva de fluxo de trabalho FHIR - consulte Evento de fluxo de trabalho ([https://hl7.org/fhir/R4/workflow.html#event](https://hl7.org/fhir/R4/workflow.html#event)).

### Caso de uso

Este recurso não deve ser utilizado para representar dados que não sejam relacionados ao relatório de medicamentos, como o de solicitar, dispensar ou administrar medicamentos.

### Caso de uso da RNDS

No Brasil esse recurso não é utilizado pela RDNS para descrever os medicamentos em uso pelo paciente, os registros da RNDS são somente para pdescrever prescrições/dispensações de medicamentos não controlados reais no âmbito do SUS.

### Identificadores

Não se aplica.

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

O recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) é usado para registrar medicamentos ou substâncias que o paciente relata como sendo tomados, não tomando, tomou no passado ou pode tomar no futuro. Ele também pode ser usado para registrar o uso de medicamentos que é derivado de outros registros, como um [br-core-medicationrequest](https://saude.gov.br/fhir/StructureDefiniton/br-core-medicationrequest.html). A declaração não é usada para solicitar ou encomendar um medicamento, suprimento ou dispositivo. Ao solicitar medicamentos, suprimentos ou dispositivos quando há um foco no paciente ou instruções sobre seu uso, recursos [br-core-medicationrequest](https://saude.gov.br/fhir/StructureDefiniton/br-core-medicationrequest.html), [SupplyRequest](https://hl7.org/fhir/R4/supplyrequest.html) ou [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html) deve ser usado em vez disso.

O domínio Medicamentos inclui uma série de recursos relacionados.

| | |
| :--- | :--- |
| MedicationRequest([br-core-medicationrequest](StructureDefinition-br-core-medicationrequest)) | Uma ordem para fornecimento do medicamento e instruções para administração do medicamento a um paciente. |
| MedicamentoDispense([br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md)) | Fornecimento de um medicamento com a intenção de que ele seja posteriormente consumido por um paciente (geralmente em resposta a uma prescrição). |
| MedicationAdministration([br-core-medicationadministration](StructureDefinition-br-core-medicationdadministration.md)) | Quando um paciente realmente consome um medicamento, ou o medicamento é administrado a ele de outra forma |
| MedicationStatement([br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md)) | Este é um registro de um medicamento sendo tomado por um paciente ou que um medicamento foi dado a um paciente, onde o registro é o resultado de um relatório do paciente ou de outro clínico. Uma declaração de medicamento não é parte do fluxo prescrever->dispensar->administrar, mas é um relatório de que este fluxo (ou pelo menos uma parte dela) ocorreu, resultando em uma crença de que o paciente recebeu um medicamento específico. |

Este recurso é referenciado por [AdverseEvent](https://hl7.org/fhir/R4/adverseevent.html#AdverseEvent), [Goal](https://hl7.org/fhir/R4/goal.html#Goal), ele mesmo e [br-core-observation](https://saude.gov.br/fhir/StructureDefiniton/br-core-observation.html).

**Usos:**

* Refere a este Perfil: [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-medicationstatement.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [br-core-medicationdispense (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense)](StructureDefinition-br-core-medicationdispense.md)
* [br-core-medicationstatement (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement)](StructureDefinition-br-core-medicationstatement.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationStatement.medication[x]
* The element 1 is sliced based on the value of MedicationStatement.effective[x]

 **Visão diferencial** 

Esta estrutura é derivada de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [br-core-medicationdispense (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense)](StructureDefinition-br-core-medicationdispense.md)
* [br-core-medicationstatement (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement)](StructureDefinition-br-core-medicationstatement.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationStatement.medication[x]
* The element 1 is sliced based on the value of MedicationStatement.effective[x]

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-medicationstatement.csv), [Excel](StructureDefinition-br-core-medicationstatement.xlsx), [Schematron](StructureDefinition-br-core-medicationstatement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-medicationstatement",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement",
  "version" : "1.1.0",
  "name" : "BRMedicationStatement",
  "title" : "br-core-medicationstatement",
  "status" : "active",
  "date" : "2026-09-10T13:05:34-04:00",
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
  "description" : "Um registro de um medicamento que está sendo consumido por um paciente. Um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html) indica  que o paciente pode estar tomando o medicamento agora ou tomou o medicamento no passado ou tomará o medicamento no futuro. A fonte dessas informações pode ser o paciente, outra pessoa significativa (como um membro da família ou cônjuge) ou um clínico. Um cenário comum em que essas informações são capturadas é durante o processo de obtenção do histórico durante uma visita ou internação do paciente. As informações sobre medicamentos podem vir de fontes como a memória do paciente, de um frasco de prescrição ou de uma lista de medicamentos que o paciente, o clínico ou outra parte mantém.\n\nA principal diferença entre um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html) e um [br-core-medicationadministration](https://saude.gov.br/fhir/StructureDefiniton/medicationadministration.html) é que o último  contém informações completas sobre a administração e é baseada em informações reais sobre a administração e da pessoa que administrou o medicamento.  Um [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) é frequentemente, se não sempre, menos específico. Não há data/hora obrigatória em que o medicamento foi administrado; na verdade, sabe-se apenas que uma fonte relatou que o paciente está tomando esse medicamento, onde detalhes como hora, quantidade ou taxa ou mesmo o produto do medicamento podem estar incompletos, ausentes ou menos precisos. Conforme dito anteriormente, as informações do [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) podem vir da memória do paciente, de um frasco de prescrição ou de uma lista de medicamentos que o paciente, o clínico ou outra parte mantém. A administração de medicamentos é mais formal e não deixa de ter informações detalhadas.\n",
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
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.id",
      "path" : "MedicationStatement.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "MedicationStatement.meta",
      "path" : "MedicationStatement.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "MedicationStatement.implicitRules",
      "path" : "MedicationStatement.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "MedicationStatement.language",
      "path" : "MedicationStatement.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "MedicationStatement.text",
      "path" : "MedicationStatement.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "MedicationStatement.contained",
      "path" : "MedicationStatement.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "MedicationStatement.extension",
      "path" : "MedicationStatement.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "MedicationStatement.modifierExtension",
      "path" : "MedicationStatement.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "MedicationStatement.identifier",
      "path" : "MedicationStatement.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "MedicationStatement.basedOn",
      "path" : "MedicationStatement.basedOn",
      "short" : "Referência ao pedido ou ao plano de tratamento que gerou este recurso",
      "definition" : "Referência ao pedido ou ao plano de tratamento que gerou este recurso",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest"]
      }]
    },
    {
      "id" : "MedicationStatement.partOf",
      "path" : "MedicationStatement.partOf",
      "short" : "Referência ao evento do qual este recurso faz parte",
      "definition" : "Referência ao evento do qual este recurso faz parte",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation"]
      }]
    },
    {
      "id" : "MedicationStatement.status",
      "path" : "MedicationStatement.status",
      "short" : "Status atual do recurso: active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-taken",
      "definition" : "Status atual do recurso: active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-taken"
    },
    {
      "id" : "MedicationStatement.statusReason",
      "path" : "MedicationStatement.statusReason",
      "short" : "Motivo do status atual",
      "definition" : "Motivo do status atual"
    },
    {
      "id" : "MedicationStatement.category",
      "path" : "MedicationStatement.category",
      "short" : "Um conceito codificado identificando onde se espera que o medicamento incluído neste recurso seja administrado",
      "definition" : "Um conceito codificado identificando onde se espera que o medicamento incluído neste recurso seja administrado"
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Qual medicamento foi tomado",
      "definition" : "Qual medicamento foi tomado"
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationReference",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationReference",
      "short" : "Referência ao medicamento",
      "definition" : "Referência ao medicamento",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication"]
      }]
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "short" : "Referência que utiliza o medicamento",
      "definition" : "Referência que utiliza o medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "MedicationStatement.subject.id",
      "path" : "MedicationStatement.subject.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "MedicationStatement.subject.extension",
      "path" : "MedicationStatement.subject.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "MedicationStatement.subject.reference",
      "path" : "MedicationStatement.subject.reference",
      "short" : "Referência literal. URL relativa, interna ou externa",
      "definition" : "Referência literal. URL relativa, interna ou externa"
    },
    {
      "id" : "MedicationStatement.subject.type",
      "path" : "MedicationStatement.subject.type",
      "short" : "Tipo de recurso ao qual a referência é feita",
      "definition" : "Tipo de recurso ao qual a referência é feita"
    },
    {
      "id" : "MedicationStatement.subject.identifier",
      "path" : "MedicationStatement.subject.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "MedicationStatement.subject.display",
      "path" : "MedicationStatement.subject.display",
      "short" : "Texto alternativo para o recurso",
      "definition" : "Texto alternativo para o recurso"
    },
    {
      "id" : "MedicationStatement.context",
      "path" : "MedicationStatement.context",
      "short" : "Referência ao atendimento ou ao cuidado de associado a este recurso",
      "definition" : "Referência ao atendimento ou ao cuidado de associado a este recurso",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter",
        "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare"]
      }]
    },
    {
      "id" : "MedicationStatement.effective[x]",
      "path" : "MedicationStatement.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Data ou intervalo de tempo na qual o medicamento foi ou será administrado",
      "definition" : "Data ou intervalo de tempo na qual o medicamento foi ou será administrado"
    },
    {
      "id" : "MedicationStatement.effective[x]:effectiveDateTime",
      "path" : "MedicationStatement.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "Data na qual o medicamento foi ou será administrado",
      "definition" : "Data na qual o medicamento foi ou será administrado",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicationStatement.effective[x]:effectivePeriod",
      "path" : "MedicationStatement.effective[x]",
      "sliceName" : "effectivePeriod",
      "short" : "Intervalo de tempo no qual o medicamento foi ou será administrado",
      "definition" : "Intervalo de tempo no qual o medicamento foi ou será administrado",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationStatement.dateAsserted",
      "path" : "MedicationStatement.dateAsserted",
      "short" : "Data de registro deste recurso",
      "definition" : "Data de registro deste recurso"
    },
    {
      "id" : "MedicationStatement.informationSource",
      "path" : "MedicationStatement.informationSource",
      "short" : "Referência à pessoa ou organização que forneceu as informações sobre este recurso",
      "definition" : "Referência à pessoa ou organização que forneceu as informações sobre este recurso",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "MedicationStatement.derivedFrom",
      "path" : "MedicationStatement.derivedFrom",
      "short" : "Referência à um recurso com informações adicionais",
      "definition" : "Referência à um recurso com informações adicionais"
    },
    {
      "id" : "MedicationStatement.reasonCode",
      "path" : "MedicationStatement.reasonCode",
      "short" : "Motivo pelo qual o medicamento foi ou será administrado",
      "definition" : "Motivo pelo qual o medicamento foi ou será administrado"
    },
    {
      "id" : "MedicationStatement.reasonReference",
      "path" : "MedicationStatement.reasonReference",
      "short" : "Referência à condição ou observação associado a este recurso",
      "definition" : "Referência à condição ou observação associado a este recurso",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport"]
      }]
    },
    {
      "id" : "MedicationStatement.note",
      "path" : "MedicationStatement.note",
      "short" : "Informações adicionais sobre essa declaração",
      "definition" : "Informações adicionais sobre essa declaração"
    },
    {
      "id" : "MedicationStatement.dosage",
      "path" : "MedicationStatement.dosage",
      "short" : "Dosagem dos medicamentos",
      "definition" : "Dosagem dos medicamentos"
    },
    {
      "id" : "MedicationStatement.dosage.id",
      "path" : "MedicationStatement.dosage.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "MedicationStatement.dosage.extension",
      "path" : "MedicationStatement.dosage.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "MedicationStatement.dosage.modifierExtension",
      "path" : "MedicationStatement.dosage.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "MedicationStatement.dosage.sequence",
      "path" : "MedicationStatement.dosage.sequence",
      "short" : "A ordem das instruções de dosagem",
      "definition" : "A ordem das instruções de dosagem"
    },
    {
      "id" : "MedicationStatement.dosage.text",
      "path" : "MedicationStatement.dosage.text",
      "short" : "Instruções de dosagem em texto livre",
      "definition" : "Instruções de dosagem em texto livre"
    },
    {
      "id" : "MedicationStatement.dosage.additionalInstruction",
      "path" : "MedicationStatement.dosage.additionalInstruction",
      "short" : "Informações auxiliares ou advertências ao paciente",
      "definition" : "Informações auxiliares ou advertências ao paciente"
    },
    {
      "id" : "MedicationStatement.dosage.patientInstruction",
      "path" : "MedicationStatement.dosage.patientInstruction",
      "short" : "Instruções orientadas ao paciente ou consumidor",
      "definition" : "Instruções orientadas ao paciente ou consumidor"
    },
    {
      "id" : "MedicationStatement.dosage.timing",
      "path" : "MedicationStatement.dosage.timing",
      "short" : "Quando o medicamento deve ser administrado",
      "definition" : "Quando o medicamento deve ser administrado"
    },
    {
      "id" : "MedicationStatement.dosage.asNeeded[x]",
      "path" : "MedicationStatement.dosage.asNeeded[x]",
      "short" : "Tomar \"conforme necessário\" (para x)",
      "definition" : "Tomar \"conforme necessário\" (para x)"
    },
    {
      "id" : "MedicationStatement.dosage.site",
      "path" : "MedicationStatement.dosage.site",
      "short" : "Local no corpo onde deve ser administrado o medicamento",
      "definition" : "Local no corpo onde deve ser administrado o medicamento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "MedicationStatement.dosage.route",
      "path" : "MedicationStatement.dosage.route",
      "short" : "Via de administração",
      "definition" : "Via de administração",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration"
      }
    },
    {
      "id" : "MedicationStatement.dosage.method",
      "path" : "MedicationStatement.dosage.method",
      "short" : "Método de administração",
      "definition" : "Método de administração"
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate",
      "path" : "MedicationStatement.dosage.doseAndRate",
      "short" : "Quantidade de medicamento administrado",
      "definition" : "Quantidade de medicamento administrado"
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.id",
      "path" : "MedicationStatement.dosage.doseAndRate.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.extension",
      "path" : "MedicationStatement.dosage.doseAndRate.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.type",
      "path" : "MedicationStatement.dosage.doseAndRate.type",
      "short" : "O tipo de dose especificado",
      "definition" : "O tipo de dose especificado"
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "short" : "Quantidade de medicamento por dose",
      "definition" : "Quantidade de medicamento por dose"
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "short" : "Quantidade de medicamento por unidade de tempo",
      "definition" : "Quantidade de medicamento por unidade de tempo"
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod",
      "short" : "Limite máximo de medicamento por unidade de tempo",
      "definition" : "Limite máximo de medicamento por unidade de tempo"
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerAdministration",
      "path" : "MedicationStatement.dosage.maxDosePerAdministration",
      "short" : "Limite máximo de medicamento por administração",
      "definition" : "Limite máximo de medicamento por administração"
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerLifetime",
      "path" : "MedicationStatement.dosage.maxDosePerLifetime",
      "short" : "Limite máximo de medicamento por tempo de vida do paciente",
      "definition" : "Limite máximo de medicamento por tempo de vida do paciente"
    }]
  }
}

```
