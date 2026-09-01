# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreObservation - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreObservation**

## Resource Profile: BRCoreObservation 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation | *Versão*:1.1.0 |
| Active as of 2026-09-01 | *Nome computável*:BRCoreObservation |

 
O recurso [br-core-Observation](StructureDefinition-br-core-observation.md) herda do recurso FHIR R4 [observation](https://hl7.org/fhir/R4B/observation.html) e registra medidas e resumo simples feitas sobre um paciente, dispositivo ou outro assunto 

### Escopo/Uso

As observações são um elemento central no cuidado em saúde, usadas para dar suporte ao diagnóstico, monitorar o progresso, determinar linhas de base e padrões e até mesmo capturar características demográficas. A maioria das observações são simples asserções de pares nome/valor com alguns metadados, mas algumas observações agrupam outras observações logicamente, ou até mesmo são observações multicomponentes.

O recurso [br-core-observation](StructureDefinition-br-core-observation.md) pode ser utilizado para registrar:

* Sinais vitais, como peso corporal, pressão arterial e temperatura
* Dados laboratoriais, como glicemia ou uma estimativa da TFG
* Resultados de imagem, como densidade óssea ou medidas fetais
* Achados clínicos*, como sensibilidade abdominal
* Medidas do dispositivo, como dados de ECG ou dados de oximetria de pulso
* Ferramentas de avaliação clínica, como APGAR ou uma pontuação de coma de Glasgow
* Características pessoais: como cor dos olhos
* Histórico social, como uso de tabaco, apoio familiar ou estado cognitivo
* Características principais, como estado de gravidez ou uma declaração de morte
* Os limites entre achados clínicos e distúrbios continuam sendo um desafio na ontologia médica. Consulte a seção Limites abaixo e em Condição para orientação geral. Esses limites podem ser esclarecidos ao criar um perfil de [br-core-observation](StructureDefinition-br-core-observation.md) para um caso de uso específico. Medições e declarações simples feitas sobre um paciente, dispositivo ou outro assunto.

Sempre que as medidas observadas forem sinais vitais, caracterizadas pelos conceitos descritos no VSBRSinaisVitais o perfil derivado [br-core-sinaisvitais](StructureDefinition-br-core-vitalsigns.md) deve ser utilizado

| | |
| :--- | :--- |
| [Vital Signs](http://hl7.org/fhir/R4/observation-vitalsigns.html) | O perfil[observation-vitalsigns ](http://hl7.org/fhir/R4/observation-vitalsigns.html)do FHIR R4 define expectativas mínimas para o Recurso[Observation](https://hl7.org/fhir/R4/observation.html)registrar, pesquisar e buscar os sinais vitais (por exemplo, temperatura, pressão arterial, frequência respiratória, etc.) associados a um paciente. |

**Tabela 1. ValueSet BRSinaisVotais**

| | |
| :--- | :--- |
| 8302-2 | Altura |
| 9843-4 | Perímetro cefálico |
| 29463-7 | Peso corporal |
| 8480-6 | Pressão arterial sistólica |
| 8462-4 | Pressão arterial diastólica |
| 8280-0 | Circunferência abdominal |
| 9279-1 | Frequência respiratória |
| 8867-4 | Frequência cardíaca |
| 2708-6 | Saturação de Oxigênio |
| 8310-5 | Temperatura corporal |
| 39156-5 | IMC |

### Caso de uso da RNDS

Na RNDS o recurso Observation é referenciado por documentos clínicos que contém recursos contendo dados como sinais vitais, medidas, resultados laboratoriais e outros testes. Os dados são representados conforme a seguir:

* [Registro de Atendimento Clínico](https://simplifier.net/redenacionaldedadosemsaude/brregistroatendimentoclinico)
* [Sumário de Alta](https://simplifier.net/redenacionaldedadosemsaude/brsumarioalta)
* [Resultado de Exame Laboratorial -Teste Rápido 1.0](https://simplifier.net/redenacionaldedadosemsaude/brresultadoexamelaboratorialtesterapido-1.0)
* [Resultado de Exame Laboratorial](https://simplifier.net/redenacionaldedadosemsaude/brresultadoexamelaboratorial-duplicate-2)

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos são obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada [br-core-observation](StructureDefinition-br-core-observation.md) deve ter:**

1. um paciente
1. um status
1. data e hora em que a Observação foi escrita
1. um código

**Cada [br-core-observation](StructureDefinition-br-core-observation.md) deve oferecer suporte a:**

1. um momento que indica quando a observação foi feita
1. quem respondeu às perguntas
1. um valor

### Orientações de implementação específicas do perfil

Os códigos podem ser do LOINC ou da SNOMED CT. Os valores para esses tipos de observações podem ser:

* uma string
* um código
* um “qualificador” que confirma ou refuta uma declaração no código

### Limites e relacionamentos

O perfil [br-core-observation](StructureDefinition-br-core-observation.md) se destina a capturar medições e avaliações subjetivas pontuais. Não se destina a ser usada para aqueles contextos e casos de uso específicos já cobertos por outros recursos do FHIR. Por exemplo, o recurso [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md) representa as alergias de um paciente, o recurso [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md): medicamentos tomados por um paciente, o recurso [FamilyMemberHistory](https://hl7.org/fhir/R4/familymemberhistory.html): o histórico familiar de um paciente, o recurso [br-core-procedure](StructureDefinition-br-core-procedure.md) : informações sobre um procedimento e o recurso [QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html): um conjunto de respostas a um conjunto de perguntas. O recurso [br-core-observation](StructureDefinition-br-core-observation.md) não deve ser usado para registrar diagnósticos clínicos sobre um paciente ou sujeito que são normalmente capturados no recurso [br-core-condition](StructureDefinition-br-core-condition.md) ou no recurso [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html). O perfil [br-core-observation](StructureDefinition-br-core-observation.md) é frequentemente referenciado pelo recurso [br-core-condition](StructureDefinition-br-core-condition.md) para fornecer dados subjetivos e objetivos específicos para dar suporte às suas declarações. No entanto, haverá situações de sobreposição.

Por exemplo, uma resposta a uma pergunta “você já tomou drogas ilícitas” poderia, em princípio, ser representada usando MedicationStatement, mas a maioria dos sistemas trataria tal declaração como um [br-core-observation](StructureDefinition-br-core-observation.md). Em alguns casos, como quando os dados de origem vêm de um feed [HL7 v2](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=185), um sistema pode não ter informações que permitam distinguir diagnóstico, alergia e outros tipos “especializados” de observações de laboratório, sinais vitais e outros tipos de observação destinados a serem transmitidos com este recurso. Nessas circunstâncias, tais observações especializadas também podem aparecer usando este recurso. Aderir a tal convenção é um uso apropriado de Observação. Se os implementadores não tiverem certeza se um uso proposto de Observação é apropriado, eles são encorajados a consultar os implementadores no [chat.fhir.org implementer’s stream](https://chat.fhir.org/).

O recurso [Media](https://hl7.org/fhir/R4/media.html) captura um tipo específico de observação cujo valor é dado de áudio, vídeo ou imagem. Este recurso é usado em vez de [br-core-observation](StructureDefinition-br-core-observation.md) para representar tais formas de informação, pois expõe os metadados relevantes para interpretar as informações.

Em contraste com o recurso [Observation](http://hl7.org/fhir/R4/observation.html), o recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) normalmente inclui contexto clínico adicional e alguma mistura de resultados atômicos, imagens, relatórios de imagem, interpretação textual e codificada e representações formatadas. Relatórios de laboratório, relatórios de patologia e relatórios de imagem devem ser representados usando o recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) . O recurso [Observation](http://hl7.org/fhir/R4/observation.html) é referenciado pelo [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) para fornecer os resultados atômicos para uma investigação específica. Os laboratórios rotineiramente têm uma variável que é somativa em uma série de variáveis discretas - essas são geralmente chamadas de ‘impressões’ ou ‘interpretações’. Às vezes, elas são especificadas algoritmicamente e às vezes têm o imprimatur de patologistas e são transmitidas em [Observation](http://hl7.org/fhir/R4/observation.html) ou [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) em vez do recurso [Clinical Impression](https://hl7.org/fhir/R4/clinicalimpression.html). O recurso [Observation](http://hl7.org/fhir/R4/observation.html) não deve ser usado para registrar diagnósticos clínicos sobre um paciente ou sujeito, conforme discutido acima.

**Usos:**

* Derivado deste Perfil: [BRCoreObservationAlcoholUse](StructureDefinition-br-core-observationalcoholuse.md), [BRCoreObservationBreastfeedingStatus](StructureDefinition-br-core-observationbreastfeedingstatus.md), [BRCoreObservationPregnancyEDD](StructureDefinition-br-core-observationpregnancyedd.md), [BRCoreObservationPregnancyOutcome](StructureDefinition-br-core-observationpregnancyoutcome.md)... Show 2 more, [BRCoreObservationPregnancyStatus](StructureDefinition-br-core-observationpregnancystatus.md) and [BRCoreObservationTobaccoUse](StructureDefinition-br-core-observationtobaccouse.md)
* Refere a este Perfil: [BRCoreCondition](StructureDefinition-br-core-condition.md), [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [br-core-encounter](StructureDefinition-br-core-encounter.md), [BRCoreImmunization](StructureDefinition-br-core-immunization.md)... Show 6 more, [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md) and [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-observation.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Observation](http://hl7.org/fhir/R4/observation.html) 

** Resumo **

Obrigatório: 0 elemento(2 aninhado obrigatoriamente elementos)

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [br-core-medicationdispense (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense)](StructureDefinition-br-core-medicationdispense.md)
* [br-core-medicationstatement (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement)](StructureDefinition-br-core-medicationstatement.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreImmunization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-immunization)](StructureDefinition-br-core-immunization.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreSpecimen (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen)](StructureDefinition-br-core-specimen.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Observation](http://hl7.org/fhir/R4/observation.html) 

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Observation](http://hl7.org/fhir/R4/observation.html) 

** Resumo **

Obrigatório: 0 elemento(2 aninhado obrigatoriamente elementos)

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [br-core-medicationdispense (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense)](StructureDefinition-br-core-medicationdispense.md)
* [br-core-medicationstatement (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement)](StructureDefinition-br-core-medicationstatement.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreImmunization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-immunization)](StructureDefinition-br-core-immunization.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreSpecimen (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen)](StructureDefinition-br-core-specimen.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-observation.csv), [Excel](StructureDefinition-br-core-observation.xlsx), [Schematron](StructureDefinition-br-core-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-observation",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
  "version" : "1.1.0",
  "name" : "BRCoreObservation",
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
  "description" : "O recurso [br-core-Observation](StructureDefinition-br-core-observation.html) herda do recurso FHIR R4 [observation](https://hl7.org/fhir/R4B/observation.html) e registra medidas e resumo simples feitas sobre um paciente, dispositivo ou outro assunto",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.id",
      "path" : "Observation.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Observation.implicitRules",
      "path" : "Observation.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Observation.language",
      "path" : "Observation.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Observation.text",
      "path" : "Observation.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Observation.contained",
      "path" : "Observation.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Observation.modifierExtension",
      "path" : "Observation.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "short" : "Referência ao pedido ou ao plano de tratamento que gerou este recurso",
      "definition" : "Referência ao pedido ou ao plano de tratamento que gerou este recurso",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan",
        "http://hl7.org/fhir/StructureDefinition/DeviceRequest",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest",
        "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest"]
      }]
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "short" : "Referência ao evento do qual este recurso faz parte",
      "definition" : "Referência ao evento do qual este recurso faz parte",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-immunization",
        "http://hl7.org/fhir/StructureDefinition/ImagingStudy"]
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Status atual da observação",
      "definition" : "active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-taken"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "short" : "Categoria da observação",
      "definition" : "Categoria da observação"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Código da observação",
      "definition" : "Código da observação"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "Referência ao paciente ou local ou dispositivo ou grupo desta bservação",
      "definition" : "Referência ao paciente ou local ou dispositivo ou grupo desta bservação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "Observation.subject.id",
      "path" : "Observation.subject.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Observation.subject.extension",
      "path" : "Observation.subject.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Observation.subject.reference",
      "path" : "Observation.subject.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Observation.subject.type",
      "path" : "Observation.subject.type",
      "short" : "Tipo de referência (por exemplo, Paciente)",
      "definition" : "Tipo de referência (por exemplo, Paciente)"
    },
    {
      "id" : "Observation.subject.identifier",
      "path" : "Observation.subject.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Observation.subject.display",
      "path" : "Observation.subject.display",
      "short" : "Texto alternativo para este rescurso",
      "definition" : "Texto alternativo para este recurso"
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "short" : "Referência à outro recurso desta observação",
      "definition" : "Referência à outro recurso desta observação"
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "short" : "Referência ao atendimento durante o qual esta observação foi registrada",
      "definition" : "Referência ao atendimento durante o qual esta observação foi registrada",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Tempo ou período de tempo clinicamente relevante para a observação",
      "definition" : "Tempo ou período de tempo clinicamente relevante para a observação"
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "short" : "Data/hora em que esta versão foi disponibilizada",
      "definition" : "Data/hora em que esta versão foi disponibilizada"
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Referência ao responsável pela observação",
      "definition" : "Quem é o responsável pela observação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Resultado da observação",
      "definition" : "Resultado da observação"
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "short" : "Por quê o resultado está faltando",
      "definition" : "Utilizado para especificar o porquê o valor esperado não está presente"
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "short" : "Interpretação do resultado",
      "definition" : "Interpretação da observação. Por exemplo: valor alto, baixo, normal"
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Comentários sobre a observação",
      "definition" : "Comentários sobre a observação"
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "short" : "Parte anatômica alvo da observação",
      "definition" : "Parte anatômica alvo da observação"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Método de medida da observação",
      "definition" : "Método de medida da observação"
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Amostra utilizada para esta observação",
      "definition" : "Amostra utilizada para esta observação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen"]
      }]
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "Dispositivo de medida da observação",
      "definition" : "Dispositivo utilizado para registrar esta observação"
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "short" : "Fornece um guia para interpretação",
      "definition" : "Fornece um guia para interpretação"
    },
    {
      "id" : "Observation.referenceRange.id",
      "path" : "Observation.referenceRange.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Observation.referenceRange.extension",
      "path" : "Observation.referenceRange.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Observation.referenceRange.modifierExtension",
      "path" : "Observation.referenceRange.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.referenceRange.low",
      "path" : "Observation.referenceRange.low",
      "short" : "Limite inferior do intervalo",
      "definition" : "Limite inferior do intervalo de valores de referência"
    },
    {
      "id" : "Observation.referenceRange.high",
      "path" : "Observation.referenceRange.high",
      "short" : "Limite superior do intervalo",
      "definition" : "Limite superior do intervalo de valores de referência"
    },
    {
      "id" : "Observation.referenceRange.type",
      "path" : "Observation.referenceRange.type",
      "short" : "Qualificador do valor de referência",
      "definition" : "Qualificador do valor de referência"
    },
    {
      "id" : "Observation.referenceRange.appliesTo",
      "path" : "Observation.referenceRange.appliesTo",
      "short" : "População do intervalo de referência",
      "definition" : "População do intervalo de referência"
    },
    {
      "id" : "Observation.referenceRange.age",
      "path" : "Observation.referenceRange.age",
      "short" : "Faixa etária aplicável",
      "definition" : "Faixa etária aplicável, se relevante"
    },
    {
      "id" : "Observation.referenceRange.text",
      "path" : "Observation.referenceRange.text",
      "short" : "Intervalo de referência em formato textual",
      "definition" : "Intervalo de referência em formato textual",
      "min" : 1
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Referência à Observação/Resposta de questionário associada a esta observação",
      "definition" : "Referência à Observação/Resposta de questionário associada a esta observação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Referência à Documents, Imagens, Mídias associadas a esta observação",
      "definition" : "Referência à Documents, Imagens, Mídias associadas a esta observação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference",
        "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
        "http://hl7.org/fhir/StructureDefinition/Media",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
        "http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "Resultado dos componentes da observação",
      "definition" : "Resultado dos componentes da observação"
    },
    {
      "id" : "Observation.component.id",
      "path" : "Observation.component.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Observation.component.extension",
      "path" : "Observation.component.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Observation.component.modifierExtension",
      "path" : "Observation.component.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "short" : "Tipo do componente da observação",
      "definition" : "Tipo do componente da observação"
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Resultado do componente",
      "definition" : "Resultado do componente"
    },
    {
      "id" : "Observation.component.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "short" : "Por que o resultado do componente está ausente",
      "definition" : "Por que o resultado do componente está ausente"
    },
    {
      "id" : "Observation.component.interpretation",
      "path" : "Observation.component.interpretation",
      "short" : "Interpretação do resultado do componente",
      "definition" : "Interpretação do resultado do componente"
    },
    {
      "id" : "Observation.component.referenceRange",
      "path" : "Observation.component.referenceRange",
      "short" : "Valores de referência",
      "definition" : "Valores de referência para auxiliar na interpretação do resultado"
    }]
  }
}

```
