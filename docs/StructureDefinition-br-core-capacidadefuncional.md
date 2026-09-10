# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreCapacidadeFuncional - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreCapacidadeFuncional**

## Resource Profile: BRCoreCapacidadeFuncional 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-capacidadefuncional | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreCapacidadeFuncional |

 
Este perfil herda do recurso [br-core-condition](StructureDefinition-br-core-condition.md) 

### Escopo/Uso

Este perfil é utilizado para registrar informações detalhadas sobre a condição, problema, diagnóstico ou outro evento, situação, problema ou conceito clínico que caracteriza a incapacidade funcional do paciente.

### Caso de uso da RNDS

Na RNDS o valueset BRSuspeitaDiagnostica que engloba os conceitos do CID10 e da CIAP2 deve ser utilizado no elemento code para informar o código do diagnóstico da incapacidade funcional do paciente.

**Usos:**

* Refere a este Perfil: [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) and [br-core-sumarioalta](StructureDefinition-br-core-sumarioalta.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-capacidadefuncional.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [BRCoreCondition](StructureDefinition-br-core-condition.md) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [BRCoreCondition](StructureDefinition-br-core-condition.md) 

** Resumo **

Obrigatório: 6 elementos(2 aninhado obrigatoriamente elementos)

 **Visão diferencial** 

Esta estrutura é derivada de [BRCoreCondition](StructureDefinition-br-core-condition.md) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [BRCoreCondition](StructureDefinition-br-core-condition.md) 

** Resumo **

Obrigatório: 6 elementos(2 aninhado obrigatoriamente elementos)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-capacidadefuncional.csv), [Excel](StructureDefinition-br-core-capacidadefuncional.xlsx), [Schematron](StructureDefinition-br-core-capacidadefuncional.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-capacidadefuncional",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-capacidadefuncional",
  "version" : "1.1.1",
  "name" : "BRCoreCapacidadeFuncional",
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
  "description" : "Este perfil herda do recurso [br-core-condition](StructureDefinition-br-core-condition.html)",
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
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "min" : 1
    },
    {
      "id" : "Condition.clinicalStatus.coding",
      "path" : "Condition.clinicalStatus.coding"
    },
    {
      "id" : "Condition.clinicalStatus.coding.system",
      "path" : "Condition.clinicalStatus.coding.system",
      "short" : "Identificador do sistema de terminologia",
      "definition" : "Identificador do sistema de terminologia",
      "min" : 1
    },
    {
      "id" : "Condition.clinicalStatus.coding.version",
      "path" : "Condition.clinicalStatus.coding.version",
      "short" : "Versão do sistema de terminologia, se relevante",
      "definition" : "Versão do sistema de terminologia, se relevante"
    },
    {
      "id" : "Condition.clinicalStatus.coding.code",
      "path" : "Condition.clinicalStatus.coding.code",
      "short" : "Símbolo na sintaxe definida pelo sistema",
      "definition" : "Símbolo na sintaxe definida pelo sistema",
      "min" : 1
    },
    {
      "id" : "Condition.clinicalStatus.coding.display",
      "path" : "Condition.clinicalStatus.coding.display",
      "short" : "Representação definida pelo sistema",
      "definition" : "Representação definida pelo sistema"
    },
    {
      "id" : "Condition.clinicalStatus.coding.userSelected",
      "path" : "Condition.clinicalStatus.coding.userSelected",
      "short" : "Se este código foi escolhido diretamente pelo usuário",
      "definition" : "Se este código foi escolhido diretamente pelo usuário"
    },
    {
      "id" : "Condition.clinicalStatus.text",
      "path" : "Condition.clinicalStatus.text",
      "short" : "Representação em texto livre do conceito",
      "definition" : "Representação em texto livre do conceito"
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "O status de verificação para apoiar ou recusar o status clínico da condição ou do diagnóstico",
      "definition" : "O status de verificação para apoiar ou recusar o status clínico da condição ou do diagnóstico"
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCategoriaDiagnostico"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTerminologiaSuspeitaDiagnostica"
      }
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Indivíduo com a Condição de Saúde avaliada",
      "definition" : "Indivíduo com a Condição de Saúde avaliada"
    },
    {
      "id" : "Condition.subject.identifier",
      "path" : "Condition.subject.identifier",
      "min" : 1
    },
    {
      "id" : "Condition.subject.identifier.id",
      "path" : "Condition.subject.identifier.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Condition.subject.identifier.extension",
      "path" : "Condition.subject.identifier.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Condition.subject.identifier.type",
      "path" : "Condition.subject.identifier.type",
      "short" : "Descrição do identificador",
      "definition" : "Descrição do identificador"
    },
    {
      "id" : "Condition.subject.identifier.system",
      "path" : "Condition.subject.identifier.system",
      "short" : "O namespace do valor do identificador",
      "definition" : "O namespace do valor do identificador",
      "min" : 1
    },
    {
      "id" : "Condition.subject.identifier.value",
      "path" : "Condition.subject.identifier.value",
      "short" : "Valor único do identificador",
      "definition" : "Valor único do identificador",
      "min" : 1
    },
    {
      "id" : "Condition.subject.identifier.period",
      "path" : "Condition.subject.identifier.period",
      "short" : "Período de tempo no qual este identicador é/ou foi válido para utilização",
      "definition" : "Período de tempo no qual este identicador é/ou foi válido para utilização"
    },
    {
      "id" : "Condition.subject.identifier.assigner",
      "path" : "Condition.subject.identifier.assigner",
      "short" : "Organização que emitiu o documento de identificação (pode ser apenas texto)",
      "definition" : "Organização que emitiu o documento de identificação (pode ser apenas texto)"
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "Data na qual o registro foi registrado pela primeira vez",
      "definition" : "Data na qual o registro foi registrado pela primeira vez"
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "min" : 1
    },
    {
      "id" : "Condition.stage.assessment",
      "path" : "Condition.stage.assessment",
      "short" : "Referência aos dados de diagnóstico de laboratório clínico relacionados à suspeita diagnóstica",
      "definition" : "Referência aos dados de diagnóstico de laboratório clínico relacionados à suspeita diagnóstica"
    },
    {
      "id" : "Condition.evidence.code",
      "path" : "Condition.evidence.code",
      "short" : "Manifestação/sintoma"
    },
    {
      "id" : "Condition.evidence.detail",
      "path" : "Condition.evidence.detail",
      "short" : "Referência à informações de apoio",
      "definition" : "Referência à informações de apoio"
    }]
  }
}

```
