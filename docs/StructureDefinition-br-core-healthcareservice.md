# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-healthcareservice - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-healthcareservice**

## Resource Profile: br-core-healthcareservice 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreHealthcareService |

 
Este perfil restringe o recurso [HealthcareService](https://hl7.org/fhir/R4/healthcareservice.html) que representa os detalhes de um serviço de saúde disponível em um local 

### Escopo e uso

O [br-core-healthcareservice](StructureDefinition-br-core-healthcareservice.md) é usado para descrever um único serviço de saúde ou categoria de serviços que são fornecidos por uma organização em um local. O local dos serviços pode ser virtual, como por exemplo os serviços de telemedicina.

Exemplos comuns de recursos do HealthcareServices são:

* Neuropsicólogo Clínico
* Serviço de Podologia
* Emergência do Hospital Menino Jesus
* Cuidados Paliativos oferecidos em HLP (Hospital de Longa Permanência)
* Serviço 24h de aconselhamento telefônico de crise
* Serviços de informação, aconselhamento e/ou encaminhamento
* Serviços de Telessaúde
* Hospital em casa
* Farmácia
* Apoio Social
* Aconselhamento sobre drogas e/ou álcool
* Programas diurnos, treinamento para adultos e serviços de apoio
* Consultoria de psicólogos e/ou serviços de psicologia

### Caso de uso

Exemplos de uso dos recursos do [br-core-healthcareservice](StructureDefinition-br-core-healthcareservice.md) são:

* CNES – Cadastro Nacional de Estabelecimentos - pesquisa de estabelecimentos e prestadores
* Portal do Cliente numa Organização - para localizar serviços / agendar consultas
* Catálogo de endereços de serviços para encaminhamentos, incluindo referências a questionários para avaliações que são necessárias como parte do encaminhamento

### Caso de uso da RNDS

Este perfil ainda não está implementado na RNDS.

**Orientações de implementação específicas do perfil** Apesar de ainda não definido na RNDS, quando for utilizado deve se levar em conta a [Portaria de consolidação Nº1 de 28 de setembro de 2017](https://bvsms.saude.gov.br/bvs/saudelegis/gm/2021/prt2236_20_09_2021.html), que trata da consolidação das normas sobre os direitos e deveres dos usuários da saúde, a organização e o funcionamento do Sistema Único de Saúde no Brasil, com respeito as terminologias a serem utilizadas neste perfil, conforme Tabela 1 abaixo.

**Tabela 1. Binding Terminologias Nacionais para br-core-healthcareservice**

| | | | |
| :--- | :--- | :--- | :--- |
| category | 0..* | [Service category (Example)](https://hl7.org/fhir/R4/valueset-service-category.html) | [BRTipoEstabelecimento](https://terminologia-br-ig.web.app/CodeSystem-BRTipoEstabelecimentoSaude.html)CNES |
| type | 0..* | [Service type (Example)](https://hl7.org/fhir/R4/valueset-service-type.html) | BRServicosEspecializados CNES |
| speciality | 0..* | [Practice Setting Code Value Set (Preferred)](https://hl7.org/fhir/R4/valueset-c80-practice-codes.html) | [CBO](https://terminologia-br-ig.web.app/NamingSystem-BRCBO.html)obrigatório |
| serviceProvisionCode | 0..* | [ServiceProvisionConditions (Example)](https://hl7.org/fhir/R4/valueset-service-provision-conditions.html) | BRTipoConvenio CNES - obrigatório |

### Limites e relacionamentos

O recurso [br-core-healthcareservice](StructureDefinition-br-core-healthcareservice.md) pode ser usado com o recurso [Schedule](https://hl7.org/fhir/R4/schedule.html#Schedule) para definir a disponibilidade do serviço. Isso pode ser feito usando a propriedade Actor do recurso Schedule.

Ao criar um [Appointment](https://hl7.org/fhir/R4/appointment.html#Appointment), o HealthcareService deve ser atribuído a um dos participantes. Cabe ao sistema de agendamento determinar se o serviço está disponível e pode ser aceito.

O recurso HealthcareService é usado com os seguintes recursos:

* [Organization](https://hl7.org/fhir/R4/organization.html) ([br-core-organization](https://saude.gov.br/fhir/StrucutreDefinition.br-core-organization)): A organização fornece os serviços.
* [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) ([br-core-servicerequest](https://saude.gov.br/fhir/StrucutreDefinition.br-core-servicerequest)): Esta é uma solicitação específica de assunto para um serviço específico, pode ser para um serviço de saúde específico e/ou simplesmente um valor de serviço codificado. A granularidade incluída nos códigos de solicitação pode ser mais fina do que a definida no serviço de saúde.
* [OrganizationAffiliation](https://hl7.org/fhir/R4/organizationaffiliation.html): pode restringir uma lista de serviços de saúde disponíveis entre duas organizações.
* [Location](https://hl7.org/fhir/R4/location.html) ([br-core-location](https://saude.gov.br/fhir/StrucutreDefinition.br-core-location)): especifica o local onde o(s) serviço(s) são oferecidos/disponíveis.

Este recurso é referenciado por [UsageContext](https://hl7.org/fhir/R4/metadatatypes.html#UsageContext), [Account](https://hl7.org/fhir/R4/account.html#Account), [Appointment](https://hl7.org/fhir/R4/appointment.html#Appointment), [AppointmentResponse](https://hl7.org/fhir/R4/appointmentresponse.html#AppointmentResponse), [br-core-careplan](https://saude.gov.br/fhir/StrucutreDefinition.br-core-careplan.html), [CatalogEntry](https://hl7.org/fhir/R4/catalogentry.html#CatalogEntry), [Communication](https://hl7.org/fhir/R4/communication.html#Communication), [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html#CommunicationRequest), [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html#DeviceRequest), [OrganizationAffiliation](https://hl7.org/fhir/R4/organizationaffiliation.html#OrganizationAffiliation), [br-core-practitionerrole](https://saude.gov.br/fhir/StrucutreDefinition.br-core-practitionerrole.html), [Schedule](https://hl7.org/fhir/R4/schedule.html#Schedule), [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest), [SupplyRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest) e [Task]().

**Usos:**

* Refere a este Perfil: [br-core-appointment](StructureDefinition-br-core-appointment.md), [BRCorePractitionerRole](StructureDefinition-br-core-practitionerrole.md), [br-core-schedule](StructureDefinition-br-core-schedule.md) and [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-healthcareservice.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [HealthcareService](http://hl7.org/fhir/R4/healthcareservice.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [HealthcareService](http://hl7.org/fhir/R4/healthcareservice.html) 

** Resumo **

 **Visão diferencial** 

Esta estrutura é derivada de [HealthcareService](http://hl7.org/fhir/R4/healthcareservice.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [HealthcareService](http://hl7.org/fhir/R4/healthcareservice.html) 

** Resumo **

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-healthcareservice.csv), [Excel](StructureDefinition-br-core-healthcareservice.xlsx), [Schematron](StructureDefinition-br-core-healthcareservice.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-healthcareservice",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice",
  "version" : "1.1.0",
  "name" : "BRCoreHealthcareService",
  "title" : "br-core-healthcareservice",
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
  "description" : "Este perfil restringe o recurso [HealthcareService](https://hl7.org/fhir/R4/healthcareservice.html) que representa os detalhes de um serviço de saúde disponível em um local",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService"
    },
    {
      "id" : "HealthcareService.id",
      "path" : "HealthcareService.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "HealthcareService.meta",
      "path" : "HealthcareService.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "HealthcareService.implicitRules",
      "path" : "HealthcareService.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "HealthcareService.language",
      "path" : "HealthcareService.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "HealthcareService.text",
      "path" : "HealthcareService.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "HealthcareService.contained",
      "path" : "HealthcareService.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "HealthcareService.extension",
      "path" : "HealthcareService.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "HealthcareService.modifierExtension",
      "path" : "HealthcareService.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "HealthcareService.identifier",
      "path" : "HealthcareService.identifier",
      "short" : "Identificadores deste recurso",
      "definition" : "Identificadores deste recurso"
    },
    {
      "id" : "HealthcareService.active",
      "path" : "HealthcareService.active",
      "short" : "Se este registro está em uso ativo",
      "definition" : "Se este registro está em uso ativo"
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "short" : "Referência à organização que fornece este serviço",
      "definition" : "Referência à organização que fornece este serviço"
    },
    {
      "id" : "HealthcareService.category",
      "path" : "HealthcareService.category",
      "short" : "Categoria de serviço",
      "definition" : "Categoria de serviço",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoEstabelecimentoSaude"
      }
    },
    {
      "id" : "HealthcareService.type",
      "path" : "HealthcareService.type",
      "short" : "Tipo de serviço",
      "definition" : "Tipo de serviço",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRServicoEspecializado"
      }
    },
    {
      "id" : "HealthcareService.specialty",
      "path" : "HealthcareService.specialty",
      "short" : "Especialidades atendidas",
      "definition" : "Especialidades atendidas",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "HealthcareService.location",
      "path" : "HealthcareService.location",
      "short" : "Referência aos locais onde o serviço pode ser prestado",
      "definition" : "Referência aos locais onde o serviço pode ser prestado"
    },
    {
      "id" : "HealthcareService.name",
      "path" : "HealthcareService.name",
      "short" : "Nome do serviço",
      "definition" : "Nome do serviço"
    },
    {
      "id" : "HealthcareService.comment",
      "path" : "HealthcareService.comment",
      "short" : "Comentários sobre o serviço",
      "definition" : "Comentários sobre o serviço"
    },
    {
      "id" : "HealthcareService.extraDetails",
      "path" : "HealthcareService.extraDetails",
      "short" : "Detalhes extras sobre o serviço",
      "definition" : "Detalhes extras sobre o serviço"
    },
    {
      "id" : "HealthcareService.photo",
      "path" : "HealthcareService.photo",
      "short" : "Anexos para facilitar a identificação do serviço",
      "definition" : "Anexos para facilitar a identificação do serviço"
    },
    {
      "id" : "HealthcareService.telecom",
      "path" : "HealthcareService.telecom",
      "short" : "Contatos relacionados ao serviço de saúde",
      "definition" : "Contatos relacionados ao serviço de saúde"
    },
    {
      "id" : "HealthcareService.coverageArea",
      "path" : "HealthcareService.coverageArea",
      "short" : "Área de abrangência do serviço",
      "definition" : "Área de abrangência do serviço"
    },
    {
      "id" : "HealthcareService.serviceProvisionCode",
      "path" : "HealthcareService.serviceProvisionCode",
      "short" : "Condições sob as quais o serviço está disponível/oferecido",
      "definition" : "Condições sob as quais o serviço está disponível/oferecido",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/TipoConvenio"
      }
    },
    {
      "id" : "HealthcareService.eligibility",
      "path" : "HealthcareService.eligibility",
      "short" : "Elegibilidade",
      "definition" : "Elegibilidade"
    },
    {
      "id" : "HealthcareService.eligibility.id",
      "path" : "HealthcareService.eligibility.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "HealthcareService.eligibility.extension",
      "path" : "HealthcareService.eligibility.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "HealthcareService.eligibility.modifierExtension",
      "path" : "HealthcareService.eligibility.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "HealthcareService.eligibility.code",
      "path" : "HealthcareService.eligibility.code",
      "short" : "Valor codificado para a elegibilidade",
      "definition" : "Valor codificado para a elegibilidade"
    },
    {
      "id" : "HealthcareService.eligibility.comment",
      "path" : "HealthcareService.eligibility.comment",
      "short" : "Descreve as condições de elegibilidade do serviço",
      "definition" : "Descreve as condições de elegibilidade do serviço"
    },
    {
      "id" : "HealthcareService.program",
      "path" : "HealthcareService.program",
      "short" : "Programas que este serviço atende",
      "definition" : "Programas que este serviço atende",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRProgramaSaude"
      }
    },
    {
      "id" : "HealthcareService.characteristic",
      "path" : "HealthcareService.characteristic",
      "short" : "Características do serviço",
      "definition" : "Características do serviço"
    },
    {
      "id" : "HealthcareService.communication",
      "path" : "HealthcareService.communication",
      "short" : "Idiomas oferecido por este serviço",
      "definition" : "Idiomas oferecido por este serviço"
    },
    {
      "id" : "HealthcareService.referralMethod",
      "path" : "HealthcareService.referralMethod",
      "short" : "Formas pelas quais o serviço aceita referências",
      "definition" : "Formas pelas quais o serviço aceita referências"
    },
    {
      "id" : "HealthcareService.appointmentRequired",
      "path" : "HealthcareService.appointmentRequired",
      "short" : "Se for necessário agendamento para acesso a este serviço",
      "definition" : "Se for necessário agendamento para acesso a este serviço"
    },
    {
      "id" : "HealthcareService.availableTime",
      "path" : "HealthcareService.availableTime",
      "short" : "Horários de funcionamento do serviço",
      "definition" : "Horários de funcionamento do serviço"
    },
    {
      "id" : "HealthcareService.availableTime.id",
      "path" : "HealthcareService.availableTime.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "HealthcareService.availableTime.extension",
      "path" : "HealthcareService.availableTime.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "HealthcareService.availableTime.modifierExtension",
      "path" : "HealthcareService.availableTime.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "HealthcareService.availableTime.daysOfWeek",
      "path" : "HealthcareService.availableTime.daysOfWeek",
      "short" : "Dias da semana: seg, ter, qua,qui, sex, sab,dom",
      "definition" : "Dias da semana: seg, ter, qua,qui, sex, sab,dom"
    },
    {
      "id" : "HealthcareService.availableTime.allDay",
      "path" : "HealthcareService.availableTime.allDay",
      "short" : "Se disponível 24 horas",
      "definition" : "Se disponível 24 horas"
    },
    {
      "id" : "HealthcareService.availableTime.availableStartTime",
      "path" : "HealthcareService.availableTime.availableStartTime",
      "short" : "Horário de abertura",
      "definition" : "Horário de abertura"
    },
    {
      "id" : "HealthcareService.availableTime.availableEndTime",
      "path" : "HealthcareService.availableTime.availableEndTime",
      "short" : "Hora de fechamento",
      "definition" : "Hora de fechamento"
    },
    {
      "id" : "HealthcareService.notAvailable",
      "path" : "HealthcareService.notAvailable",
      "short" : "Não disponível",
      "definition" : "Não disponível"
    },
    {
      "id" : "HealthcareService.notAvailable.id",
      "path" : "HealthcareService.notAvailable.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "HealthcareService.notAvailable.extension",
      "path" : "HealthcareService.notAvailable.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "HealthcareService.notAvailable.modifierExtension",
      "path" : "HealthcareService.notAvailable.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "HealthcareService.notAvailable.description",
      "path" : "HealthcareService.notAvailable.description",
      "short" : "Motivo da indisponibilidade do serviço",
      "definition" : "Motivo da indisponibilidade do serviço"
    },
    {
      "id" : "HealthcareService.notAvailable.during",
      "path" : "HealthcareService.notAvailable.during",
      "short" : "Período da indisponibilidade",
      "definition" : "Período da indisponibilidade"
    },
    {
      "id" : "HealthcareService.availabilityExceptions",
      "path" : "HealthcareService.availabilityExceptions",
      "short" : "Descrição das exceções de disponibilidade",
      "definition" : "Descrição das exceções de disponibilidade"
    },
    {
      "id" : "HealthcareService.endpoint",
      "path" : "HealthcareService.endpoint",
      "short" : "Endpoints técnicos que fornecem acesso a serviços eletrônicos operados para o serviço de saúde",
      "definition" : "Endpoints técnicos que fornecem acesso a serviços eletrônicos operados para o serviço de saúde"
    }]
  }
}

```
