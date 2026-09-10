# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-schedule - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-schedule**

## Resource Profile: br-core-schedule 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-schedule | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreSchedule |

 
Perfil brasileiro do recurso FHIR R4 Schedule, utilizado para representar agendas e disponibilidades de profissionais, serviços ou locais de saúde no contexto da RNDS e sistemas de interoperabilidade, incluindo suporte a teleconsultas e telecolposcopia. 

**Usos:**

* Refere a este Perfil: [br-core-slot](StructureDefinition-br-core-slot.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-schedule.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Schedule](http://hl7.org/fhir/R4/schedule.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Schedule](http://hl7.org/fhir/R4/schedule.html) 

** Resumo **

Deve ser suportado: 1 elemento

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-healthcareservice (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice)](StructureDefinition-br-core-healthcareservice.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Schedule](http://hl7.org/fhir/R4/schedule.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Schedule](http://hl7.org/fhir/R4/schedule.html) 

** Resumo **

Deve ser suportado: 1 elemento

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-healthcareservice (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice)](StructureDefinition-br-core-healthcareservice.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-schedule.csv), [Excel](StructureDefinition-br-core-schedule.xlsx), [Schematron](StructureDefinition-br-core-schedule.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-schedule",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-schedule",
  "version" : "1.1.0",
  "name" : "BRCoreSchedule",
  "title" : "br-core-schedule",
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
  "description" : "Perfil brasileiro do recurso FHIR R4 Schedule, utilizado para representar agendas e disponibilidades de profissionais, serviços ou locais de saúde no contexto da RNDS e sistemas de interoperabilidade, incluindo suporte a teleconsultas e telecolposcopia.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Schedule",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Schedule",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Schedule",
      "path" : "Schedule"
    },
    {
      "id" : "Schedule.id",
      "path" : "Schedule.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico único deste artefato"
    },
    {
      "id" : "Schedule.meta",
      "path" : "Schedule.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso, incluindo versão, autor e histórico de atualização"
    },
    {
      "id" : "Schedule.implicitRules",
      "path" : "Schedule.implicitRules",
      "short" : "Conjunto de regras usadas para criar o conteúdo",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Schedule.language",
      "path" : "Schedule.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma em que o recurso está escrito"
    },
    {
      "id" : "Schedule.text",
      "path" : "Schedule.text",
      "short" : "Resumo narrativo em linguagem natural",
      "definition" : "Resumo narrativo em linguagem natural do conteúdo deste recurso"
    },
    {
      "id" : "Schedule.contained",
      "path" : "Schedule.contained",
      "short" : "Recursos aninhados",
      "definition" : "Recursos contidos neste recurso"
    },
    {
      "id" : "Schedule.extension",
      "path" : "Schedule.extension",
      "short" : "Extensões adicionais não previstas no modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Schedule.modifierExtension",
      "path" : "Schedule.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Schedule.identifier",
      "path" : "Schedule.identifier",
      "short" : "Identificador do Schedule",
      "definition" : "Identificador único do recurso Schedule em sistemas locais ou nacionais"
    },
    {
      "id" : "Schedule.active",
      "path" : "Schedule.active",
      "short" : "Indica se este Schedule está ativo",
      "definition" : "Indica se este Schedule está em uso ativo no sistema",
      "patternBoolean" : true
    },
    {
      "id" : "Schedule.serviceCategory",
      "path" : "Schedule.serviceCategory",
      "short" : "Categoria assistencial de alto nível",
      "definition" : "Categoria de serviço de saúde (ex.: Atenção Básica, Atenção Especializada, Diagnóstico e Terapia)",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRModalidadeAssistencial"
      }
    },
    {
      "id" : "Schedule.serviceType",
      "path" : "Schedule.serviceType",
      "short" : "Tipo de serviço",
      "definition" : "Serviço específico associado à agenda (ex.: Telecolposcopia, Consultas de Enfermagem)",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRFormaOrganizacaoTabelaSUS"
      }
    },
    {
      "id" : "Schedule.specialty",
      "path" : "Schedule.specialty",
      "short" : "Especialidade clínica",
      "definition" : "Tipo de especialidade requerida (ex.: Ginecologia, Cardiologia, etc.)",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://www.saude.gov.br/fhir/r4/ValueSet/BROcupacao-1.0"
      }
    },
    {
      "id" : "Schedule.actor",
      "path" : "Schedule.actor",
      "short" : "Entidades vinculadas à agenda",
      "definition" : "Recurso para o qual a disponibilidade é fornecida neste Schedule",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Schedule.planningHorizon",
      "path" : "Schedule.planningHorizon",
      "short" : "Período de tempo coberto pela agenda",
      "definition" : "Intervalo de tempo coberto pelo Schedule (planejamento da agenda)"
    },
    {
      "id" : "Schedule.planningHorizon.start",
      "path" : "Schedule.planningHorizon.start",
      "short" : "Data de início da agenda",
      "definition" : "Data e hora de início do planejamento da agenda"
    },
    {
      "id" : "Schedule.planningHorizon.end",
      "path" : "Schedule.planningHorizon.end",
      "short" : "Data de término da agenda",
      "definition" : "Data e hora de término do planejamento da agenda"
    },
    {
      "id" : "Schedule.comment",
      "path" : "Schedule.comment",
      "short" : "Comentários sobre a agenda",
      "definition" : "Comentários adicionais sobre disponibilidade, regras de agendamento ou observações operacionais"
    }]
  }
}

```
