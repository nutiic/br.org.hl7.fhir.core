# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreCondition - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreCondition**

## Resource Profile: BRCoreCondition 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreCondition |

 
Este perfil representa as restrições aplicadas ao recurso FHIR R4 [Condition](http://hl7.org/fhir/R4/condition.html) 

### Escopo/Uso

Este perfil é utilizado para registrar informações detalhadas sobre uma condição, problema, diagnóstico ou outro evento, situação, problema ou conceito clínico que atingiu um nível de preocupação. A Condition pode ser um diagnóstico pontual no contexto de um encontro, pode ser um item da Lista de Problemas do profissional ou pode ser uma preocupação que não existe na Lista de Problemas do profissional. Muitas vezes, uma condição trata-se da avaliação e declaração de um médico sobre um aspecto específico do estado de saúde de um paciente. Pode ser usado para registrar informações sobre uma doença/doença identificada a partir da aplicação do raciocínio clínico sobre os achados patológicos e fisiopatológicos (diagnóstico), ou identificação de problemas/situações de saúde que um profissional considera prejudiciais, potencialmente prejudiciais e que podem ser investigadas e gerenciadas (problema) ou outro problema/situação de saúde que possa exigir monitoramento e/ou gestão contínua (problema/preocupação de saúde).

### Uso indevido

O recurso Condition não deve ser utilizado para registrar informações que não são condições de saúde ou diagnósticos, como eventos clínicos ou procedimentos.

### Caso de uso

Consulta sobre problemas e condições de saúde atuais ou históricos de um paciente.

### Caso de uso da RNDS

No Brasil utiliza-se a Classificação Internacional de Doenças – CID naversão 10 e versão 11 a partir de 2025 para codificar Conditions. Na atenção primária é possível utilizar também a Classificação Internacional de Atenção Primária (CIAP).

### Extensões

Este perfil não possui extensões.

**Usos:**

* Derivado deste Perfil: [BRCoreCapacidadeFuncional](StructureDefinition-br-core-capacidadefuncional.md)
* Refere a este Perfil: [BRCoreCarePlan](StructureDefinition-br-core-careplan.md), [br-core-careteam](StructureDefinition-br-core-careteam.md), [br-core-encounter](StructureDefinition-br-core-encounter.md), [BRCoreImmunization](StructureDefinition-br-core-immunization.md)... Show 7 more, [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md) and [br-core-sumarioalta](StructureDefinition-br-core-sumarioalta.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-condition.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Condition](http://hl7.org/fhir/R4/condition.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Condition](http://hl7.org/fhir/R4/condition.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Condition](http://hl7.org/fhir/R4/condition.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Condition](http://hl7.org/fhir/R4/condition.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-condition.csv), [Excel](StructureDefinition-br-core-condition.xlsx), [Schematron](StructureDefinition-br-core-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-condition",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
  "version" : "1.1.1",
  "name" : "BRCoreCondition",
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
  "description" : "Este perfil representa as restrições aplicadas ao recurso FHIR R4 [Condition](http://hl7.org/fhir/R4/condition.html)",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.id",
      "path" : "Condition.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Condition.meta",
      "path" : "Condition.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Condition.implicitRules",
      "path" : "Condition.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Condition.language",
      "path" : "Condition.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Condition.text",
      "path" : "Condition.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Condition.contained",
      "path" : "Condition.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Condition.modifierExtension",
      "path" : "Condition.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "O status clínico da condição ou do diagnóstico",
      "definition" : "O status clínico da condição ou do diagnóstico"
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "O status de verificação para apoiar ou recusar o status clínico da condição ou do diagnóstico: unconfirmed | provisional | differential | confirmed | refuted | entered-in-error",
      "definition" : "O status de verificação para apoiar ou recusar o status clínico da condição ou do diagnóstico: unconfirmed | provisional | differential | confirmed | refuted | entered-in-error"
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "Categoria da condição",
      "definition" : "Categoria da condição",
      "max" : "1",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-category"
      }
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "short" : "Severidade da condição",
      "definition" : "Severidade da condição"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Identifica a suspeita diagnóstica com relação à condição de saúde avaliada",
      "definition" : "Identifica a suspeita diagnóstica com relação à condição de saúde avaliada",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRProblemaDiagnostico"
      }
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "short" : "Local anatômico da condição, se relevante",
      "definition" : "Local anatômico da condição, se relevante",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Referência aos dados sobre o indivíduo cuja a condição de saúde está sendo avaliada",
      "definition" : "Referência aos dados sobre o indivíduo cuja a condição de saúde está sendo avaliada",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "Condition.subject.id",
      "path" : "Condition.subject.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Condition.subject.extension",
      "path" : "Condition.subject.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Condition.subject.reference",
      "path" : "Condition.subject.reference",
      "short" : "Referência literal. URL relativa, interna ou externa",
      "definition" : "Referência literal. URL relativa, interna ou externa"
    },
    {
      "id" : "Condition.subject.type",
      "path" : "Condition.subject.type",
      "short" : "Tipo de recurso ao qual a referência é feita",
      "definition" : "Tipo de recurso ao qual a referência é feita"
    },
    {
      "id" : "Condition.subject.identifier",
      "path" : "Condition.subject.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Condition.subject.display",
      "path" : "Condition.subject.display",
      "short" : "Texto alternativo para o recurso",
      "definition" : "Texto alternativo para o recurso"
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "short" : "Referência ao atendimento no qual a condição foi diagnosticada",
      "definition" : "Referência ao atendimento no qual a condição foi diagnosticada",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "short" : "Data ou idade estimada ou real do começo dos sintomas",
      "definition" : "Data ou idade estimada ou real do começo dos sintomas"
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "short" : "Data ou idade estimada ou real em que o diagnóstico foi resolvido ou entrou em remissão",
      "definition" : "Data ou idade estimada ou real em que o diagnóstico foi resolvido ou entrou em remissão"
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "Data de registro",
      "definition" : "Data de registro"
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "short" : "Quem registrou a condição",
      "definition" : "Quem registrou a condição",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "short" : "Pessoa que afirma a condição",
      "definition" : "Pessoa que afirma a condição",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "short" : "Estágio/grau da condição, geralmente avaliado formalmente",
      "definition" : "Estágio/grau da condição, geralmente avaliado formalmente"
    },
    {
      "id" : "Condition.stage.id",
      "path" : "Condition.stage.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Condition.stage.extension",
      "path" : "Condition.stage.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Condition.stage.modifierExtension",
      "path" : "Condition.stage.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Condition.stage.summary",
      "path" : "Condition.stage.summary",
      "short" : "Códigos descrevendo estágios da condição (por exemplo, estágios de câncer)",
      "definition" : "Códigos descrevendo estágios da condição (por exemplo, estágios de câncer)"
    },
    {
      "id" : "Condition.stage.assessment",
      "path" : "Condition.stage.assessment",
      "short" : "Registro da avaliação",
      "definition" : "Registro da avaliação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation"]
      }]
    },
    {
      "id" : "Condition.stage.type",
      "path" : "Condition.stage.type",
      "short" : "Códigos que descrevem  o tipo do estadiamento (por exemplo, clínico ou patológico)",
      "definition" : "Códigos que descrevem  o tipo do estadiamento (por exemplo, clínico ou patológico)"
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "short" : "Evidências de apoio ao diagnóstico",
      "definition" : "Evidências de apoio ao diagnóstico"
    },
    {
      "id" : "Condition.evidence.id",
      "path" : "Condition.evidence.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Condition.evidence.extension",
      "path" : "Condition.evidence.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Condition.evidence.modifierExtension",
      "path" : "Condition.evidence.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Condition.evidence.code",
      "path" : "Condition.evidence.code",
      "short" : "Códigos que descrevem a manifestação ou sintomas de uma condição",
      "definition" : "Códigos que descrevem a manifestação ou sintomas de uma condição"
    },
    {
      "id" : "Condition.evidence.detail",
      "path" : "Condition.evidence.detail",
      "short" : "Referência a informações de apoio",
      "definition" : "Referência a informações de apoio"
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "Informações adicionais sobre a condição",
      "definition" : "Informações adicionais sobre a condição"
    }]
  }
}

```
