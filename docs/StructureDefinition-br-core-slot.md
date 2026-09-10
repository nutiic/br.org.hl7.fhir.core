# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-slot - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-slot**

## Resource Profile: br-core-slot 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-slot | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreSlot |

 
Perfil brasileiro do recurso FHIR R4 Slot, utilizado para representar a disponibilidade e reservas de tempo em sistemas de agendamento, interoperabilidade e integração com a RNDS, permitindo a comunicação entre agendas, prestadores e sistemas de marcação de consultas e procedimentos. 

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-slot.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Slot](http://hl7.org/fhir/R4/slot.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Slot](http://hl7.org/fhir/R4/slot.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-schedule (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-schedule)](StructureDefinition-br-core-schedule.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Slot](http://hl7.org/fhir/R4/slot.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Slot](http://hl7.org/fhir/R4/slot.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-schedule (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-schedule)](StructureDefinition-br-core-schedule.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-slot.csv), [Excel](StructureDefinition-br-core-slot.xlsx), [Schematron](StructureDefinition-br-core-slot.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-slot",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-slot",
  "version" : "1.1.0",
  "name" : "BRCoreSlot",
  "title" : "br-core-slot",
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
  "description" : "Perfil brasileiro do recurso FHIR R4 Slot, utilizado para representar a disponibilidade e reservas de tempo em sistemas de agendamento, interoperabilidade e integração com a RNDS, permitindo a comunicação entre agendas, prestadores e sistemas de marcação de consultas e procedimentos.",
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
  "type" : "Slot",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Slot",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Slot",
      "path" : "Slot"
    },
    {
      "id" : "Slot.id",
      "path" : "Slot.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Slot.meta",
      "path" : "Slot.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso, incluindo versão, autor e histórico de atualização"
    },
    {
      "id" : "Slot.implicitRules",
      "path" : "Slot.implicitRules",
      "short" : "Conjunto de regras usadas para criar o conteúdo",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Slot.language",
      "path" : "Slot.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma em que o recurso está escrito"
    },
    {
      "id" : "Slot.text",
      "path" : "Slot.text",
      "short" : "Resumo narrativo em linguagem natural",
      "definition" : "Resumo narrativo em linguagem natural do conteúdo deste recurso"
    },
    {
      "id" : "Slot.contained",
      "path" : "Slot.contained",
      "short" : "Recursos aninhados",
      "definition" : "Recursos contidos neste recurso"
    },
    {
      "id" : "Slot.extension",
      "path" : "Slot.extension",
      "short" : "Extensões adicionais não previstas no modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Slot.modifierExtension",
      "path" : "Slot.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Slot.identifier",
      "path" : "Slot.identifier",
      "short" : "Identificador externo do slot",
      "definition" : "Identificadores atribuídos a este slot em sistemas locais ou nacionais"
    },
    {
      "id" : "Slot.serviceCategory",
      "path" : "Slot.serviceCategory",
      "short" : "Categoria do serviço",
      "definition" : "Categoria ampla do serviço representado pelo slot (p.ex. consulta, exame, vacinação)",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRModalidadeAssistencial"
      }
    },
    {
      "id" : "Slot.serviceType",
      "path" : "Slot.serviceType",
      "short" : "Tipo de serviço",
      "definition" : "Tipo específico de serviço/atendimento associado ao slot",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRFormaOrganizacaoTabelaSUS"
      }
    },
    {
      "id" : "Slot.specialty",
      "path" : "Slot.specialty",
      "short" : "Especialidade clínica",
      "definition" : "Especialidade clínica associada ao slot",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "Slot.appointmentType",
      "path" : "Slot.appointmentType",
      "short" : "Tipo de agendamento",
      "definition" : "Tipo de agendamento permitido para este slot",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0276"
      }
    },
    {
      "id" : "Slot.schedule",
      "path" : "Slot.schedule",
      "short" : "Referência para agenda",
      "definition" : "Referência à agenda associada a este slot",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-schedule"]
      }]
    },
    {
      "id" : "Slot.status",
      "path" : "Slot.status",
      "short" : "Status do slot",
      "definition" : "Status do slot em relação à disponibilidade (busy | free | busy-unavailable | busy-tentative | entered-in-error)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/slotstatus"
      }
    },
    {
      "id" : "Slot.start",
      "path" : "Slot.start",
      "short" : "Data/hora de início do slot",
      "definition" : "Data e hora de início do período de tempo do slot"
    },
    {
      "id" : "Slot.end",
      "path" : "Slot.end",
      "short" : "Data/hora de término do slot",
      "definition" : "Data e hora de término do período de tempo do slot"
    },
    {
      "id" : "Slot.overbooked",
      "path" : "Slot.overbooked",
      "short" : "Indica se o slot permite sobreposição de marcações",
      "definition" : "Indica se o slot pode ser utilizado além da capacidade normal"
    },
    {
      "id" : "Slot.comment",
      "path" : "Slot.comment",
      "short" : "Comentários adicionais sobre o slot",
      "definition" : "Notas ou observações adicionais sobre o slot, como restrições ou orientações"
    },
    {
      "id" : "Slot.comment.extension",
      "path" : "Slot.comment.extension",
      "short" : "Extensões adicionais para comentários",
      "definition" : "Extensões que qualificam ou complementam os comentários sobre o slot"
    }]
  }
}

```
