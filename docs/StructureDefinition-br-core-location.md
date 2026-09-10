# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-location - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-location**

## Resource Profile: br-core-location 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreLocation |

 
Este perfil restringe o recurso [Location](https://hl7.org/fhir/R4/location.html) que aborda detalhes e informações da posição de um local físico onde os serviços são fornecidos e os recursos e participantes podem ser armazenados, encontrados, contidos ou acomodados 

### Escopo e uso

O [br-core-location](StructureDefinition-br-core-location.md) inclui locais incidentais (um local que é usado para assistência médica sem designação ou autorização prévia) e locais dedicados e formalmente nomeados. Os locais podem ser privados, públicos, móveis ou fixos e podem variar de pequenos freezers a prédios hospitalares completos ou estacionamentos.

Exemplos de locais são:

* Prédio, enfermaria, corredor, leito, quarto ou cama
* Clínica Móvel
* Freezer, incubadora
* Veículo ou elevador
* Casa, galpão ou garagem
* Estrada, lugar de estacionamento, parque
* Ambulância (genérico)
* Ambulância (específica)
* Casa do Paciente (genérico)
* Jurisdição

Esses locais não se destinam a cobrir locais em que algo aconteceu ao paciente (por exemplo, a perna quebrada de um paciente), mas podem cobrir o local onde o paciente quebrou a perna (por exemplo, o playground).

### Caso de uso

Exemplos de uso do recurso.

### Caso de uso da RNDS

Na RNDS este recurso é uma referência genérica aos locais onde um Contato Assistencial pode acontecer.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada Perfil Location deve ter:**

1. Status
1. Name
1. Mode

**Cada Perfil Location deve oferecer suporte a:**

1. Type

**Orientações de implementação específicas do perfil** No recurso br-core-location, os elementos status e name são obrigatórios por conta da [Portaria de Consolidação n°1 de 28 de setembro de 2017](https://bvsms.saude.gov.br/bvs/saudelegis/gm/2021/prt2236_20_09_2021.html), conforme foi definido na RNDS.

### Limites e relacionamentos

Location e Organization são recursos intimamente relacionados e podem frequentemente ser misturados/combinados/confundidos.

O [br-core-location](StructureDefinition-br-core-location.md) tem a intenção de descrever as estruturas mais físicas gerenciadas/operadas por uma organização, enquanto o [br-core-organization](StructureDefinition-br-core-organization) tem a intenção de representar as hierarquias mais conceituais, como uma ala.

Um local é válido sem um endereço em casos em que ele poderia ser puramente descrito por um local geocodificado em áreas remotas, ou quando registrado por um dispositivo. Locais com um modo = “kind” provavelmente também não teriam um endereço, pois são apenas um tipo de local, mas também poderiam ter um endereço onde podem ser encontrados no endereço.

Outro uso de localização poderia ser para descrever uma Jurisdição. Esta jurisdição pode ser considerada um limite classificado que pode ser uma combinação de um limite físico e algum outro(s) discriminador(es):

* Nação - Comunidade nacional ou Governo Federal (Ministério da Saúde)
* Província ou Estado (comunidade ou governo)
* Negócios (em toda a empresa)
* Âmbito de negócios (CDC/FDA)
* Segmento de negócios (Farmácia do Reino Unido)

Este recurso é referenciado por [UsageContext](https://hl7.org/fhir/R4/metadatatypes.html#UsageContext), [Account](https://hl7.org/fhir/R4/account.html#Account), [ActivityDefinition](https://hl7.org/fhir/R4/activitydefinition.html#ActivityDefinition), [AdverseEvent](https://hl7.org/fhir/R4/adverseevent.html#AdverseEvent), [Appointment](https://hl7.org/fhir/R4/appointment.html#Appointment), [AppointmentResponse](https://hl7.org/fhir/R4/appointmentresponse.html#AppointmentResponse), [AuditEvent](https://hl7.org/fhir/R4/auditevent.html#AuditEvent), [CarePlan](https://hl7.org/fhir/R4/careplan.html#CarePlan), [Claim](https://hl7.org/fhir/R4/claim.html#Claim), [ClaimResponse](https://hl7.org/fhir/R4/claimresponse.html#ClaimResponse), [Contract](https://hl7.org/fhir/R4/contract.html#Contract), [CoverageEligibilityRequest](https://hl7.org/fhir/R4/coverageeligibilityrequest.html#CoverageEligibilityRequest), [Device](https://hl7.org/fhir/R4/device.html#Device), [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html#DeviceRequest), [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html#DiagnosticReport), [Encounter](https://hl7.org/fhir/R4/encounter.html#Encounter), [ExplanationOfBenefit](https://hl7.org/fhir/R4/explanationofbenefit.html#ExplanationOfBenefit), [Flag](https://hl7.org/fhir/R4/flag.html#Flag), [HealthcareService](https://hl7.org/fhir/R4/healthcareservice.html#HealthcareService), [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html#ImagingStudy), [Immunization](https://hl7.org/fhir/R4/immunization.html#Immunization), [InsurancePlan](https://hl7.org/fhir/R4/insuranceplan.html#InsurancePlan), [List](https://hl7.org/fhir/R4/list.html#List), itself, [MeasureReport](https://hl7.org/fhir/R4/measurereport.html#MeasureReport), [Media](https://hl7.org/fhir/R4/media.html#Media), [MedicationDispense](https://hl7.org/fhir/R4/medicationdispense.html#MedicationDispense), [Observation](https://hl7.org/fhir/R4/observation.html#Observation), [OrganizationAffiliation](https://hl7.org/fhir/R4/organizationaffiliation.html#OrganizationAffiliation), [PractitionerRole](https://hl7.org/fhir/R4/practitionerrole.html#PractitionerRole), [Procedure](https://hl7.org/fhir/R4/procedure.html#Procedure), [Provenance](https://hl7.org/fhir/R4/provenance.html#Provenance), [ResearchStudy](https://hl7.org/fhir/R4/researchstudy.html#ResearchStudy), [Schedule](https://hl7.org/fhir/R4/schedule.html#Schedule), [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest), [Specimen](https://hl7.org/fhir/R4/specimen.html#Specimen), [SupplyDelivery](https://hl7.org/fhir/R4/supplydelivery.html#SupplyDelivery), [SupplyRequest](https://hl7.org/fhir/R4/supplyrequest.html#SupplyRequest) e [Task](https://hl7.org/fhir/R4/task.html#Task).

**Usos:**

* Refere a este Perfil: [Aldeia Indígena](StructureDefinition-br-core-address-aldeia.md), [Distrito Sanitário Especial Indígena (DSEI)](StructureDefinition-br-core-address-dsei.md), [Polo Base](StructureDefinition-br-core-address-polo.md), [br-core-encounter](StructureDefinition-br-core-encounter.md)... Show 8 more, [BRCoreImmunization](StructureDefinition-br-core-immunization.md), [br-core-location](StructureDefinition-br-core-location.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCorePractitionerRole](StructureDefinition-br-core-practitionerrole.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md) and [BRCoreSpecimen](StructureDefinition-br-core-specimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-location.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Location](http://hl7.org/fhir/R4/location.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Location](http://hl7.org/fhir/R4/location.html) 

** Resumo **

Obrigatório: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Location](http://hl7.org/fhir/R4/location.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Location](http://hl7.org/fhir/R4/location.html) 

** Resumo **

Obrigatório: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-location.csv), [Excel](StructureDefinition-br-core-location.xlsx), [Schematron](StructureDefinition-br-core-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-location",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location",
  "version" : "1.1.0",
  "name" : "BRCoreLocation",
  "title" : "br-core-location",
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
  "description" : "Este perfil restringe o recurso [Location](https://hl7.org/fhir/R4/location.html) que aborda detalhes e informações da posição de um local físico onde os serviços são fornecidos e os recursos e participantes podem ser armazenados, encontrados, contidos ou acomodados",
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
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.id",
      "path" : "Location.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Location.meta",
      "path" : "Location.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Location.implicitRules",
      "path" : "Location.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Location.language",
      "path" : "Location.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Location.text",
      "path" : "Location.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Location.contained",
      "path" : "Location.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Location.extension",
      "path" : "Location.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Location.modifierExtension",
      "path" : "Location.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "short" : "Identificadores para este recurso",
      "definition" : "Identificadores para este recurso"
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "short" : "Indica se o local ainda está em uso: active | suspended | inactive",
      "definition" : "Indica se o local ainda está em uso: active | suspended | inactive",
      "min" : 1
    },
    {
      "id" : "Location.operationalStatus",
      "path" : "Location.operationalStatus",
      "short" : "O status operacional do local (normalmente apenas para uma cama/quarto)",
      "definition" : "O status operacional do local (normalmente apenas para uma cama/quarto)"
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "short" : "Nome do local",
      "definition" : "Nome do local",
      "min" : 1
    },
    {
      "id" : "Location.alias",
      "path" : "Location.alias",
      "short" : "Uma lista de nomes alternativos pelos quais o local é conhecido, ou foi conhecido, no passado",
      "definition" : "Uma lista de nomes alternativos pelos quais o local é conhecido, ou foi conhecido, no passado"
    },
    {
      "id" : "Location.description",
      "path" : "Location.description",
      "short" : "Detalhes adicionais sobre o local que podem ser exibidos como informações adicionais para identificar o local além do seu nome",
      "definition" : "Detalhes adicionais sobre o local que podem ser exibidos como informações adicionais para identificar o local além do seu nome"
    },
    {
      "id" : "Location.mode",
      "path" : "Location.mode",
      "short" : "Indica se uma instância deste recurso representa um local específico ou uma classe de locais",
      "definition" : "Indica se uma instância deste recurso representa um local específico ou uma classe de locais"
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "short" : "Tipo de serviço oferecido",
      "definition" : "Tipo de serviço oferecido",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRServicoEspecializado"
      }
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "short" : "Detalhes de contato do local",
      "definition" : "Detalhes de contato do local"
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "short" : "Endereço do local",
      "definition" : "Endereço do local"
    },
    {
      "id" : "Location.physicalType",
      "path" : "Location.physicalType",
      "short" : "Estrutura física do local",
      "definition" : "Estrutura física do local",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRInstalacoesFisicas"
      }
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "short" : "A localização geográfica absoluta",
      "definition" : "A localização geográfica absoluta"
    },
    {
      "id" : "Location.position.id",
      "path" : "Location.position.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Location.position.extension",
      "path" : "Location.position.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Location.position.modifierExtension",
      "path" : "Location.position.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Location.position.longitude",
      "path" : "Location.position.longitude",
      "short" : "Longitude com referência WGS84",
      "definition" : "Longitude com referência WGS84"
    },
    {
      "id" : "Location.position.latitude",
      "path" : "Location.position.latitude",
      "short" : "Latitude com referência WGS84",
      "definition" : "Latitude com referência WGS84"
    },
    {
      "id" : "Location.position.altitude",
      "path" : "Location.position.altitude",
      "short" : "Altitude com referência WGS84",
      "definition" : "Altitude com referência WGS84"
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "short" : "Referência à organização responsável pelo provisionamento e manutenção",
      "definition" : "Referência à organização responsável pelo provisionamento e manutenção"
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "short" : "Referência à outro local que esta localidade é parte",
      "definition" : "Referência à outro local que esta localidade é parte",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "Location.hoursOfOperation",
      "path" : "Location.hoursOfOperation",
      "short" : "Horário de funcionamento",
      "definition" : "Horário de funcionamento"
    },
    {
      "id" : "Location.hoursOfOperation.id",
      "path" : "Location.hoursOfOperation.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Location.hoursOfOperation.extension",
      "path" : "Location.hoursOfOperation.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Location.hoursOfOperation.modifierExtension",
      "path" : "Location.hoursOfOperation.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Location.hoursOfOperation.daysOfWeek",
      "path" : "Location.hoursOfOperation.daysOfWeek",
      "short" : "Dias da semana",
      "definition" : "Dias da semana"
    },
    {
      "id" : "Location.hoursOfOperation.allDay",
      "path" : "Location.hoursOfOperation.allDay",
      "short" : "Se o local está aberto o dia inteiro",
      "definition" : "Se o local está aberto o dia inteiro"
    },
    {
      "id" : "Location.hoursOfOperation.openingTime",
      "path" : "Location.hoursOfOperation.openingTime",
      "short" : "Horário de abertura do local",
      "definition" : "Horário de abertura do local"
    },
    {
      "id" : "Location.hoursOfOperation.closingTime",
      "path" : "Location.hoursOfOperation.closingTime",
      "short" : "Horário de fechamento do local",
      "definition" : "Horário de fechamento do local"
    },
    {
      "id" : "Location.availabilityExceptions",
      "path" : "Location.availabilityExceptions",
      "short" : "Descrição das exceções de disponibilidade",
      "definition" : "Descrição das exceções de disponibilidade"
    },
    {
      "id" : "Location.endpoint",
      "path" : "Location.endpoint",
      "short" : "Endpoints técnicos que fornecem acesso aos serviços operados para o local",
      "definition" : "Endpoints técnicos que fornecem acesso aos serviços operados para o local"
    }]
  }
}

```
