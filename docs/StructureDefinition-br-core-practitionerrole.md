# BR.GOV.SAUDE.BR-CORE.FHIR\BRCorePractitionerRole - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCorePractitionerRole**

## Resource Profile: BRCorePractitionerRole 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCorePractitionerRole |

 
Este perfil restringe o recurso PractitionerRole que representa um conjunto específico de funções/locais/especialidades/serviços que um profissional pode desempenhar em uma organização por um período de tempo 

### Escopo e uso

O perfil [br-core-practitioner](StructureDefinition-br-core-practitioner.md) abrange o registro da localização e dos tipos de serviços que os profissionais podem fornecer para uma organização.

Se necessário, os elementos role, specialty, location, telecom e healthcareService podem ser repetidos em outras instâncias do [br-core-practitioner](StructureDefinition-br-core-practitioner.md), caso o profissional exerça atividades em mais de uma organização. Alguns sistemas registram uma coleção de valores de serviço para um único local, outros registram o serviço único e a lista de locais em que ele está disponível. Ambas são opções aceitáveis para representar esses dados.

É importante notar que, se a disponibilidade, telecom ou outros detalhes não são os mesmos em todos os serviços de saúde ou locais, deve ser criada uma instância [br-core-practitioner](StructureDefinition-br-core-practitioner.md) separada.

### Cenários de uso

O profissional pode desempenhar diferentes papeis dentro de uma ou mais organizações. A depender da jurisdição, pode ser necessário manter um recurso Profissional específico para cada função ou ter um único Profissional com várias funções. A função pode ser limitada a um período específico, após o qual a autorização para esta função termina. Observe que a organização representada não precisa necessariamente ser o empregador (direto) de um Profissional.

### Caso de uso da RNDS

Na RNDS utiliza-se a CBO – Classificação Brasileira de Ocupações para caracterizar o papel (role) do profissional na organização.

### Elementos de dados obrigatórios e que devem estar presentes (Must Support)

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada PractitionerRole (função do profissional) deve ter:**

1. Nome do profissional

**Cada PractitionerRole (função do profissional) deve oferecer suporte a:**

1. Uma organização associada
1. Um profissional associado
1. Um papel
1. Uma especialidade
1. Um local associado
1. Informações de contato
1. Um endpoint de comunicação

**Orientações de implementação específicas do perfil**

### Limites e relacionamentos

As qualificações do recurso [br-core-practitioner](StructureDefinition-br-core-practitioner.md) não implicam uma função, mas podem ser consideradas quando uma organização aloca profissionais para funções dentro de sua organização e podem fornecer informações úteis (como informações de expiração) que podem precisar ser rastreadas em algumas situações para garantir que eles continuem qualificados para uma função específica.

O recurso [CareTeam](https://hl7.org/fhir/R4/careteam.html#CareTeam) também é frequentemente usado para fornecer detalhes de uma função que um profissional é alocado para desempenhar, mas geralmente é limitado a uma granularidade muito mais fina de cuidados e, frequentemente, dentro do contexto específico de um Paciente ou função funcional (por exemplo, equipe de planejamento de crise). Em contraste, o perfil [br-core-practitioner](StructureDefinition-br-core-practitioner.md) é utilizado em um sentido mais geral para cobrir todos os lugares em que o profissional é alocado para trabalhar (e detalhes específicos relevantes para essa função - como um número de contato específico ou ponto final de serviços eletrônicos).

**Usos:**

* Refere a este Perfil: [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md), [BRCoreCarePlan](StructureDefinition-br-core-careplan.md), [br-core-careteam](StructureDefinition-br-core-careteam.md), [br-core-composition](StructureDefinition-br-core-composition.md)... Show 15 more, [BRCoreCondition](StructureDefinition-br-core-condition.md), [br-core-consent](StructureDefinition-br-core-consent.md), [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [br-core-encounter](StructureDefinition-br-core-encounter.md), [BRCoreImmunization](StructureDefinition-br-core-immunization.md), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCorePatient](StructureDefinition-br-core-patient.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md), [BRCoreSpecimen](StructureDefinition-br-core-specimen.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-practitionerrole.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) 

** Resumo **

Obrigatório: 5 elementos(2 aninhado obrigatoriamente elementos)
 Fixo: 1 elemento

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [br-core-healthcareservice (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice)](StructureDefinition-br-core-healthcareservice.md)

 **Visão diferencial** 

Esta estrutura é derivada de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) 

** Resumo **

Obrigatório: 5 elementos(2 aninhado obrigatoriamente elementos)
 Fixo: 1 elemento

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [br-core-healthcareservice (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice)](StructureDefinition-br-core-healthcareservice.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-practitionerrole.csv), [Excel](StructureDefinition-br-core-practitionerrole.xlsx), [Schematron](StructureDefinition-br-core-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-practitionerrole",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
  "version" : "1.1.0",
  "name" : "BRCorePractitionerRole",
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
  "description" : "Este perfil restringe o recurso PractitionerRole que representa um conjunto específico de funções/locais/especialidades/serviços que um profissional pode desempenhar em uma organização por um período de tempo",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.id",
      "path" : "PractitionerRole.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "PractitionerRole.meta",
      "path" : "PractitionerRole.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "PractitionerRole.implicitRules",
      "path" : "PractitionerRole.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "PractitionerRole.language",
      "path" : "PractitionerRole.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "PractitionerRole.text",
      "path" : "PractitionerRole.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "PractitionerRole.contained",
      "path" : "PractitionerRole.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "PractitionerRole.extension",
      "path" : "PractitionerRole.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "PractitionerRole.modifierExtension",
      "path" : "PractitionerRole.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "PractitionerRole.identifier.id",
      "path" : "PractitionerRole.identifier.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "PractitionerRole.identifier.extension",
      "path" : "PractitionerRole.identifier.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "PractitionerRole.identifier.use",
      "path" : "PractitionerRole.identifier.use",
      "short" : "Uso do identificador",
      "definition" : "Uso do identificador",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-use"
      }
    },
    {
      "id" : "PractitionerRole.identifier.type",
      "path" : "PractitionerRole.identifier.type",
      "short" : "Tipo do identificador",
      "definition" : "Tipo do identificador",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier.type.id",
      "path" : "PractitionerRole.identifier.type.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "PractitionerRole.identifier.type.extension",
      "path" : "PractitionerRole.identifier.type.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "PractitionerRole.identifier.type.coding",
      "path" : "PractitionerRole.identifier.type.coding",
      "short" : "Código do identificador definido pelo sistema terminologico",
      "definition" : "Código do identificador definido pelo sistema terminologico"
    },
    {
      "id" : "PractitionerRole.identifier.type.coding.id",
      "path" : "PractitionerRole.identifier.type.coding.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "PractitionerRole.identifier.type.coding.extension",
      "path" : "PractitionerRole.identifier.type.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "PractitionerRole.identifier.type.coding.system",
      "path" : "PractitionerRole.identifier.type.coding.system",
      "short" : "Sistema de terminologia",
      "definition" : "Sistema de terminologia",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "PractitionerRole.identifier.type.coding.version",
      "path" : "PractitionerRole.identifier.type.coding.version",
      "short" : "Versão do sistema de terminologia, se relevante",
      "definition" : "Versão do sistema de terminologia, se relevante"
    },
    {
      "id" : "PractitionerRole.identifier.type.coding.code",
      "path" : "PractitionerRole.identifier.type.coding.code",
      "short" : "Conteúdo definido pelo sistema de terminologia",
      "definition" : "Conteúdo definido pelo sistema de terminologia"
    },
    {
      "id" : "PractitionerRole.identifier.type.coding.display",
      "path" : "PractitionerRole.identifier.type.coding.display",
      "short" : "Representação definida pelo sistema de terminologia",
      "definition" : "Representação definida pelo sistema de terminologia"
    },
    {
      "id" : "PractitionerRole.identifier.type.coding.userSelected",
      "path" : "PractitionerRole.identifier.type.coding.userSelected",
      "short" : "Se este código foi selecionado diretamente pelo usuário",
      "definition" : "Se este código foi selecionado diretamente pelo usuário"
    },
    {
      "id" : "PractitionerRole.identifier.type.text",
      "path" : "PractitionerRole.identifier.type.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "PractitionerRole.identifier.system",
      "path" : "PractitionerRole.identifier.system",
      "short" : "Namespace do valor do identificador",
      "definition" : "Namespace do valor do identificador"
    },
    {
      "id" : "PractitionerRole.identifier.value",
      "path" : "PractitionerRole.identifier.value",
      "short" : "Valor do identificador",
      "definition" : "Valor do identificador"
    },
    {
      "id" : "PractitionerRole.identifier.period",
      "path" : "PractitionerRole.identifier.period",
      "short" : "Período de tempo em que o identificador é/foi válido para uso",
      "definition" : "Período de tempo em que o identificador é/foi válido para uso"
    },
    {
      "id" : "PractitionerRole.identifier.assigner",
      "path" : "PractitionerRole.identifier.assigner",
      "short" : "Referência à organização que emitiu esse identificador",
      "definition" : "Referência à organização que emitiu esse identificador"
    },
    {
      "id" : "PractitionerRole.active",
      "path" : "PractitionerRole.active",
      "short" : "Informa se esta função do profissional está ativa",
      "definition" : "Informa se esta função do profissional está ativa",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.period",
      "path" : "PractitionerRole.period",
      "short" : "Período durante o qual o profissional está autorizado a exercer essa função",
      "definition" : "Período durante o qual o profissional está autorizado a exercer essa função",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Referência ao profissional",
      "definition" : "Referência ao profissional",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "Referência à organização",
      "definition" : "Referência à organização",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Códigos das funções dos profissionais de saúde",
      "definition" : "Códigos das funções dos profissionais de saúde",
      "min" : 1,
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "short" : "Especialidades do profissional",
      "definition" : "Especialidades do profissional",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "short" : "Referência ao local de atuação do profissional",
      "definition" : "Referência ao local de atuação do profissional",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "PractitionerRole.healthcareService",
      "path" : "PractitionerRole.healthcareService",
      "short" : "Referência à lista de serviços especializados deste profissional",
      "definition" : "Referência à lista de serviços especializados deste profissional",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice"]
      }]
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "short" : "Contatos para a função/local/serviço",
      "definition" : "Contatos para a função/local/serviço"
    },
    {
      "id" : "PractitionerRole.availableTime",
      "path" : "PractitionerRole.availableTime",
      "short" : "Horários disponíveis",
      "definition" : "Horários disponíveis"
    },
    {
      "id" : "PractitionerRole.availableTime.id",
      "path" : "PractitionerRole.availableTime.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "PractitionerRole.availableTime.extension",
      "path" : "PractitionerRole.availableTime.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "PractitionerRole.availableTime.modifierExtension",
      "path" : "PractitionerRole.availableTime.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "PractitionerRole.availableTime.daysOfWeek",
      "path" : "PractitionerRole.availableTime.daysOfWeek",
      "short" : "Dias da semana: seg| ter| qua| qui| sex| sab | dom",
      "definition" : "Dias da semana: seg| ter| qua| qui| sex| sab | dom"
    },
    {
      "id" : "PractitionerRole.availableTime.allDay",
      "path" : "PractitionerRole.availableTime.allDay",
      "short" : "Sempre disponível? sim ou não, por exemplo: serviço 24 horas",
      "definition" : "Sempre disponível? por exemplo: serviço 24 horas"
    },
    {
      "id" : "PractitionerRole.availableTime.availableStartTime",
      "path" : "PractitionerRole.availableTime.availableStartTime",
      "short" : "Horario de abertura (ignorado se allDay = true)",
      "definition" : "Horário de abertura (ignorado se allDay = true)"
    },
    {
      "id" : "PractitionerRole.availableTime.availableEndTime",
      "path" : "PractitionerRole.availableTime.availableEndTime",
      "short" : "Horário de fechamento (ignorado se allDay = true)",
      "definition" : "Horário de fechamento (ignorado se allDay = true)"
    },
    {
      "id" : "PractitionerRole.notAvailable",
      "path" : "PractitionerRole.notAvailable",
      "short" : "Não disponível durante este período",
      "definition" : "Não disponível durante este período"
    },
    {
      "id" : "PractitionerRole.notAvailable.id",
      "path" : "PractitionerRole.notAvailable.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "PractitionerRole.notAvailable.extension",
      "path" : "PractitionerRole.notAvailable.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "PractitionerRole.notAvailable.modifierExtension",
      "path" : "PractitionerRole.notAvailable.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "PractitionerRole.notAvailable.description",
      "path" : "PractitionerRole.notAvailable.description",
      "short" : "Motivo porquê o horário não está disponível",
      "definition" : "Motivo porquê o horário não está disponível"
    },
    {
      "id" : "PractitionerRole.notAvailable.during",
      "path" : "PractitionerRole.notAvailable.during",
      "short" : "Serviço indisponível a partir desta data",
      "definition" : "Serviço indisponível a partir desta data"
    },
    {
      "id" : "PractitionerRole.availabilityExceptions",
      "path" : "PractitionerRole.availabilityExceptions",
      "short" : "Descrição das exceções de disponibilidade",
      "definition" : "Descrição das exceções de disponibilidade"
    },
    {
      "id" : "PractitionerRole.endpoint",
      "path" : "PractitionerRole.endpoint",
      "short" : "Endpoints técnicos que fornecem acesso a serviços eletrônicos operados pela organização",
      "definition" : "Endpoints técnicos que fornecem acesso a serviços eletrônicos operados pela organização"
    }]
  }
}

```
