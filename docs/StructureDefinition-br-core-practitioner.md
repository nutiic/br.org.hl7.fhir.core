# BR.GOV.SAUDE.BR-CORE.FHIR\BRCorePractitioner - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCorePractitioner**

## Resource Profile: BRCorePractitioner 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCorePractitioner |

 
O Profissional é uma pessoa que está direta ou indiretamente envolvida na prestação de cuidados de saúde ou serviços relacionados ao paciente 

### Escopo/Uso

O perfil [br-core-practitioner](StructureDefinition-br-core-practitioner.md) abrange todos os indivíduos envolvidos no processo de assistência à saúde e serviços relacionados à saúde como parte de suas responsabilidades. Os profissionais incluem (mas não estão limitados a): médicos, farmacêuticos, dentistas, enfermeiros e outros profissionais que lidam com o registro do paciente, bem como a equipe que lida com a gestão de tecnologia da informação.

O recurso Profissional representa qualquer pessoa envolvida na prestação de cuidados ou serviços a um paciente e está associado a uma Organização.

### Uso indevido

Este recurso não deve ser utilizado para representar paciente, estabelecimento ou operadora de saúde.

### Caso de uso

O profissional desempenha diferentes papeis dentro de uma ou mais organizações. Dependendo da jurisdição e costume, pode ser necessário manter um recurso Profissional específico para cada função ou ter um único Profissional com várias funções. A função pode ser limitada a um período específico.

### Identificadores

O paciente deve possuir obrigatoriamente um identificador, que pode ser o Cadastro de Pessoa Física (CPF) ou o Cartão Nacional de Saúde (CNS) conforme os modelos de informação de lançamentos.

O CPF é um identificador de pessoa física no Brasil, definido como número único e suficiente para identificação do cidadão nos bancos de dados de serviços públicos e é composto por 11 dígitos ([http://terminology.hl7.org/CodeSystem/v2-0203#TAX](http://terminology.hl7.org/CodeSystem/v2-0203#TAX)), sendo os 2 últimos dígitos os verificadores do CPF.

O CNS também é um identificador do paciente no âmbito do Sistema Único de Saúde (SUS), é composto por 15 dígitos ([https://saude.gov.br/sid/cns](https://saude.gov.br/sid/cns)), onde os 2 últimos são verificadores do CNS.

Os identificadores enviados pela RNDS não possuem o identifier.system, por este motivo estão sendo identificados pelo seu tamanho conforme abaixo:

| | |
| :--- | :--- |
| CNS | 15 caracteres |
| CPF | 11 caracteres |

Foram criadas extensões para representar os identificadores de todos os profissionais de saúde que podem assinar o prontuário do paciente, de acordo com os respectivos conselhos profissionais. Para cada um destes conselhos foi criado um NamingSystem conforme abaixo:

| | | | |
| :--- | :--- | :--- | :--- |
| Profissional | Conselho Profissional | NamingSystem | Domínio do system ID |
| Médico | Conselhos Regionais de Medicina do BrasilPractitioner.identifier:identificadorMedico.typeFixed Value:[MD](http://terminology.hl7.org/CodeSystem/v2-0203) |  | [https://terminologia.saude.gov.br/fhir/ValueSet/BRCRM](https://terminologia-br-ig.web.app/ValueSet-BRCRM) |
| Farmacêutico | Conselhos regionais de Farmácia do BrasilPractitioner.identifier:identificadorFarmaceutico.typeFixed Value:[RPH](http://terminology.hl7.org/CodeSystem/v2-0203) |  | [https://terminologia.saude.gov.br/ValueSet-BRCRF.html](https://terminologia.saude.gov.br/ValueSet-BRCRF.html) |
| Odontólogo | Conselhos regionais de Odontologia do BrasilPractitioner.identifier:identificadorOdontologo.typeFixed Value:[DDS](http://terminology.hl7.org/CodeSystem/v2-0203) |  | [https://terminologia.saude.gov.br/fhir/ValueSet/BRCRO](https://terminologia-br-ig.web.app/ValueSet-BRCRO) |
| Enfermeiro | Conselhos regionais de Enfermagem do BrasilPractitioner.identifier:identificadorEnfermeiro.typeFixed Value: RN |  | [https://terminologia.saude.gov.br/fhir/ValueSet/BRCOREN](https://terminologia-br-ig.web.app/ValueSet-BRCOREN) |
| Outros Profissionais de Saúde (Psicologia, Fisioterapia, Nutricionista, Fonoaudiologia) | Conselhos regionais de outros profissionais da saúde do BrasilPractitioner.identifier:identificadorOutrosProfissionais.typeFixed Value:[RI](http://terminology.hl7.org/CodeSystem/v2-0203) |  | [https://terminologia-br-ig.web.app/ValueSet-BROutrosProfissionais.html](https://terminologia-br-ig.web.app/ValueSet-BROutrosProfissionais.html) |

### Limites e relacionamentos

O recurso [br-core-practitioner](StructureDefinition-br-core-practitioner.md) NÃO DEVE ser utilizado para pessoas envolvidas sem uma responsabilidade formal no cuidado e saúde, tais como: pessoas cuidando de amigos, parentes ou vizinhos. Estes podem ser registrados como Contato do Paciente. Se estiverem realizando alguma ação ou sendo referenciado por outro recurso, use o recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md) para representá-los.

As principais diferenças entre um perfil [br-core-practitioner](StructureDefinition-br-core-practitioner.md) e um perfil [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md) nas situações descritas abaixo:

* Se a pessoa/animal opera em nome da organização de prestação de cuidados em vários pacientes, então será um [br-core-practitioner](StructureDefinition-br-core-practitioner.md),
* Se a pessoa/animal não está associado à organização e, em vez disso, executa tarefas especificamente para um paciente, então será um [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md),
* Uma extensão do practitioner [animalSpecies](http://hl7.org/fhir/R4/extension-practitioner-animalspecies.html) pode ser usada para indicar a espécie de um animal de serviço.

O recurso [br-core-practitioner](StructureDefinition-br-core-practitioner.md) fornece os detalhes das funções que o profissional pode exercer em quais organizações (e em quais locais e, opcionalmente, quais serviços também).

Os profissionais também são frequentemente agrupados em CareTeams independentemente de suas funções, onde o CareTeam define qual função específica que estão desempenhando dentro da equipe e pode ou não ter recursos [br-core-practitionerrole](StructureDefinition-br-core-practitionerrole.md) criados para o profissional (quer no contexto da equipe de atendimento, ou da organização que o profissional está representando).

### Elementos de dados obrigatórios e que devem estar presentes (Must Support)

**Identificadores** (se existirem identificadores de uso obrigatório ou MS estes devem ser descritos aqui, com a respectiva legislação se forem obrigatórios)

| | | | |
| :--- | :--- | :--- | :--- |
| name.use | Usos do nome. DECRETO Nº 8.727, DE 28 DE ABRIL DE 2016 (Dispõe sobre o uso do nome social e o reconhecimento da identidade de gênero de pessoas travestis e transexuais no âmbito da administração pública federal direta, autárquica e fundacional.) | 1..1 | [http://hl7.org/fhir/ValueSet/identifier-use](http://hl7.org/fhir/ValueSet/identifier-use)Para o o nome social o code deve ser ‘usual’ |
| qualification.code | Descreve a qualificação do profissional[PORTARIA Nº 458, DE 20 DE MARÇO DE 2020](https://bvsms.saude.gov.br/bvs/saudelegis/gm/2020/prt0458_20_03_2020.html#:~:text=Altera%20a%20Portaria%20de%20Consolidação,CNAE)%20nos%20sistemas%20de%20informação.)(Altera a Portaria de Consolidação nº 1/GM/MS, de 28 de setembro de 2017 e nº 2, de 28 de setembro de 2017, para dispor sobre a inclusão e o preenchimento obrigatório dos campos Classificação Brasileira de Ocupações (CBO) eClassificação Nacional de Atividades Econômicas (CNAE) nos sistemas de informação) | 1..1 | [https://terminologia.saude.gov.br/fhir/ValueSystem-BRCBO.html](https://terminologia-br-ig.web.app/ValueSystem-BRCBO.html) |

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

Este perfil pode ser referenciado por outros recursos para determinadas ações relacionadas aos profissionais. Por exemplo, este perfil faz referência ao perfil br-core-organization que indica o estabelecimento de saúde do profissional.

**Usos:**

* Refere a este Perfil: [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md), [br-core-appointment](StructureDefinition-br-core-appointment.md), [BRCoreCarePlan](StructureDefinition-br-core-careplan.md), [br-core-careteam](StructureDefinition-br-core-careteam.md)... Show 17 more, [br-core-composition](StructureDefinition-br-core-composition.md), [BRCoreCondition](StructureDefinition-br-core-condition.md), [br-core-consent](StructureDefinition-br-core-consent.md), [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [br-core-encounter](StructureDefinition-br-core-encounter.md), [BRCoreImmunization](StructureDefinition-br-core-immunization.md), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCorePatient](StructureDefinition-br-core-patient.md), [BRCorePractitionerRole](StructureDefinition-br-core-practitionerrole.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md), [BRCoreSpecimen](StructureDefinition-br-core-specimen.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-practitioner.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) 

** Resumo **

Obrigatório: 2 elementos(49 aninhado obrigatoriamente elementos)
 Fixo: 23 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Practitioner.identifier

 **Visão diferencial** 

Esta estrutura é derivada de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Practitioner](http://hl7.org/fhir/R4/practitioner.html) 

** Resumo **

Obrigatório: 2 elementos(49 aninhado obrigatoriamente elementos)
 Fixo: 23 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Practitioner.identifier

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-practitioner.csv), [Excel](StructureDefinition-br-core-practitioner.xlsx), [Schematron](StructureDefinition-br-core-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-practitioner",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
  "version" : "1.1.1",
  "name" : "BRCorePractitioner",
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
  "description" : "O Profissional é uma pessoa que está direta ou indiretamente envolvida na prestação de cuidados de saúde ou serviços relacionados ao paciente",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.id",
      "path" : "Practitioner.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Practitioner.meta",
      "path" : "Practitioner.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Practitioner.implicitRules",
      "path" : "Practitioner.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Practitioner.language",
      "path" : "Practitioner.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Practitioner.text",
      "path" : "Practitioner.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Practitioner.contained",
      "path" : "Practitioner.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Practitioner.extension",
      "path" : "Practitioner.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Practitioner.modifierExtension",
      "path" : "Practitioner.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:cns",
      "path" : "Practitioner.identifier",
      "sliceName" : "cns",
      "short" : "Identificador do profissional (CNS)",
      "definition" : "Identificador do profissional",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:cns.id",
      "path" : "Practitioner.identifier.id",
      "short" : "Id lógico do identificador do profissional",
      "definition" : "Id lógico do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cns.extension",
      "path" : "Practitioner.identifier.extension",
      "short" : "Extensões do identificador do profissional",
      "definition" : "Extensões incluídas no identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cns.use",
      "path" : "Practitioner.identifier.use",
      "short" : "Uso do identificador do profissional",
      "definition" : "usual: identificador usual do profissional. official: identificador oficial do profissional. temp: identificador temporário do profissional. secondary: identificador secundário do profissional",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Practitioner.identifier:cns.type",
      "path" : "Practitioner.identifier.type",
      "short" : "Tipo do identificador do profissional",
      "definition" : "Código que representa o tipo do identificador do profissional",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Practitioner.identifier:cns.type.id",
      "path" : "Practitioner.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do profissional",
      "definition" : "Id lógico do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cns.type.extension",
      "path" : "Practitioner.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do profissional",
      "definition" : "Extensões incluídas no tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cns.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do profissional",
      "definition" : "Codificação que representa o tipo do identificador do profissional",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:cns.type.coding.id",
      "path" : "Practitioner.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do profissional",
      "definition" : "Id lógico da codificação do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cns.type.coding.extension",
      "path" : "Practitioner.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do profissional",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cns.type.coding.system",
      "path" : "Practitioner.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do profissional",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do profissional",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Practitioner.identifier:cns.type.coding.version",
      "path" : "Practitioner.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do profissional",
      "definition" : "Versão da codificação do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cns.type.coding.code",
      "path" : "Practitioner.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador do profissional",
      "definition" : "Código que representa a codificação do tipo do identificador do profissional",
      "min" : 1,
      "fixedCode" : "HC"
    },
    {
      "id" : "Practitioner.identifier:cns.type.coding.display",
      "path" : "Practitioner.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador do profissional",
      "definition" : "Texto que representa a codificação do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cns.type.coding.userSelected",
      "path" : "Practitioner.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do profissional",
      "definition" : "Indica se a codificação do tipo do identificador do profissional foi selecionada pelo usuário"
    },
    {
      "id" : "Practitioner.identifier:cns.type.text",
      "path" : "Practitioner.identifier.type.text",
      "short" : "Texto do tipo do identificador do profissional",
      "definition" : "Texto que representa o tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cns.system",
      "path" : "Practitioner.identifier.system",
      "short" : "Sistema do identificador do profissional",
      "definition" : "Sistema que identifica o tipo do identificador do profissional",
      "min" : 1,
      "fixedUri" : "https://saude.gov.br/fhir/sid/cns"
    },
    {
      "id" : "Practitioner.identifier:cns.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Valor do identificador do profissional",
      "definition" : "Valor do identificador do profissional",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:cns.period",
      "path" : "Practitioner.identifier.period",
      "short" : "Período de uso do identificador do profissional",
      "definition" : "Período de tempo durante o qual o identificador do profissional foi utilizado"
    },
    {
      "id" : "Practitioner.identifier:cns.assigner",
      "path" : "Practitioner.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:cns.assigner.id",
      "path" : "Practitioner.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Practitioner.identifier:cns.assigner.extension",
      "path" : "Practitioner.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Practitioner.identifier:cns.assigner.reference",
      "path" : "Practitioner.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Practitioner.identifier:cns.assigner.type",
      "path" : "Practitioner.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Practitioner.identifier:cns.assigner.identifier",
      "path" : "Practitioner.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Practitioner.identifier:cns.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Practitioner.identifier:cpf",
      "path" : "Practitioner.identifier",
      "sliceName" : "cpf",
      "short" : "Identificador do profissional (CPF)",
      "definition" : "Identificador do profissional",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:cpf.id",
      "path" : "Practitioner.identifier.id",
      "short" : "Id lógico do identificador do profissional",
      "definition" : "Id lógico do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cpf.extension",
      "path" : "Practitioner.identifier.extension",
      "short" : "Extensões do identificador do profissional",
      "definition" : "Extensões incluídas no identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cpf.use",
      "path" : "Practitioner.identifier.use",
      "short" : "Uso do identificador do profissional",
      "definition" : "usual: identificador usual do profissional. official: identificador oficial do profissional. temp: identificador temporário do profissional. secondary: identificador secundário do profissional",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Practitioner.identifier:cpf.type",
      "path" : "Practitioner.identifier.type",
      "short" : "Tipo do identificador do profissional",
      "definition" : "Código que representa o tipo do identificador do profissional",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Practitioner.identifier:cpf.type.id",
      "path" : "Practitioner.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do profissional",
      "definition" : "Id lógico do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.extension",
      "path" : "Practitioner.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do profissional",
      "definition" : "Extensões incluídas no tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do profissional",
      "definition" : "Codificação que representa o tipo do identificador do profissional",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.coding.id",
      "path" : "Practitioner.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do profissional",
      "definition" : "Id lógico da codificação do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.coding.extension",
      "path" : "Practitioner.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do profissional",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.coding.system",
      "path" : "Practitioner.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do profissional",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do profissional",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.coding.version",
      "path" : "Practitioner.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do profissional",
      "definition" : "Versão da codificação do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.coding.code",
      "path" : "Practitioner.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador do profissional",
      "definition" : "Código que representa a codificação do tipo do identificador do profissional",
      "min" : 1,
      "fixedCode" : "TAX"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.coding.display",
      "path" : "Practitioner.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador do profissional",
      "definition" : "Texto que representa a codificação do tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.coding.userSelected",
      "path" : "Practitioner.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do profissional",
      "definition" : "Indica se a codificação do tipo do identificador do profissional foi selecionada pelo usuário"
    },
    {
      "id" : "Practitioner.identifier:cpf.type.text",
      "path" : "Practitioner.identifier.type.text",
      "short" : "Texto do tipo do identificador do profissional",
      "definition" : "Texto que representa o tipo do identificador do profissional"
    },
    {
      "id" : "Practitioner.identifier:cpf.system",
      "path" : "Practitioner.identifier.system",
      "short" : "Sistema do identificador do profissional",
      "definition" : "Sistema que identifica o tipo do identificador do profissional",
      "min" : 1,
      "fixedUri" : "https://saude.gov.br/fhir/sid/cpf"
    },
    {
      "id" : "Practitioner.identifier:cpf.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Valor do identificador do profissional",
      "definition" : "Valor do identificador do profissional",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:cpf.period",
      "path" : "Practitioner.identifier.period",
      "short" : "Período de uso do identificador do profissional",
      "definition" : "Período de tempo durante o qual o identificador do profissional foi utilizado"
    },
    {
      "id" : "Practitioner.identifier:cpf.assigner",
      "path" : "Practitioner.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:cpf.assigner.id",
      "path" : "Practitioner.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Practitioner.identifier:cpf.assigner.extension",
      "path" : "Practitioner.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Practitioner.identifier:cpf.assigner.reference",
      "path" : "Practitioner.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Practitioner.identifier:cpf.assigner.type",
      "path" : "Practitioner.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Practitioner.identifier:cpf.assigner.identifier",
      "path" : "Practitioner.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Practitioner.identifier:cpf.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico",
      "path" : "Practitioner.identifier",
      "sliceName" : "identificadorMedico",
      "short" : "Identificador médico",
      "definition" : "Identificador identificador médico",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.id",
      "path" : "Practitioner.identifier.id",
      "short" : "Id lógico do identificador do médico",
      "definition" : "Id lógico do identificador do médico"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.extension",
      "path" : "Practitioner.identifier.extension",
      "short" : "Extensões do identificador do médico",
      "definition" : "Extensões incluídas no identificador do médico"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.use",
      "path" : "Practitioner.identifier.use",
      "short" : "Uso do identificador do médico",
      "definition" : "usual: identificador usual do médico. official: identificador oficial do médico. temp: identificador temporário do médico. secondary: identificador secundário do médico",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type",
      "path" : "Practitioner.identifier.type",
      "short" : "Tipo do identificador do médico",
      "definition" : "Código que representa o tipo do identificador do médico",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.id",
      "path" : "Practitioner.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do médico",
      "definition" : "Id lógico do tipo do identificador do médico"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.extension",
      "path" : "Practitioner.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do médico",
      "definition" : "Extensões incluídas no tipo do identificador do médico"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do médico",
      "definition" : "Codificação que representa o tipo do identificador do médico",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.coding.id",
      "path" : "Practitioner.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do médico",
      "definition" : "Id lógico da codificação do tipo do identificador do médico"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.coding.extension",
      "path" : "Practitioner.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do médico",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do médico"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.coding.system",
      "path" : "Practitioner.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do médico",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do médico",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.coding.version",
      "path" : "Practitioner.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do médico",
      "definition" : "Versão da codificação do tipo do identificador do médico"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.coding.code",
      "path" : "Practitioner.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador do médico",
      "definition" : "Código que representa a codificação do tipo do identificador do médico",
      "min" : 1,
      "fixedCode" : "MD"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.coding.display",
      "path" : "Practitioner.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador do médico",
      "definition" : "Texto que representa a codificação do tipo do identificador do médico"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.coding.userSelected",
      "path" : "Practitioner.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do médico",
      "definition" : "Indica se a codificação do tipo do identificador do médico foi selecionada pelo usuário"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.type.text",
      "path" : "Practitioner.identifier.type.text",
      "short" : "Texto do tipo do identificador do médico",
      "definition" : "Texto que representa o tipo do identificador do médico"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.system",
      "path" : "Practitioner.identifier.system",
      "short" : "Sistema do identificador do médico",
      "definition" : "Sistema que identifica o tipo do identificador do médico",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "Sistema do identificador do médico",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCRM"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Valor do identificador do médico",
      "definition" : "Valor do identificador do médico",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.period",
      "path" : "Practitioner.identifier.period",
      "short" : "Período de uso do identificador do médico",
      "definition" : "Período de tempo durante o qual o identificador do médico foi utilizado"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.assigner",
      "path" : "Practitioner.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.assigner.id",
      "path" : "Practitioner.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.assigner.extension",
      "path" : "Practitioner.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.assigner.reference",
      "path" : "Practitioner.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.assigner.type",
      "path" : "Practitioner.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.assigner.identifier",
      "path" : "Practitioner.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Practitioner.identifier:identificadorMedico.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico",
      "path" : "Practitioner.identifier",
      "sliceName" : "identificadorFarmaceutico",
      "short" : "Identificador do farmacêutico",
      "definition" : "Identificador do farmacêutico",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.id",
      "path" : "Practitioner.identifier.id",
      "short" : "Id lógico do identificador do farmacêutico",
      "definition" : "Id lógico do identificador do farmacêutico"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.extension",
      "path" : "Practitioner.identifier.extension",
      "short" : "Extensões do identificador do farmacêutico",
      "definition" : "Extensões incluídas no identificador do farmacêutico"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.use",
      "path" : "Practitioner.identifier.use",
      "short" : "Uso do identificador do farmacêutico",
      "definition" : "usual: identificador usual do farmacêutico. official: identificador oficial do farmacêutico. temp: identificador temporário do farmacêutico. secondary: identificador secundário do farmacêutico",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type",
      "path" : "Practitioner.identifier.type",
      "short" : "Tipo do identificador do farmacêutico",
      "definition" : "Código que representa o tipo do identificador do farmacêutico",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.id",
      "path" : "Practitioner.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do farmacêutico",
      "definition" : "Id lógico do tipo do identificador do farmacêutico"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.extension",
      "path" : "Practitioner.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do farmacêutico",
      "definition" : "Extensões incluídas no tipo do identificador do farmacêutico"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do farmacêutico",
      "definition" : "Codificação que representa o tipo do identificador do farmacêutico",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.coding.id",
      "path" : "Practitioner.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do farmacêutico",
      "definition" : "Id lógico da codificação do tipo do identificador do farmacêutico"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.coding.extension",
      "path" : "Practitioner.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do farmacêutico",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do farmacêutico"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.coding.system",
      "path" : "Practitioner.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do farmacêutico",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do farmacêutico",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.coding.version",
      "path" : "Practitioner.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do farmacêutico",
      "definition" : "Versão da codificação do tipo do identificador do farmacêutico"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.coding.code",
      "path" : "Practitioner.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador do farmacêutico",
      "definition" : "Código que representa a codificação do tipo do identificador do farmacêutico",
      "min" : 1,
      "fixedCode" : "RPH"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.coding.display",
      "path" : "Practitioner.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador do farmacêutico",
      "definition" : "Texto que representa a codificação do tipo do identificador do farmacêutico"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.coding.userSelected",
      "path" : "Practitioner.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do farmacêutico",
      "definition" : "Indica se a codificação do tipo do identificador do farmacêutico foi selecionada pelo usuário"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.type.text",
      "path" : "Practitioner.identifier.type.text",
      "short" : "Texto do tipo do identificador do farmacêutico",
      "definition" : "Texto que representa o tipo do identificador do farmacêutico"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.system",
      "path" : "Practitioner.identifier.system",
      "short" : "Sistema do identificador do farmacêutico",
      "definition" : "Sistema que identifica o tipo do identificador do farmacêutico",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "Sistema do identificador do farmacêutico",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCRF"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Valor do identificador do farmacêutico",
      "definition" : "Valor do identificador do farmacêutico",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.period",
      "path" : "Practitioner.identifier.period",
      "short" : "Período de uso do identificador do farmacêutico",
      "definition" : "Período de tempo durante o qual o identificador do farmacêutico foi utilizado"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.assigner",
      "path" : "Practitioner.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.assigner.id",
      "path" : "Practitioner.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.assigner.extension",
      "path" : "Practitioner.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.assigner.reference",
      "path" : "Practitioner.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.assigner.type",
      "path" : "Practitioner.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.assigner.identifier",
      "path" : "Practitioner.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Practitioner.identifier:identificadorFarmaceutico.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo",
      "path" : "Practitioner.identifier",
      "sliceName" : "identificadorOdontologo",
      "short" : "Identificador do odontólogo",
      "definition" : "Identificador do odontólogo",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.id",
      "path" : "Practitioner.identifier.id",
      "short" : "Id lógico do identificador do odontólogo",
      "definition" : "Id lógico do identificador do odontólogo"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.extension",
      "path" : "Practitioner.identifier.extension",
      "short" : "Extensões do identificador do odontólogo",
      "definition" : "Extensões incluídas no identificador do odontólogo"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.use",
      "path" : "Practitioner.identifier.use",
      "short" : "Uso do identificador do odontólogo",
      "definition" : "usual: identificador usual do odontólogo. official: identificador oficial do odontólogo. temp: identificador temporário do odontólogo. secondary: identificador secundário do odontólogo",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type",
      "path" : "Practitioner.identifier.type",
      "short" : "Tipo do identificador do odontólogo",
      "definition" : "Código que representa o tipo do identificador do odontólogo",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.id",
      "path" : "Practitioner.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do odontólogo",
      "definition" : "Id lógico do tipo do identificador do odontólogo"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.extension",
      "path" : "Practitioner.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do odontólogo",
      "definition" : "Extensões incluídas no tipo do identificador do odontólogo"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do odontólogo",
      "definition" : "Codificação que representa o tipo do identificador do odontólogo",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.coding.id",
      "path" : "Practitioner.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do odontólogo",
      "definition" : "Id lógico da codificação do tipo do identificador do odontólogo"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.coding.extension",
      "path" : "Practitioner.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do odontólogo",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do odontólogo"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.coding.system",
      "path" : "Practitioner.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do odontólogo",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do odontólogo",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.coding.version",
      "path" : "Practitioner.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do odontólogo",
      "definition" : "Versão da codificação do tipo do identificador do odontólogo"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.coding.code",
      "path" : "Practitioner.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador do odontólogo",
      "definition" : "Código que representa a codificação do tipo do identificador do odontólogo",
      "min" : 1,
      "fixedCode" : "DDS"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.coding.display",
      "path" : "Practitioner.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador do odontólogo",
      "definition" : "Texto que representa a codificação do tipo do identificador do odontólogo"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.coding.userSelected",
      "path" : "Practitioner.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do odontólogo",
      "definition" : "Indica se a codificação do tipo do identificador do odontólogo foi selecionada pelo usuário"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.type.text",
      "path" : "Practitioner.identifier.type.text",
      "short" : "Texto do tipo do identificador do odontólogo",
      "definition" : "Texto que representa o tipo do identificador do odontólogo"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.system",
      "path" : "Practitioner.identifier.system",
      "short" : "Sistema do identificador do odontólogo",
      "definition" : "Sistema que identifica o tipo do identificador do odontólogo",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "Sistema do identificador do odontólogo",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCRO"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Valor do identificador do odontólogo",
      "definition" : "Valor do identificador do odontólogo",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.period",
      "path" : "Practitioner.identifier.period",
      "short" : "Período de uso do identificador do odontólogo",
      "definition" : "Período de tempo durante o qual o identificador do odontólogo foi utilizado"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.assigner",
      "path" : "Practitioner.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.assigner.id",
      "path" : "Practitioner.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.assigner.extension",
      "path" : "Practitioner.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.assigner.reference",
      "path" : "Practitioner.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.assigner.type",
      "path" : "Practitioner.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.assigner.identifier",
      "path" : "Practitioner.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Practitioner.identifier:identificadorOdontologo.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro",
      "path" : "Practitioner.identifier",
      "sliceName" : "identificadorEnfermeiro",
      "short" : "Identificador do enfermeiro",
      "definition" : "Identificador do enfermeiro",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.id",
      "path" : "Practitioner.identifier.id",
      "short" : "Id lógico do identificador do enfermeiro",
      "definition" : "Id lógico do identificador do enfermeiro"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.extension",
      "path" : "Practitioner.identifier.extension",
      "short" : "Extensões do identificador do enfermeiro",
      "definition" : "Extensões incluídas no identificador do enfermeiro"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.use",
      "path" : "Practitioner.identifier.use",
      "short" : "Uso do identificador do enfermeiro",
      "definition" : "usual: identificador usual do enfermeiro. official: identificador oficial do enfermeiro. temp: identificador temporário do enfermeiro. secondary: identificador secundário do enfermeiro",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type",
      "path" : "Practitioner.identifier.type",
      "short" : "Tipo do identificador do enfermeiro",
      "definition" : "Código que representa o tipo do identificador do enfermeiro",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.id",
      "path" : "Practitioner.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do enfermeiro",
      "definition" : "Id lógico do tipo do identificador do enfermeiro"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.extension",
      "path" : "Practitioner.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do enfermeiro",
      "definition" : "Extensões incluídas no tipo do identificador do enfermeiro"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do enfermeiro",
      "definition" : "Codificação que representa o tipo do identificador do enfermeiro",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.coding.id",
      "path" : "Practitioner.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do enfermeiro",
      "definition" : "Id lógico da codificação do tipo do identificador do enfermeiro"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.coding.extension",
      "path" : "Practitioner.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do enfermeiro",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do enfermeiro"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.coding.system",
      "path" : "Practitioner.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do enfermeiro",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do enfermeiro",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.coding.version",
      "path" : "Practitioner.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do enfermeiro",
      "definition" : "Versão da codificação do tipo do identificador do enfermeiro"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.coding.code",
      "path" : "Practitioner.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador do enfermeiro",
      "definition" : "Código que representa a codificação do tipo do identificador do enfermeiro",
      "min" : 1,
      "fixedCode" : "RN"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.coding.display",
      "path" : "Practitioner.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador do enfermeiro",
      "definition" : "Texto que representa a codificação do tipo do identificador do enfermeiro"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.coding.userSelected",
      "path" : "Practitioner.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do enfermeiro",
      "definition" : "Indica se a codificação do tipo do identificador do enfermeiro foi selecionada pelo usuário"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.type.text",
      "path" : "Practitioner.identifier.type.text",
      "short" : "Texto do tipo do identificador do enfermeiro",
      "definition" : "Texto que representa o tipo do identificador do enfermeiro"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.system",
      "path" : "Practitioner.identifier.system",
      "short" : "Sistema do identificador do enfermeiro",
      "definition" : "Sistema que identifica o tipo do identificador do enfermeiro",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "Sistema do identificador do enfermeiro",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCOREN"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Valor do identificador do enfermeiro",
      "definition" : "Valor do identificador do enfermeiro",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.period",
      "path" : "Practitioner.identifier.period",
      "short" : "Período de uso do identificador do enfermeiro",
      "definition" : "Período de tempo durante o qual o identificador do enfermeiro foi utilizado"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.assigner",
      "path" : "Practitioner.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.assigner.id",
      "path" : "Practitioner.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.assigner.extension",
      "path" : "Practitioner.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.assigner.reference",
      "path" : "Practitioner.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.assigner.type",
      "path" : "Practitioner.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.assigner.identifier",
      "path" : "Practitioner.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Practitioner.identifier:identificadorEnfermeiro.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais",
      "path" : "Practitioner.identifier",
      "sliceName" : "identificadorOutrosProfissionais",
      "short" : "Identificador de outros profissionais",
      "definition" : "Identificador de outros profissionais",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.id",
      "path" : "Practitioner.identifier.id",
      "short" : "Id lógico do identificador de outros profissionais",
      "definition" : "Id lógico do identificador de outros profissionais"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.extension",
      "path" : "Practitioner.identifier.extension",
      "short" : "Extensões do identificador de outros profissionais",
      "definition" : "Extensões incluídas no identificador de outros profissionais"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.use",
      "path" : "Practitioner.identifier.use",
      "short" : "Uso do identificador de outros profissionais",
      "definition" : "usual: identificador usual de outros profissionais. official: identificador oficial de outros profissionais. temp: identificador temporário de outros profissionais. secondary: identificador secundário de outros profissionais",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type",
      "path" : "Practitioner.identifier.type",
      "short" : "Tipo do identificador de outros profissionais",
      "definition" : "Código que representa o tipo do identificador de outros profissionais",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.id",
      "path" : "Practitioner.identifier.type.id",
      "short" : "Id lógico do tipo do identificador de outros profissionais",
      "definition" : "Id lógico do tipo do identificador de outros profissionais"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.extension",
      "path" : "Practitioner.identifier.type.extension",
      "short" : "Extensões do tipo do identificador de outros profissionais",
      "definition" : "Extensões incluídas no tipo do identificador de outros profissionais"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "short" : "Codificação do tipo do identificador de outros profissionais",
      "definition" : "Codificação que representa o tipo do identificador de outros profissionais",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.coding.id",
      "path" : "Practitioner.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador de outros profissionais",
      "definition" : "Id lógico da codificação do tipo do identificador de outros profissionais"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.coding.extension",
      "path" : "Practitioner.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador de outros profissionais",
      "definition" : "Extensões incluídas na codificação do tipo do identificador de outros profissionais"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.coding.system",
      "path" : "Practitioner.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador de outros profissionais",
      "definition" : "Sistema que identifica a codificação do tipo do identificador de outros profissionais",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.coding.version",
      "path" : "Practitioner.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador de outros profissionais",
      "definition" : "Versão da codificação do tipo do identificador de outros profissionais"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.coding.code",
      "path" : "Practitioner.identifier.type.coding.code",
      "short" : "Código da codificação do tipo do identificador de outros profissionais",
      "definition" : "Código que representa a codificação do tipo do identificador de outros profissionais",
      "min" : 1,
      "fixedCode" : "RI"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.coding.display",
      "path" : "Practitioner.identifier.type.coding.display",
      "short" : "Texto da codificação do tipo do identificador de outros profissionais",
      "definition" : "Texto que representa a codificação do tipo do identificador de outros profissionais"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.coding.userSelected",
      "path" : "Practitioner.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador de outros profissionais",
      "definition" : "Indica se a codificação do tipo do identificador de outros profissionais foi selecionada pelo usuário"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.type.text",
      "path" : "Practitioner.identifier.type.text",
      "short" : "Texto do tipo do identificador de outros profissionais",
      "definition" : "Texto que representa o tipo do identificador de outros profissionais"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.system",
      "path" : "Practitioner.identifier.system",
      "short" : "Sistema do identificador de outros profissionais",
      "definition" : "Sistema que identifica o tipo do identificador de outros profissionais",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "Sistema do identificador de outros profissionais",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROutrosProfissionais"
      }
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.value",
      "path" : "Practitioner.identifier.value",
      "short" : "Valor do identificador de outros profissionais",
      "definition" : "Valor do identificador de outros profissionais",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.period",
      "path" : "Practitioner.identifier.period",
      "short" : "Período de uso do identificador de outros profissionais",
      "definition" : "Período de tempo durante o qual o identificador de outros profissionais foi utilizado"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.assigner",
      "path" : "Practitioner.identifier.assigner",
      "short" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "definition" : "Referência à organização que atribuiu o identificador ao estabelecimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.assigner.id",
      "path" : "Practitioner.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.assigner.extension",
      "path" : "Practitioner.identifier.assigner.extension",
      "short" : "Extensões adicionais definidas pela implementação",
      "definition" : "Extensões adicionais definidas pela implementação"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.assigner.reference",
      "path" : "Practitioner.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.assigner.type",
      "path" : "Practitioner.identifier.assigner.type",
      "short" : "Tipo referenciado (p. ex. br-core-patient)",
      "definition" : "Tipo referenciado (p. ex. br-core-patient)"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.assigner.identifier",
      "path" : "Practitioner.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Practitioner.identifier:identificadorOutrosProfissionais.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador da organização",
      "definition" : "Nome da entidade que atribuiu o identificador da organização"
    },
    {
      "id" : "Practitioner.active",
      "path" : "Practitioner.active",
      "short" : "Indica se o registro deste profissional está ativo",
      "definition" : "Indica se o registro deste profissional está ativo",
      "min" : 1
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "short" : "Nome do profissional",
      "definition" : "Nome(s) associado(s) ao profissional"
    },
    {
      "id" : "Practitioner.name.id",
      "path" : "Practitioner.name.id",
      "short" : "Identificador único do nome do profissional",
      "definition" : "Identificador único para referenciar o nome do profissional"
    },
    {
      "id" : "Practitioner.name.extension",
      "path" : "Practitioner.name.extension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Practitioner.name.use",
      "path" : "Practitioner.name.use",
      "short" : "Usos do nome do profissional",
      "definition" : "official: nome oficial atual, conforme registrado na certidão de registro civil mais atual do profissional. maiden: nome oficial de solteiro(a), quando houve uma alteração de nome decorrente de uma união de qualquer tipo. old: nome oficial anterior, quando houve uma alteração de nome em uma certidão de registro civil ou decisão judicial decorrente de qualquer outra situação que não seja uma união. usual: nome social. temp: nome temporário, como aqueles utilizados em programas de proteção a testemunhas. anonymous: uso exclusivo para anonimização de registros de profissionais"
    },
    {
      "id" : "Practitioner.name.text",
      "path" : "Practitioner.name.text",
      "short" : "Nome do Profissional",
      "definition" : "Nome do Profissional"
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "short" : "Sobrenome do profissional",
      "definition" : "Sobrenome do profissional"
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "short" : "Nome completo do Profissional",
      "definition" : "Nome completo do Profissional"
    },
    {
      "id" : "Practitioner.name.prefix",
      "path" : "Practitioner.name.prefix",
      "short" : "Prefixo do nome",
      "definition" : "Prefixo do nome do indivíduo, quando é possível coletar esta informação desagregada"
    },
    {
      "id" : "Practitioner.name.suffix",
      "path" : "Practitioner.name.suffix",
      "short" : "Sufixo do nome",
      "definition" : "Sufixo do nome do indivíduo, quando é possível coletar esta informação desagregada"
    },
    {
      "id" : "Practitioner.name.period",
      "path" : "Practitioner.name.period",
      "short" : "Período de uso do nome",
      "definition" : "Período de tempo durante o qual o nome foi utilizado pelo indivíduo"
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "short" : "Contatos do profissional",
      "definition" : "nformações do(s) meio(s) de contato com o profissional. Não devem ser informados meios de contato pessoais, apenas profissionais"
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "short" : "Endereços do profissional",
      "definition" : "Dados do(s) endereço(s) onde o profissional pode ser localizado. Não devem ser informados endereços pessoais, apenas profissionais"
    },
    {
      "id" : "Practitioner.gender",
      "path" : "Practitioner.gender",
      "short" : "Sexo",
      "definition" : "male: masculino. female: feminino. unknown: ignorado"
    },
    {
      "id" : "Practitioner.birthDate",
      "path" : "Practitioner.birthDate",
      "short" : "Data de nascimento",
      "definition" : "Data de nascimento do profissional"
    },
    {
      "id" : "Practitioner.photo",
      "path" : "Practitioner.photo",
      "short" : "Fotografia do profissional"
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "short" : "Qualificações do profissional",
      "definition" : "A(s) qualificação(ões), conforme a formação, certificações ou acreditações que o profissional possui",
      "max" : "1"
    },
    {
      "id" : "Practitioner.qualification.id",
      "path" : "Practitioner.qualification.id",
      "short" : "Identificador único da qualificação do profissional",
      "definition" : "Identificador único para referenciar a qualificação do profissional"
    },
    {
      "id" : "Practitioner.qualification.extension",
      "path" : "Practitioner.qualification.extension",
      "short" : " Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : " Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Practitioner.qualification.identifier",
      "path" : "Practitioner.qualification.identifier",
      "short" : "Identificador da qualificação do profissional",
      "definition" : "Identificador da qualificação do profissional"
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "short" : "Código da qualificação do profissional",
      "definition" : "Código da qualificação do profissional",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "Practitioner.qualification.code.extension",
      "path" : "Practitioner.qualification.code.extension",
      "short" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Practitioner.qualification.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "short" : "Codificação da qualificação do profissional",
      "definition" : "Codificação da qualificação do profissional"
    },
    {
      "id" : "Practitioner.qualification.code.coding.system",
      "path" : "Practitioner.qualification.code.coding.system",
      "short" : "Sistema de codificação da qualificação do profissional",
      "definition" : "Sistema de codificação da qualificação do profissional"
    },
    {
      "id" : "Practitioner.qualification.code.coding.version",
      "path" : "Practitioner.qualification.code.coding.version",
      "short" : "Versão do sistema de codificação da qualificação do profissional",
      "definition" : "Versão do sistema de codificação da qualificação do profissional"
    },
    {
      "id" : "Practitioner.qualification.code.coding.code",
      "path" : "Practitioner.qualification.code.coding.code",
      "short" : "Código da qualificação do profissional",
      "definition" : "Código da qualificação do profissional"
    },
    {
      "id" : "Practitioner.qualification.code.coding.userSelected",
      "path" : "Practitioner.qualification.code.coding.userSelected",
      "short" : "Se este código foi escolhido diretamente pelo usuário",
      "definition" : "Se este código foi escolhido diretamente pelo usuário"
    },
    {
      "id" : "Practitioner.qualification.period",
      "path" : "Practitioner.qualification.period",
      "short" : "Período de validade da qualificação do profissional",
      "definition" : "Período de validade da qualificação do profissional"
    },
    {
      "id" : "Practitioner.qualification.issuer",
      "path" : "Practitioner.qualification.issuer",
      "short" : "Emissor da qualificação do profissional",
      "definition" : "Emissor da qualificação do profissional",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Practitioner.communication",
      "path" : "Practitioner.communication",
      "short" : "Idiomas do profissional",
      "definition" : "Idiomas do profissional"
    }]
  }
}

```
