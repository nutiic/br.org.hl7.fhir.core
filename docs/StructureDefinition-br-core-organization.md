# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreOrganization - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreOrganization**

## Resource Profile: BRCoreOrganization 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreOrganization |

 
Este perfil representa um agrupamento formal ou informal reconhecido de pessoas ou organizações com o propósito de alcançar alguma forma de ação coletiva. Inclui empresas, instituições, corporações, departamentos, grupos comunitários, grupos de práticas de saúde, planos de saúde, empresas fabricantes de produtos medicinais, entre outros 

### Escopo/Uso

Este recurso pode ser usado em um registro compartilhado de contato assistencial para representar o estabelecimento que prestou a assistência ou pode ser usado meramente como um suporte para outros recursos que precisam referenciar organizações, talvez como um documento, mensagem ou como um recurso contido em outro recurso. Se for utilizado para representar um cadastro de organizações, como no caso do CNES – Cadastro Nacional de Estabelecimentos de Saúde, é possível que existam vários registros, cada um lidando com diferentes tipos ou níveis de organização.

### Caso de uso

Este perfil é necessário para manter os dados referentes ao estabelecimento em que o paciente foi atendido (nome empresarial, CPF/CNPJ, endereço e os demais dados de identificação), bem como o período do atendimento e os códigos dos procedimentos realizados. A organização ou estabelecimento de saúde é uma unidade ou entidade que realiza a execução de serviços médicos e de saúde em conformidade com planos de saúde privados e seguros de saúde suplementar.

Esse perfil pode, ainda, ser utilizado para representar empresas, fabricantes de medicamentos ou operadoras de planos privados de saúde e Secretarias de Saúde e órgãos do governo federal, as quais não são estabelecimentos de saúde, mas organizações que intermediam ou financiam a rede ou estabelecimentos de saúde, próprios ou contratados, que realizam procedimentos e tratamentos médicos em seu nome, para beneficiários dos planos de saúde suplementar ou aos usuários do SUS (Sistema Único de Saúde). Essas organizações são as fontes financiadoras desses serviços e não os prestadores dos serviços, elas atuam como responsáveis pelo financiamento da(s) rede(s) de estabelecimentos de saúde sob sua jurisdição.

### Identificadores

Este perfil deve possuir minimamente um identificador que pode ser o Cadastro Nacional Pessoa Jurídica (CNPJ) ou o Cadastro de Pessoa Física (CPF). Também deve ser informado o CNES, caso ao organização seja um prestador executante. O código CNES deve set utilizado para os prestadores de serviços. Desde 2 de outubro de 2015, como preceitua o artigo 4° da portaria nº 1.646, que institui o Cadastro Nacional de Estabelecimentos de Saúde (CNES), que regulamenta que o cadastramento e a manutenção dos dados cadastrais no CNES. esse código é obrigatório para que todo e qualquer estabelecimento de saúde possa funcionar em território nacional, devendo preceder aos licenciamentos necessários ao exercício de suas atividades, bem como às suas renovações. No entanto, para a ANS e para o Código de Defesa do Consumidor essa informação é opcional no caso de reembolsos, onde o beneficiário solicita ressarcimento dos serviços prestados no caráter “particular”, onde o estabelecimento não tem contrato ou convênio com a operadora de planos privados. Nesse caso de reembolso, na maioria dos contratos da saúde suplementar, o único identificador exigível é o Registro no Conselho Profissional do prestador de serviço, e por esse motivo se pode informar o código 999999 no elemento CNES, que é obrigatório na RNDS. Essa estrutura está em conformidade os modelos de informação de guias, referentes a mensagem Operadora-ANS do Componente de Conteúdo e Estrutura do Padrão TISS.

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

O perfil [br-core-organization](StructureDefinition-br-core-organization.md) é usado para coleções de pessoas que se uniram para atingir um objetivo. Este perfil geralmente existe como uma hierarquia de recursos de organização, usando a propriedade part-of para fornecer a associação da criança à sua organização pai. Essa hierarquia organizacional ajuda a comunicar a estrutura conceitual, enquanto o recurso Location fornece a representação física da hierarquia. A associação entre br-core-organization e [br-core-location](StructureDefinition-br-core-location.md) é específica para br-core-organization, como por exemplo, a associação de enfermarias com o hospital. Esses links não precisam ser todos para o nível superior do [br-core-organization](StructureDefinition-br-core-organization.md).

Ao preencher as hierarquias de [br-core-organization](StructureDefinition-br-core-organization.md) e [br-core-location](StructureDefinition-br-core-location.md), geralmente não há uma distinção clara entre essas 2, no entanto, para ajudar na tomada de decisão, os perfis tipo br-core-location são sempre usados para registrar onde um serviço ocorre e, portanto, onde os encontros e observações são associados. A propriedade [br-core-organization](StructureDefinition-br-core-organization.md) nesses recursos pode não ser o local onde o serviço ocorreu

**Usos:**

* Refere a este Perfil: [BRCoreCarePlan](StructureDefinition-br-core-careplan.md), [br-core-careteam](StructureDefinition-br-core-careteam.md), [br-core-composition](StructureDefinition-br-core-composition.md), [br-core-consent](StructureDefinition-br-core-consent.md)... Show 15 more, [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [br-core-encounter](StructureDefinition-br-core-encounter.md), [BRCoreImmunization](StructureDefinition-br-core-immunization.md), [br-core-medication](StructureDefinition-br-core-medication.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCoreOrganization](StructureDefinition-br-core-organization.md), [BRCorePatient](StructureDefinition-br-core-patient.md), [BRCorePractitioner](StructureDefinition-br-core-practitioner.md), [BRCorePractitionerRole](StructureDefinition-br-core-practitionerrole.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-organization.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Organization](http://hl7.org/fhir/R4/organization.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Organization](http://hl7.org/fhir/R4/organization.html) 

** Resumo **

Obrigatório: 4 elementos(15 aninhado obrigatoriamente elementos)
 Fixo: 10 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Organization.identifier

 **Visão diferencial** 

Esta estrutura é derivada de [Organization](http://hl7.org/fhir/R4/organization.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Organization](http://hl7.org/fhir/R4/organization.html) 

** Resumo **

Obrigatório: 4 elementos(15 aninhado obrigatoriamente elementos)
 Fixo: 10 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Organization.identifier

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-organization.csv), [Excel](StructureDefinition-br-core-organization.xlsx), [Schematron](StructureDefinition-br-core-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-organization",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
  "version" : "1.1.0",
  "name" : "BRCoreOrganization",
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
  "description" : "Este perfil representa um agrupamento formal ou informal reconhecido de pessoas ou organizações com o propósito de alcançar alguma forma de ação coletiva. Inclui empresas, instituições, corporações, departamentos, grupos comunitários, grupos de práticas de saúde, planos de saúde, empresas fabricantes de produtos medicinais, entre outros",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.id",
      "path" : "Organization.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Organization.meta",
      "path" : "Organization.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Organization.implicitRules",
      "path" : "Organization.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Organization.language",
      "path" : "Organization.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Organization.text",
      "path" : "Organization.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Organization.contained",
      "path" : "Organization.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Organization.modifierExtension",
      "path" : "Organization.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Identificadores nacionais do estabelecimento",
        "rules" : "open"
      },
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:cnes",
      "path" : "Organization.identifier",
      "sliceName" : "cnes",
      "short" : "Identificador do estabelecimento (CNES)",
      "definition" : "Identificador do estabelecimento",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:cnes.id",
      "path" : "Organization.identifier.id",
      "short" : "Id lógico do identificador do estabelecimento",
      "definition" : "Id lógico do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnes.extension",
      "path" : "Organization.identifier.extension",
      "short" : "Extensões do identificador do estabelecimento",
      "definition" : "Extensões incluídas no identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnes.use",
      "path" : "Organization.identifier.use",
      "short" : "Uso do identificador do estabelecimento",
      "definition" : "usual: identificador usual do estabelecimento. official: identificador oficial do estabelecimento. temp: identificador temporário do estabelecimento. secondary: identificador secundário do estabelecimento",
      "fixedCode" : "official"
    },
    {
      "id" : "Organization.identifier:cnes.type",
      "path" : "Organization.identifier.type",
      "short" : "Tipo do identificador do estabelecimento",
      "definition" : "Código que representa o tipo do identificador do estabelecimento",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "IdentifierType"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
          "valueBoolean" : true
        }],
        "strength" : "required",
        "description" : "Tipo do identificador do estabelecimento",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-type"
      }
    },
    {
      "id" : "Organization.identifier:cnes.type.id",
      "path" : "Organization.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do estabelecimento",
      "definition" : "Id lógico do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnes.type.extension",
      "path" : "Organization.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do estabelecimento",
      "definition" : "Extensões incluídas no tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnes.type.coding",
      "path" : "Organization.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do estabelecimento",
      "definition" : "Codificação que representa o tipo do identificador do estabelecimento",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:cnes.type.coding.id",
      "path" : "Organization.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do estabelecimento",
      "definition" : "Id lógico da codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnes.type.coding.extension",
      "path" : "Organization.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do estabelecimento",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnes.type.coding.system",
      "path" : "Organization.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do estabelecimento",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do estabelecimento",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Organization.identifier:cnes.type.coding.version",
      "path" : "Organization.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do estabelecimento",
      "definition" : "Versão da codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnes.type.coding.code",
      "path" : "Organization.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador do estabelecimento",
      "definition" : "Código que representa a codificação do tipo do identificador do estabelecimento",
      "min" : 1,
      "fixedCode" : "PRN"
    },
    {
      "id" : "Organization.identifier:cnes.type.coding.display",
      "path" : "Organization.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador do estabelecimento",
      "definition" : "Texto que representa a codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnes.type.coding.userSelected",
      "path" : "Organization.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do estabelecimento",
      "definition" : "Indica se a codificação do tipo do identificador do estabelecimento foi selecionada pelo usuário"
    },
    {
      "id" : "Organization.identifier:cnes.type.text",
      "path" : "Organization.identifier.type.text",
      "short" : "Texto do tipo do identificador do estabelecimento",
      "definition" : "Texto que representa o tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnes.system",
      "path" : "Organization.identifier.system",
      "short" : "Sistema do identificador do estabelecimento",
      "definition" : "Sistema que identifica o tipo do identificador do estabelecimento",
      "min" : 1,
      "fixedUri" : "https://saude.gov.br/fhir/sid/cnes"
    },
    {
      "id" : "Organization.identifier:cnes.value",
      "path" : "Organization.identifier.value",
      "short" : "Valor do identificador do estabelecimento",
      "definition" : "Valor do identificador do estabelecimento",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:cnes.period",
      "path" : "Organization.identifier.period",
      "short" : "Período de uso do identificador do estabelecimento",
      "definition" : "Período de tempo durante o qual o identificador do estabelecimento foi utilizado"
    },
    {
      "id" : "Organization.identifier:cnes.assigner",
      "path" : "Organization.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Organization.identifier:cnes.assigner.id",
      "path" : "Organization.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Organization.identifier:cnes.assigner.extension",
      "path" : "Organization.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Organization.identifier:cnes.assigner.reference",
      "path" : "Organization.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Organization.identifier:cnes.assigner.type",
      "path" : "Organization.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Organization.identifier:cnes.assigner.identifier",
      "path" : "Organization.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Organization.identifier:cnes.assigner.display",
      "path" : "Organization.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Organization.identifier:cpf",
      "path" : "Organization.identifier",
      "sliceName" : "cpf",
      "short" : "Identificador do estabelecimento (CPF)",
      "definition" : "Identificador do estabelecimento",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:cpf.id",
      "path" : "Organization.identifier.id",
      "short" : "Id lógico do identificador do estabelecimento",
      "definition" : "Id lógico do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cpf.extension",
      "path" : "Organization.identifier.extension",
      "short" : "Extensões do identificador do estabelecimento",
      "definition" : "Extensões incluídas no identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cpf.use",
      "path" : "Organization.identifier.use",
      "short" : "Uso do identificador do estabelecimento",
      "definition" : "usual: identificador usual do estabelecimento. official: identificador oficial do estabelecimento. temp: identificador temporário do estabelecimento. secondary: identificador secundário do estabelecimento",
      "fixedCode" : "official"
    },
    {
      "id" : "Organization.identifier:cpf.type",
      "path" : "Organization.identifier.type",
      "short" : "Tipo do identificador do estabelecimento",
      "definition" : "Código que representa o tipo do identificador do estabelecimento",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "IdentifierType"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
          "valueBoolean" : true
        }],
        "strength" : "required",
        "description" : "Tipo do identificador do estabelecimento",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-type"
      }
    },
    {
      "id" : "Organization.identifier:cpf.type.id",
      "path" : "Organization.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do estabelecimento",
      "definition" : "Id lógico do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cpf.type.extension",
      "path" : "Organization.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do estabelecimento",
      "definition" : "Extensões incluídas no tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cpf.type.coding",
      "path" : "Organization.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do estabelecimento",
      "definition" : "Codificação que representa o tipo do identificador do estabelecimento",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:cpf.type.coding.id",
      "path" : "Organization.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do estabelecimento",
      "definition" : "Id lógico da codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cpf.type.coding.extension",
      "path" : "Organization.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do estabelecimento",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cpf.type.coding.system",
      "path" : "Organization.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do estabelecimento",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do estabelecimento",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Organization.identifier:cpf.type.coding.version",
      "path" : "Organization.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do estabelecimento",
      "definition" : "Versão da codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cpf.type.coding.code",
      "path" : "Organization.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador do estabelecimento",
      "definition" : "Código que representa a codificação do tipo do identificador do estabelecimento",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:cpf.type.coding.display",
      "path" : "Organization.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador do estabelecimento",
      "definition" : "Texto que representa a codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cpf.type.coding.userSelected",
      "path" : "Organization.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do estabelecimento",
      "definition" : "Indica se a codificação do tipo do identificador do estabelecimento foi selecionada pelo usuário"
    },
    {
      "id" : "Organization.identifier:cpf.type.text",
      "path" : "Organization.identifier.type.text",
      "short" : "Texto do tipo do identificador do estabelecimento",
      "definition" : "Texto que representa o tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cpf.system",
      "path" : "Organization.identifier.system",
      "short" : "Sistema do identificador do estabelecimento",
      "definition" : "Sistema que identifica o tipo do identificador do estabelecimento",
      "min" : 1,
      "fixedUri" : "https://saude.gov.br/fhir/sid/cpf"
    },
    {
      "id" : "Organization.identifier:cpf.value",
      "path" : "Organization.identifier.value",
      "short" : "Valor do identificador do estabelecimento",
      "definition" : "Valor do identificador do estabelecimento",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:cpf.period",
      "path" : "Organization.identifier.period",
      "short" : "Período de uso do identificador do estabelecimento",
      "definition" : "Período de tempo durante o qual o identificador do estabelecimento foi utilizado"
    },
    {
      "id" : "Organization.identifier:cpf.assigner",
      "path" : "Organization.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Organization.identifier:cpf.assigner.id",
      "path" : "Organization.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Organization.identifier:cpf.assigner.extension",
      "path" : "Organization.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Organization.identifier:cpf.assigner.reference",
      "path" : "Organization.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Organization.identifier:cpf.assigner.type",
      "path" : "Organization.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Organization.identifier:cpf.assigner.identifier",
      "path" : "Organization.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Organization.identifier:cpf.assigner.display",
      "path" : "Organization.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Organization.identifier:cnpj",
      "path" : "Organization.identifier",
      "sliceName" : "cnpj",
      "short" : "Identificador do estabelecimento (CNPJ)",
      "definition" : "Identificador do estabelecimento",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:cnpj.id",
      "path" : "Organization.identifier.id",
      "short" : "Id lógico do identificador do estabelecimento",
      "definition" : "Id lógico do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnpj.extension",
      "path" : "Organization.identifier.extension",
      "short" : "Extensões do identificador do estabelecimento",
      "definition" : "Extensões incluídas no identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnpj.use",
      "path" : "Organization.identifier.use",
      "short" : "Uso do identificador do estabelecimento",
      "definition" : "usual: identificador usual do estabelecimento. official: identificador oficial do estabelecimento. temp: identificador temporário do estabelecimento. secondary: identificador secundário do estabelecimento",
      "fixedCode" : "official"
    },
    {
      "id" : "Organization.identifier:cnpj.type",
      "path" : "Organization.identifier.type",
      "short" : "Tipo do identificador do estabelecimento",
      "definition" : "Código que representa o tipo do identificador do estabelecimento",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "IdentifierType"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
          "valueBoolean" : true
        }],
        "strength" : "required",
        "description" : "Tipo do identificador do estabelecimento",
        "valueSet" : "http://hl7.org/fhir/ValueSet/identifier-type"
      }
    },
    {
      "id" : "Organization.identifier:cnpj.type.id",
      "path" : "Organization.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do estabelecimento",
      "definition" : "Id lógico do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnpj.type.extension",
      "path" : "Organization.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do estabelecimento",
      "definition" : "Extensões incluídas no tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnpj.type.coding",
      "path" : "Organization.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do estabelecimento",
      "definition" : "Codificação que representa o tipo do identificador do estabelecimento",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:cnpj.type.coding.id",
      "path" : "Organization.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do estabelecimento",
      "definition" : "Id lógico da codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnpj.type.coding.extension",
      "path" : "Organization.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do estabelecimento",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnpj.type.coding.system",
      "path" : "Organization.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do estabelecimento",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do estabelecimento",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Organization.identifier:cnpj.type.coding.version",
      "path" : "Organization.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do estabelecimento",
      "definition" : "Versão da codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnpj.type.coding.code",
      "path" : "Organization.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador do estabelecimento",
      "definition" : "Código que representa a codificação do tipo do identificador do estabelecimento",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:cnpj.type.coding.display",
      "path" : "Organization.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador do estabelecimento",
      "definition" : "Texto que representa a codificação do tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnpj.type.coding.userSelected",
      "path" : "Organization.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do estabelecimento",
      "definition" : "Indica se a codificação do tipo do identificador do estabelecimento foi selecionada pelo usuário"
    },
    {
      "id" : "Organization.identifier:cnpj.type.text",
      "path" : "Organization.identifier.type.text",
      "short" : "Texto do tipo do identificador do estabelecimento",
      "definition" : "Texto que representa o tipo do identificador do estabelecimento"
    },
    {
      "id" : "Organization.identifier:cnpj.system",
      "path" : "Organization.identifier.system",
      "short" : "Sistema do identificador do estabelecimento",
      "definition" : "Sistema que identifica o tipo do identificador do estabelecimento",
      "min" : 1,
      "fixedUri" : "https://saude.gov.br/fhir/sid/cnpj"
    },
    {
      "id" : "Organization.identifier:cnpj.value",
      "path" : "Organization.identifier.value",
      "short" : "Valor do identificador do estabelecimento",
      "definition" : "Valor do identificador do estabelecimento",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:cnpj.period",
      "path" : "Organization.identifier.period",
      "short" : "Período de uso do identificador do estabelecimento",
      "definition" : "Período de tempo durante o qual o identificador do estabelecimento foi utilizado"
    },
    {
      "id" : "Organization.identifier:cnpj.assigner",
      "path" : "Organization.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Organization.identifier:cnpj.assigner.id",
      "path" : "Organization.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Organization.identifier:cnpj.assigner.extension",
      "path" : "Organization.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Organization.identifier:cnpj.assigner.reference",
      "path" : "Organization.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Organization.identifier:cnpj.assigner.type",
      "path" : "Organization.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Organization.identifier:cnpj.assigner.identifier",
      "path" : "Organization.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Organization.identifier:cnpj.assigner.display",
      "path" : "Organization.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "short" : "Indica se a Organização está ativa",
      "definition" : "Indica se a Organização está ativa"
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "Tipo da organização",
      "definition" : "Tipo da organização",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoEstabelecimentoSaude"
      }
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Nome da organização",
      "definition" : "Nome da organização",
      "min" : 1
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "short" : "Razão social da organização",
      "definition" : "Razão social da organização",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "short" : "Meio de contato",
      "definition" : "Meio de contato"
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "short" : "Endereço",
      "definition" : "Endereço",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "short" : "Referência à Organização associada (p.ex. Mantenedora)",
      "definition" : "Referência à Organização associada (p.ex. Mantenedora)",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "short" : "Contato",
      "definition" : "Contato para a organização para uma determinada finalidade"
    },
    {
      "id" : "Organization.contact.id",
      "path" : "Organization.contact.id",
      "short" : "Identificação unívoca da pessoa de contato",
      "definition" : "Identificação unívoca da pessoa de contato"
    },
    {
      "id" : "Organization.contact.extension",
      "path" : "Organization.contact.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Organization.contact.modifierExtension",
      "path" : "Organization.contact.modifierExtension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Organization.contact.purpose",
      "path" : "Organization.contact.purpose",
      "short" : "Tipo de Contato",
      "definition" : "Tipo de Contato"
    },
    {
      "id" : "Organization.contact.name",
      "path" : "Organization.contact.name",
      "short" : "Nome associado ao contato",
      "definition" : "Nome associado ao contato"
    },
    {
      "id" : "Organization.contact.telecom",
      "path" : "Organization.contact.telecom",
      "short" : "Meio de Contato",
      "definition" : "Meio de Contato"
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "short" : "Endereço do contato",
      "definition" : "Endereço do contato"
    },
    {
      "id" : "Organization.endpoint",
      "path" : "Organization.endpoint",
      "short" : "Endpoints técnicos que fornecem acesso a serviços eletrônicos operados pela organização",
      "definition" : "Endpoints técnicos que fornecem acesso a serviços eletrônicos operados pela organização"
    }]
  }
}

```
