# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreImmunization - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreImmunization**

## Resource Profile: BRCoreImmunization 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-immunization | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreImmunization |

 
Este perfil restringe o recurso [Immunization](https://hl7.org/fhir/R4/immunization.html) que descreve o evento em que um paciente recebe uma vacina ou um registro de uma imunização conforme relatado por um paciente, um médico ou outra parte 

### Escopo/Uso

O [br-core-immunization](https://saude.gov.br/fhir/StructureDefinition/br-core-immunization) tem como objetivo cobrir o registro da administração atual e histórica de vacinas a pacientes em todas as disciplinas de assistência médica em todos os ambientes de atendimento e todas as regiões. Isso inclui a imunização de humanos e animais, mas não inclui a administração de agentes não vacinais, mesmo aqueles que podem ter ou alegam ter efeitos imunológicos. Embora os termos “imunização” e “vacinação” não sejam clinicamente idênticos, para os propósitos dos recursos do FHIR, os termos são usados como sinônimos.

Além disso, espera-se que o recurso Immunization cubra conceitos-chave relacionados à criação, revisão e consulta do histórico de imunização de um paciente. Acredita-se que este recurso, por meio de consulta ao grupo de trabalho de Saúde Pública, atenda aos principais casos de uso e requisitos de informação, conforme definido no guia de implementação de imunização [HL7 V2](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=185), [HL7 V3](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=186) e Modelo de Análise de Domínio de Imunização.

### Caso de uso da RNDS

Na RNDS alguns elementos do [br-core-immunization](https://saude.gov.br/fhir/StructureDefinition/br-core-immunization) são considerados obrigatórios por conta das resoluções relacionadas ao Programa Nacional de Imunizações – PNI conforme pode ser consultado no [manual de normas e procedimentos](Manual%20de%20Normas%20e%20Procedimentos%20da%20Vacinação,%202a%20edicáo%202024%20-%20https:/www.gov.br/saude/pt-br/centrais-de-conteudo/publicacoes/guias-e-manuais/2024/manual-de-normas-e-procedimentos-para-vacinacao.pdf).

Os registros de imunização estão registrados por duas compositions na RNDS: o [ImmunizationAdministrado](https://simplifier.net/redenacionaldedadosemsaude/structuredefinition-brimunobiologicoadministrado-3.0) na rotina e o [ImmunizationAdministradoCampanha](https://simplifier.net/redenacionaldedadosemsaude/structuredefinition-brimunobiologicoadministradocampanha-2.0), utilizando o [BRImunobiológicoAdministrado](https://simplifier.net/redenacionaldedadosemsaude/brimunobiologicoadministrado).

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). Os elementos definidos como Must Support consideram a legislação do PNI.

**Cada Perfil Immunization deve ter:**

1. Status
1. vaccineCode
1. patient
1. occurrence
1. doseNumber

**Seguindo a legislação do PNI, cada Perfil Immunization deve oferecer suporte a:**

1. status
1. vaccineCode
1. patient
1. occurrence
1. manufacturer
1. manufacturer.identifier
1. manufacturer.system
1. manufacturer.value
1. lotNumber
1. site.coding

**Orientações de implementação específicas do perfil**

O perfil [br-core-immunization](https://saude.gov.br/fhir/StructureDefinition/br-core-immunization) não deve ser utilizado para o registro de administração de imunobiológicos não relacionados à imunização, ou seja, que não são vacinas. Os imunobiológicos não imunizantes incluem produtos biológicos que não são administrados com o objetivo de proporcionar imunidade a uma doença específica, mas podem ter outras finalidades terapêuticas ou médicas, como a administração de soros. Estes são produtos imunobiológicos que contêm anticorpos específicos para neutralizar toxinas ou agentes infecciosos e são utilizados no tratamento de envenenamentos por picadas de animais peçonhentos ou em algumas infecções. Esse recurso também não deve ser utilizado no caso de administração de imunoglobulinas, que são imunoglobulinas utilizadas para tratar algumas infecções virais. O registro da administração desses imunobiológicos deve ser realizado no recurso [MedicationAdministration](https://hl7.org/fhir/R4/medicationadministration.html).

É importante distinguir entre imunobiológicos imunizantes (vacinas) e imunobiológicos não imunizantes, uma vez que têm finalidades e características diferentes. O registro e a documentação adequada desses produtos e tratamentos são essenciais para garantir a segurança e eficácia do tratamento do paciente.

### Limites e relacionamentos

A administração de vacinas deve ser manipulada usando o recurso [Immunization](https://hl7.org/fhir/R4/immunization.html). O recurso [MedicationAdministration](https://hl7.org/fhir/R4/medicationadministration.html) deve rastrear a administração de medicamentos não vacinais. Alguns sistemas tratam imunizações da mesma forma que qualquer outra administração de medicamentos. Esses sistemas devem usar um recurso de imunização para representá-los. Se os sistemas precisarem usar um recurso [MedicationAdministration](https://hl7.org/fhir/R4/medicationadministration.html) para capturar vacinações para fluxo de trabalho ou outros motivos, eles DEVEM também expor uma instância de [Immunization](https://hl7.org/fhir/R4/immunization.html) equivalente Immunization.reaction pode ser uma indicação de alergia ou intolerância. Se esse caso for considerado, uma instância de recurso [AllergyIntolerance](https://hl7.org/fhir/R4/allergyintolerance.html) separada deve ser criada para indicá-lo, pois a maioria dos sistemas não consultará o dado Immunization.reaction anterior.

Este recurso é referenciado por [AdverseEvent](https://hl7.org/fhir/R4/adverseevent.html#AdverseEvent), [ChargeItem](https://hl7.org/fhir/R4/chargeitem.html#ChargeItem), [ImmunizationEvaluation](https://hl7.org/fhir/R4/immunizationevaluation.html#ImmunizationEvaluation), [ImmunizationRecommendation](https://hl7.org/fhir/R4/ImmunizationRecommendation.html#ImmunizationRecommendation) e [Observation](https://hl7.org/fhir/R4/observation.html#Observation).

**Usos:**

* Refere a este Perfil: [BRCoreObservation](StructureDefinition-br-core-observation.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-immunization.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Immunization](http://hl7.org/fhir/R4/immunization.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Immunization](http://hl7.org/fhir/R4/immunization.html) 

** Resumo **

Obrigatório: 5 elementos
 Proibido: 18 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)

**Extensões**

Esta estrutura refere-se a estas extensões:

* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-pesquisaclinica](StructureDefinition-br-core-pesquisaclinica.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Immunization](http://hl7.org/fhir/R4/immunization.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Immunization](http://hl7.org/fhir/R4/immunization.html) 

** Resumo **

Obrigatório: 5 elementos
 Proibido: 18 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)
* [BRCoreDiagnosticReport (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)](StructureDefinition-br-core-diagnosticreport.md)

**Extensões**

Esta estrutura refere-se a estas extensões:

* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-pesquisaclinica](StructureDefinition-br-core-pesquisaclinica.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-immunization.csv), [Excel](StructureDefinition-br-core-immunization.xlsx), [Schematron](StructureDefinition-br-core-immunization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-immunization",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-immunization",
  "version" : "1.1.1",
  "name" : "BRCoreImmunization",
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
  "description" : "Este perfil restringe o recurso [Immunization](https://hl7.org/fhir/R4/immunization.html) que descreve o evento em que um paciente recebe uma vacina ou um registro de uma imunização conforme relatado por um paciente, um médico ou outra parte",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.id",
      "path" : "Immunization.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Immunization.meta",
      "path" : "Immunization.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Immunization.implicitRules",
      "path" : "Immunization.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Immunization.language",
      "path" : "Immunization.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Immunization.text",
      "path" : "Immunization.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Immunization.contained",
      "path" : "Immunization.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Immunization.extension",
      "path" : "Immunization.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Immunization.modifierExtension",
      "path" : "Immunization.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Immunization.identifier",
      "path" : "Immunization.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "Immunization.status",
      "path" : "Immunization.status",
      "short" : "O status do evento de administração de imunobiológico",
      "definition" : "O status do evento de administração de imunobiológico"
    },
    {
      "id" : "Immunization.statusReason",
      "path" : "Immunization.statusReason",
      "short" : "O motivo pelo qual o imunobiológico não foi administrado",
      "definition" : "O motivo pelo qual o imunobiológico não foi administrado",
      "max" : "0"
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "short" : "Imunobiológico administrado",
      "definition" : "Imunobiológico administrado",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRImunobiologico"
      }
    },
    {
      "id" : "Immunization.patient",
      "path" : "Immunization.patient",
      "short" : "O paciente que recebeu o imunobiológico",
      "definition" : "O paciente que recebeu o imunobiológico",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "Immunization.patient.id",
      "path" : "Immunization.patient.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Immunization.patient.extension",
      "path" : "Immunization.patient.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Immunization.patient.reference",
      "path" : "Immunization.patient.reference",
      "short" : "Referência literal,relativa, interna ou externa ou URL",
      "definition" : "Referência literal,relativa, interna ou externa ou URL"
    },
    {
      "id" : "Immunization.patient.type",
      "path" : "Immunization.patient.type",
      "short" : "O tipo de referência utilizada",
      "definition" : "O tipo de referência utilizada"
    },
    {
      "id" : "Immunization.patient.identifier",
      "path" : "Immunization.patient.identifier",
      "short" : "Referência lógica,quando a referência literal não é conhecida",
      "definition" : "Referência lógica,quando a referência literal não é conhecida"
    },
    {
      "id" : "Immunization.patient.display",
      "path" : "Immunization.patient.display",
      "short" : "Texto alternativo para o recurso",
      "definition" : "Texto alternativo para o recurso"
    },
    {
      "id" : "Immunization.encounter",
      "path" : "Immunization.encounter",
      "short" : "Referência ao atendimento no qual o imunobiológico foi administrado",
      "definition" : "Referência ao atendimento no qual o imunobiológico foi administrado",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "Immunization.occurrence[x]",
      "path" : "Immunization.occurrence[x]",
      "short" : "Data em que o imunobiológico foi administrado",
      "definition" : "Data em que o imunobiológico foi administrado"
    },
    {
      "id" : "Immunization.recorded",
      "path" : "Immunization.recorded",
      "short" : "Data em que o primeiro registro de vacinação foi feito",
      "definition" : "Data em que o primeiro registro de vacinação foi feito",
      "max" : "0"
    },
    {
      "id" : "Immunization.primarySource",
      "path" : "Immunization.primarySource",
      "short" : "Indica se o registro de vacinação foi relatado pelo paciente ou por um profissional de saúde",
      "definition" : "Indica se o registro de vacinação foi relatado pelo paciente ou por um profissional de saúde"
    },
    {
      "id" : "Immunization.reportOrigin",
      "path" : "Immunization.reportOrigin",
      "short" : "Indica a fonte do registro de vacinação relatado",
      "definition" : "Indica a fonte do registro de vacinação relatado",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRRegistroOrigem"
      }
    },
    {
      "id" : "Immunization.location",
      "path" : "Immunization.location",
      "short" : "Local onde o imunobiológico foi administrado",
      "definition" : "Local onde o imunobiológico foi administrado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "Immunization.manufacturer",
      "path" : "Immunization.manufacturer",
      "short" : "Fabricante do imunobiológico",
      "definition" : "Fabricante do imunobiológico",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Immunization.lotNumber",
      "path" : "Immunization.lotNumber",
      "short" : "Número do lote do imunobiológico",
      "definition" : "Número do lote do imunobiológico"
    },
    {
      "id" : "Immunization.expirationDate",
      "path" : "Immunization.expirationDate",
      "short" : "Data de validade do imunobiológico",
      "definition" : "Data de validade do imunobiológico"
    },
    {
      "id" : "Immunization.site",
      "path" : "Immunization.site",
      "short" : "Local de administração do imunobiológico",
      "definition" : "Local de administração do imunobiológico",
      "min" : 1,
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRLocalAplicacao"
      }
    },
    {
      "id" : "Immunization.route",
      "path" : "Immunization.route",
      "short" : "Via de administração do imunobiológico",
      "definition" : "Via de administração do imunobiológico",
      "min" : 1,
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRViaAdministracao"
      }
    },
    {
      "id" : "Immunization.doseQuantity",
      "path" : "Immunization.doseQuantity",
      "short" : "Quantidade de imunobiológico administrado",
      "definition" : "Quantidade de imunobiológico administrado"
    },
    {
      "id" : "Immunization.performer",
      "path" : "Immunization.performer",
      "short" : "Profissional de saúde que administrou o imunobiológico",
      "definition" : "Profissional de saúde que administrou o imunobiológico",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Immunization.performer.id",
      "path" : "Immunization.performer.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Immunization.performer.extension",
      "path" : "Immunization.performer.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Immunization.performer.modifierExtension",
      "path" : "Immunization.performer.modifierExtension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Immunization.performer.function",
      "path" : "Immunization.performer.function",
      "short" : "Função do profissional de saúde no evento de administração de imunobiológico",
      "definition" : "Função do profissional de saúde no evento de administração de imunobiológico",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "Immunization.performer.actor",
      "path" : "Immunization.performer.actor",
      "short" : "Profissional de saúde que administrou o imunobiológico",
      "definition" : "Profissional de saúde que administrou o imunobiológico",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Immunization.note",
      "path" : "Immunization.note",
      "short" : "Observações adicionais sobre o evento de administração de imunobiológico",
      "definition" : "Observações adicionais sobre o evento de administração de imunobiológico",
      "max" : "0"
    },
    {
      "id" : "Immunization.reasonCode",
      "path" : "Immunization.reasonCode",
      "short" : "Motivo pelo qual o imunobiológico foi administrado",
      "definition" : "Motivo pelo qual o imunobiológico foi administrado",
      "max" : "1",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BREstrategiaVacinacao"
      }
    },
    {
      "id" : "Immunization.reasonReference",
      "path" : "Immunization.reasonReference",
      "short" : "Referência ao motivo pelo qual o imunobiológico foi administrado",
      "definition" : "Referência ao motivo pelo qual o imunobiológico foi administrado",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport"]
      }]
    },
    {
      "id" : "Immunization.isSubpotent",
      "path" : "Immunization.isSubpotent",
      "short" : "Indica se o imunobiológico foi administrado em uma dose menor que a recomendada",
      "definition" : "Indica se o imunobiológico foi administrado em uma dose menor que a recomendada",
      "max" : "0"
    },
    {
      "id" : "Immunization.subpotentReason",
      "path" : "Immunization.subpotentReason",
      "max" : "0"
    },
    {
      "id" : "Immunization.education",
      "path" : "Immunization.education",
      "short" : "Informações sobre a educação do paciente sobre o imunobiológico",
      "definition" : "Informações sobre a educação do paciente sobre o imunobiológico",
      "max" : "0"
    },
    {
      "id" : "Immunization.education.id",
      "path" : "Immunization.education.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Immunization.education.extension",
      "path" : "Immunization.education.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Immunization.education.modifierExtension",
      "path" : "Immunization.education.modifierExtension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Immunization.education.documentType",
      "path" : "Immunization.education.documentType",
      "short" : "Tipo de documento educacional",
      "definition" : "Tipo de documento educacional",
      "max" : "0"
    },
    {
      "id" : "Immunization.education.reference",
      "path" : "Immunization.education.reference",
      "short" : "Referência ao documento educacional",
      "definition" : "Referência ao documento educacional",
      "max" : "0"
    },
    {
      "id" : "Immunization.education.publicationDate",
      "path" : "Immunization.education.publicationDate",
      "short" : "Data de publicação do documento educacional",
      "definition" : "Data de publicação do documento educacional",
      "max" : "0"
    },
    {
      "id" : "Immunization.education.presentationDate",
      "path" : "Immunization.education.presentationDate",
      "short" : "Data de apresentação do documento educacional",
      "definition" : "Data de apresentação do documento educacional",
      "max" : "0"
    },
    {
      "id" : "Immunization.programEligibility",
      "path" : "Immunization.programEligibility",
      "short" : "Informações sobre a elegibilidade do paciente para o programa de imunização",
      "definition" : "Informações sobre a elegibilidade do paciente para o programa de imunização",
      "max" : "0",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRElegibilidadeImunobiologico"
      }
    },
    {
      "id" : "Immunization.fundingSource",
      "path" : "Immunization.fundingSource",
      "short" : "Fonte de financiamento do imunobiológico",
      "definition" : "Fonte de financiamento do imunobiológico",
      "max" : "0",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-funding-source"
      }
    },
    {
      "id" : "Immunization.reaction",
      "path" : "Immunization.reaction",
      "short" : "Reações adversas do paciente ao imunobiológico",
      "definition" : "Reações adversas do paciente ao imunobiológico",
      "max" : "0"
    },
    {
      "id" : "Immunization.reaction.id",
      "path" : "Immunization.reaction.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Immunization.reaction.extension",
      "path" : "Immunization.reaction.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Immunization.reaction.modifierExtension",
      "path" : "Immunization.reaction.modifierExtension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Immunization.reaction.date",
      "path" : "Immunization.reaction.date",
      "short" : "Data em que a reação adversa ocorreu",
      "definition" : "Data em que a reação adversa ocorreu",
      "max" : "0"
    },
    {
      "id" : "Immunization.reaction.detail",
      "path" : "Immunization.reaction.detail",
      "short" : "Detalhes sobre a reação adversa",
      "definition" : "Detalhes sobre a reação adversa",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation"]
      }]
    },
    {
      "id" : "Immunization.reaction.reported",
      "path" : "Immunization.reaction.reported",
      "short" : "Indica que a reação adversa foi relatada pelo paciente",
      "definition" : "Indica que a reação adversa foi relatada pelo paciente",
      "max" : "0"
    },
    {
      "id" : "Immunization.protocolApplied",
      "path" : "Immunization.protocolApplied",
      "short" : "Protocolos aplicados  durante a administração do imunobiológico",
      "definition" : "Protocolos aplicados  durante a administração do imunobiológico",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Immunization.protocolApplied.id",
      "path" : "Immunization.protocolApplied.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Immunization.protocolApplied.extension",
      "path" : "Immunization.protocolApplied.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Immunization.protocolApplied.extension:pesquisaClinica",
      "path" : "Immunization.protocolApplied.extension",
      "sliceName" : "pesquisaClinica",
      "short" : "Pesquisa clínica",
      "definition" : "Pesquisa clínica",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-pesquisaclinica"]
      }]
    },
    {
      "id" : "Immunization.protocolApplied.modifierExtension",
      "path" : "Immunization.protocolApplied.modifierExtension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Immunization.protocolApplied.series",
      "path" : "Immunization.protocolApplied.series",
      "short" : "Nome da série do imunobiológico",
      "definition" : "Nome da série do imunobiológico"
    },
    {
      "id" : "Immunization.protocolApplied.authority",
      "path" : "Immunization.protocolApplied.authority",
      "short" : "Autoridade que definiu o protocolo de administração do imunobiológico",
      "definition" : "Autoridade que definiu o protocolo de administração do imunobiológico",
      "max" : "0",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Immunization.protocolApplied.targetDisease",
      "path" : "Immunization.protocolApplied.targetDisease",
      "short" : "Doença alvo do imunobiológico",
      "definition" : "Doença alvo do imunobiológico",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCID10"
      }
    },
    {
      "id" : "Immunization.protocolApplied.doseNumber[x]",
      "path" : "Immunization.protocolApplied.doseNumber[x]",
      "short" : "Número da dose do imunobiológico",
      "definition" : "Número da dose do imunobiológico",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRDose"
      }
    },
    {
      "id" : "Immunization.protocolApplied.seriesDoses[x]",
      "path" : "Immunization.protocolApplied.seriesDoses[x]",
      "short" : "Número de doses da série do imunobiológico",
      "definition" : "Número de doses da série do imunobiológico"
    }]
  }
}

```
