# BR.GOV.SAUDE.BR-CORE.FHIR\BRCorePatient - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCorePatient**

## Resource Profile: BRCorePatient 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCorePatient |

 
Este perfil representa o perfil [br-core-patient](StructureDefinition-br-core-patient.md) com todas as informações demográficas e administrativas necessárias para descrever um paciente no Brasil, com as respectivas legislações dos elementos e domínios obrigatórios conforme abaixo. O perfil [br-core-patient](StructureDefinition-br-core-patient.md) herda do recurso FHIR R4 [Patient](https://hl7.org/fhir/R4B/patient.html) para definições de escopo e uso. Este perfil define expectativas mínimas para o recurso [br-core-patient](StructureDefinition-br-core-patient.md) registrar, pesquisar e buscar dados demográficos básicos e outras informações administrativas sobre um paciente individual. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes e restringe como os elementos são usados. 
Para contemplar uma descrição do paciente com maior equidade, conforme recomendações da portaria GM/MS Nº 230, de 7 de março de 2023, foram adicionados atributos adicionais para expressar o sexo do paciente, além do sexo administrativo: sexo ao nascer descritos no ValueSet [BRSexoNascimento](https://terminologia.saude.gov.br/fhir/ValueSet/BRSexoNascimento) e identidade de gênero descrita no ValueSet [BRIdentidadeGenero](https://terminologia.saude.gov.br/fhir/ValueSet/BRIdentidadeGenero). Com relação a orientação sexual, este é um dado que pode mudar durante a vida do paciente, portanto, recomenda-se que ele seja coletado em cada evento assistencial 

### Exemplos de cenários de uso:

* Consulta por informações demográficas do paciente usando o identificador CPF.

### Elementos de dados obrigatórios e que devem estar presentes (must support)

Os seguintes elementos de dados devem estar sempre presentes (definição FHIR [mandatory](https://build.fhir.org/ig/HL7/US-Core/must-support.html)) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição FHIR [must support](https://build.fhir.org/ig/HL7/US-Core/must-support.html)).

### Identificadores

Cada paciente deve ter obrigatoriamente um identificador, conforme as extensões abaixo:

| | | | |
| :--- | :--- | :--- | :--- |
| Identifier:cpf | O CPF é um identificador de pessoa física no Brasil, definido como número único e suficiente para identificação do cidadão nos bancos de dados de serviços públicos e é composto por 11 dígitos, sendo os 2 últimos dígitos os verificadores do CPF. Todo o paciente deve possuir obrigatoriamente um identificador, que deve ser o Cadastro de Pessoa Física (CPF) conforme a[LEI Nº 14.534, DE 11 DE JANEIRO DE 2023](http://legislacao.planalto.gov.br/legisla/legislacao.nsf/Viw_Identificacao/lei%2014.534-2023?OpenDocument). | 0..1 | [http://terminology.hl7.org/CodeSystem/v2-0203](http://terminology.hl7.org/CodeSystem/v2-0203)fixo em ‘TAX’ |
| Identifier:cns | O CNS também é um identificador do paciente no âmbito do Sistema Único de Saúde (SUS), é composto por 15 dígitos onde os 2 últimos são verificadores do CNS. | 0..1 | [http://terminology.hl7.org/CodeSystem/v2-0203](http://terminology.hl7.org/CodeSystem/v2-0203)fixo em ‘HC’ |
| Identifier:registroEstrangeiro | Registro Nacional de Estrangeiros (RNE) é um documento que atesta a identidade de indivíduos estrangeiros com residência temporária ou permanente no Brasil. A Carteira de Registro Nacional Migratório (CRNM) está substituindo, aos poucos, o antigo RNE (Registro Nacional de Estrangeiro). A mudança veio após a Lei de Migração (Lei nº 13.445, de 24 de maio de 2017). O modelo atual foi definido pela Portaria nº 11.264, de 24 de janeiro de 2020. Neste perfil foi criada uma extensão para representar o documento RNE – Registro Nacional de Estrangeiro e foi criado um NamingSystem -[https://saude.gov.br/sid/rne](https://saude.gov.br/sid/rne). | 0..1 | [https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoIdentificador](https://terminologia-br-ig.web.app/ValueSet-BRTipoIdentificador)fixo em ‘RNE’ |
| Identifier:passaporte | Passaporte é um documento oficial de viagem emitido por um governo que contém a identidade de uma pessoa para viagens internacionais. Uma pessoa com passaporte pode viajar de e para países estrangeiros com mais facilidade e ter acesso à assistência consular. Um passaporte certifica a identidade pessoal e a nacionalidade do seu titular. | 0..1 | [http://terminology.hl7.org/CodeSystem/v2-0203](http://terminology.hl7.org/CodeSystem/v2-0203)fixo em ‘PPN’ |

## Extensões adicionais do recurso br-core-patient 

| | | | |
| :--- | :--- | :--- | :--- |
| localNascimento | Informa no datatype Address o local de nascimento do paciente. Pode ser informado o endereço completo ou apenas, cidade e país ou apenas país. | 0..1 |  |
| raca | Informa a raça do paciente – informação obrigatória conforme[Portaria nº 344 de 1º de fevereiro de 2017](http://pesquisa.in.gov.br/imprensa/jsp/visualiza/index.jsp?jornal=1&pagina=62&data=02/02/2017). | 1..1 | [https://terminologia.saude.gov.br/fhir/CodeSystem/BRRacaCor](https://terminologia-br-ig.web.app/CodeSystem-BRRacaCor.html) |
| povoIndigena | Informa a etnia indígena conforme Portaria Nº 508, de 28 de setembro de 2010 e Portaria Nº 719, de 28 de dezembro de 2007. NT 7/2023 CGCOIM/SESAI. | 0..1 | [https://terminologia.saude.gov.br/fhir/ValueSet/BREtniaIndigena](https://terminologia-br-ig.web.app/ValueSet-BREtniaIndigena) |
| povoTradicional | Povos e comunidades tradicionais são grupos culturalmente diferenciados e que se reconhecem como tais, que possuem formas próprias de organização social, que ocupam e usam territórios e recursos naturais como condição para sua reprodução cultural, social, religiosa, ancestral e econômica, utilizando conhecimentos, inovações e práticas gerados e transmitidos pela tradição (inciso I Art. 3º Decreto 6.040 / 2007).[Portaria GM/MS Nº 3.396, DE 11 de dezembro de 2020](https://www.in.gov.br/en/web/dou/-/portaria-gm/ms-n-3.396-de-11-de-dezembro-de-2020-294083290). | 0..1 | [https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoTradicional](https://terminologia-br-ig.web.app/ValueSet-BRPopulacaoTradicional) |
| povoItinerante | População em situação de rua, ciganos, circenses, andarilhos, acampados, assentados, etc ou mesmo trabalhadores da área adstrita. Portaria Nº 2.436, de 21 de setembro de 2017. | 0..1 | |
| sexoNascimento | Sexo do nascimento do paciente. | 0..1 | [https://terminologia.saude.gov.br/fhir/ValueSet/BRSexoNascimento](https://terminologia-br-ig.web.app/ValueSet-BRSexoNascimento) |
| identidadeGenero | Consiste no**modo como o indivíduo se identifica com o seu gênero. Em suma, representa como a pessoa se reconhece: homem, mulher, ambos ou outros gêneros.**O que determina a identidade de gênero é a maneira como a pessoa se sente e se percebe, assim como a forma que esta deseja ser reconhecida pelas outras pessoas. | 0..1 | [https://terminologia.saude.gov.br/fhir/ValueSet/BRIdentidadeGenero](https://terminologia-br-ig.web.app/ValueSet-BRIdentidadeGenero) |

##  Orientações para implementação 

O endereço do paciente será representado pelo tipo de dados Address do FHIR R4. Observar que:

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| use | Propósito deste endereço | 0..1 | code | [https://terminologia.saude.gov.br/#/orgs/HL7/collections/address-use/](https://terminologia.saude.gov.br/#/orgs/HL7/collections/address-use/) |
| type | Tipo de endereço | 0..1 | code | [https://terminologia.saude.gov.br/#/orgs/HL7/collections/address-type/](https://terminologia.saude.gov.br/#/orgs/HL7/collections/address-type/) |
| text | Representação em texto do endereço | 0..1 | string | Exemplo: Av Riachuelo, 230 apto 100 – Porto Alegre, RS -9430-060, Brasil |
| line | Nome da rua, número, cidade, estado, cep etc. Esta ordem de elementos repetidos: A ordem em que as linhas devem aparecer em uma etiqueta de endereço | 0..1 | string |  |
| city | Nome da cidade | 0..1 | string | Colocar o texto que representa o nome da cidade. NÃO COLOCAR CÓDIGO IBGE DA CIDADE. |
| state | Nome do estado | 0..1 | string | Colocar a UF do endereço do paciente com duas letras. Utilizar os códigos das UF conforme representados no atributo UF do[https://terminologia.saude.gov.br/#/orgs/IBGE/sources/IBGE_uf_display/](https://terminologia.saude.gov.br/#/orgs/IBGE/sources/IBGE_uf_display/)para cada um dos estados quando o endereço for no Brasil. |
| postalCode | CEP do endereço | 0..1 | string |  |
| country | Nome do país | 0..1 | string | Utilizar[https://terminologia.saude.gov.br/#/orgs/ISO/sources/iso3166/](https://terminologia.saude.gov.br/#/orgs/ISO/sources/iso3166/) |

**Usos:**

* Refere a este Perfil: [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md), [br-core-appointment](StructureDefinition-br-core-appointment.md), [BRCoreCarePlan](StructureDefinition-br-core-careplan.md), [br-core-careteam](StructureDefinition-br-core-careteam.md)... Show 17 more, [br-core-composition](StructureDefinition-br-core-composition.md), [BRCoreCondition](StructureDefinition-br-core-condition.md), [br-core-consent](StructureDefinition-br-core-consent.md), [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [br-core-encounter](StructureDefinition-br-core-encounter.md), [BRCoreImmunization](StructureDefinition-br-core-immunization.md), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCorePatient](StructureDefinition-br-core-patient.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [BRCoreRelatedPerson](StructureDefinition-br-core-relatedperson.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md), [BRCoreSpecimen](StructureDefinition-br-core-specimen.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-patient.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Patient](http://hl7.org/fhir/R4/patient.html) 

#### Terminologia Ligações (Diferencial)

#### Restrições

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Patient](http://hl7.org/fhir/R4/patient.html) 

** Resumo **

Obrigatório: 8 elementos(20 aninhado obrigatoriamente elementos)
 Fixo: 16 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)

**Extensões**

Esta estrutura refere-se a estas extensões:

* [http://hl7.org/fhir/StructureDefinition/patient-birthPlace](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html)
* [https://ips.saude.gov.br/fhir/StructureDefinition/identidade-genero-br-ips](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-identidade-genero-br-ips.html)
* [https://ips.saude.gov.br/fhir/StructureDefinition/raca-br-ips](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-raca-br-ips.html)
* [https://ips.saude.gov.br/fhir/StructureDefinition/povo-indigena-br-ips](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-povo-indigena-br-ips.html)
* [https://ips.saude.gov.br/fhir/StructureDefinition/sexo-nascimento-br-ips](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-sexo-nascimento-br-ips.html)
* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-populacaotradicional](StructureDefinition-br-core-populacaotradicional.md)
* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-povoitinerante](StructureDefinition-br-core-povoitinerante.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Patient.identifier
* The element 1 is sliced based on the value of Patient.deceased[x]
* The element 1 is sliced based on the value of Patient.multipleBirth[x]

 **Visão diferencial** 

Esta estrutura é derivada de [Patient](http://hl7.org/fhir/R4/patient.html) 

#### Terminologia Ligações (Diferencial)

#### Restrições

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Patient](http://hl7.org/fhir/R4/patient.html) 

** Resumo **

Obrigatório: 8 elementos(20 aninhado obrigatoriamente elementos)
 Fixo: 16 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)

**Extensões**

Esta estrutura refere-se a estas extensões:

* [http://hl7.org/fhir/StructureDefinition/patient-birthPlace](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html)
* [https://ips.saude.gov.br/fhir/StructureDefinition/identidade-genero-br-ips](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-identidade-genero-br-ips.html)
* [https://ips.saude.gov.br/fhir/StructureDefinition/raca-br-ips](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-raca-br-ips.html)
* [https://ips.saude.gov.br/fhir/StructureDefinition/povo-indigena-br-ips](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-povo-indigena-br-ips.html)
* [https://ips.saude.gov.br/fhir/StructureDefinition/sexo-nascimento-br-ips](https://ips.saude.gov.br/fhir/v1.0.0/StructureDefinition-sexo-nascimento-br-ips.html)
* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-populacaotradicional](StructureDefinition-br-core-populacaotradicional.md)
* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-povoitinerante](StructureDefinition-br-core-povoitinerante.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Patient.identifier
* The element 1 is sliced based on the value of Patient.deceased[x]
* The element 1 is sliced based on the value of Patient.multipleBirth[x]

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-patient.csv), [Excel](StructureDefinition-br-core-patient.xlsx), [Schematron](StructureDefinition-br-core-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-patient",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
  "version" : "1.1.1",
  "name" : "BRCorePatient",
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
  "description" : "Este perfil representa o perfil [br-core-patient](StructureDefinition-br-core-patient.html) com todas as informações demográficas e administrativas necessárias para descrever um paciente no Brasil, com as respectivas legislações dos elementos e domínios obrigatórios conforme abaixo. O perfil [br-core-patient](StructureDefinition-br-core-patient.html) herda do recurso FHIR R4 [Patient](https://hl7.org/fhir/R4B/patient.html) para definições de escopo e uso. Este perfil define expectativas mínimas para o recurso [br-core-patient](StructureDefinition-br-core-patient.html) registrar, pesquisar e buscar dados demográficos básicos e outras informações administrativas sobre um paciente individual. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes e restringe como os elementos são usados.  \r\n\r\nPara contemplar uma descrição do paciente com maior equidade, conforme recomendações da portaria GM/MS Nº 230, de 7 de março de 2023, foram adicionados atributos adicionais para expressar o sexo do paciente, além do sexo administrativo: sexo ao nascer descritos no ValueSet [BRSexoNascimento](https://terminologia.saude.gov.br/fhir/ValueSet/BRSexoNascimento) e identidade de gênero descrita no ValueSet [BRIdentidadeGenero](https://terminologia.saude.gov.br/fhir/ValueSet/BRIdentidadeGenero). Com relação a orientação sexual, este é um dado que pode mudar durante a vida do paciente, portanto, recomenda-se que ele seja coletado em cada evento assistencial",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.id",
      "path" : "Patient.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Patient.meta",
      "path" : "Patient.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Patient.implicitRules",
      "path" : "Patient.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Patient.language",
      "path" : "Patient.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Patient.text",
      "path" : "Patient.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Patient.contained",
      "path" : "Patient.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "definition" : "Extensões adicionais que não fazem parte do modelo base",
      "min" : 1
    },
    {
      "id" : "Patient.extension:localNascimento",
      "path" : "Patient.extension",
      "sliceName" : "localNascimento",
      "short" : "Local de nascimento do paciente",
      "definition" : "Local de nascimento do paciente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace"]
      }]
    },
    {
      "id" : "Patient.extension:identidadeGenero",
      "path" : "Patient.extension",
      "sliceName" : "identidadeGenero",
      "short" : "Identidade de gênero do paciente",
      "definition" : "Identidade de gênero do paciente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://ips.saude.gov.br/fhir/StructureDefinition/identidade-genero-br-ips"]
      }]
    },
    {
      "id" : "Patient.extension:raca",
      "path" : "Patient.extension",
      "sliceName" : "raca",
      "short" : "Raça do paciente",
      "definition" : "Raça do paciente",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://ips.saude.gov.br/fhir/StructureDefinition/raca-br-ips"]
      }]
    },
    {
      "id" : "Patient.extension:povoIndigena",
      "path" : "Patient.extension",
      "sliceName" : "povoIndigena",
      "short" : "Etnia indígena do paciente",
      "definition" : "Etnia indígena do paciente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://ips.saude.gov.br/fhir/StructureDefinition/povo-indigena-br-ips"]
      }]
    },
    {
      "id" : "Patient.extension:sexoNascimento",
      "path" : "Patient.extension",
      "sliceName" : "sexoNascimento",
      "short" : "Sexo do nascimento do paciente",
      "definition" : "Sexo do nascimento do paciente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://ips.saude.gov.br/fhir/StructureDefinition/sexo-nascimento-br-ips"]
      }]
    },
    {
      "id" : "Patient.extension:povoTradicional",
      "path" : "Patient.extension",
      "sliceName" : "povoTradicional",
      "short" : "Extensão de população tradicional",
      "definition" : "Extensão de população tradicional",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-populacaotradicional"]
      }]
    },
    {
      "id" : "Patient.extension:povoItinerante",
      "path" : "Patient.extension",
      "sliceName" : "povoItinerante",
      "short" : "Extensão de povo intinerante",
      "definition" : "Extensão de povo intinerante",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-povoitinerante"]
      }]
    },
    {
      "id" : "Patient.modifierExtension",
      "path" : "Patient.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Identificadores nacionais do paciente",
        "rules" : "open"
      },
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:cns",
      "path" : "Patient.identifier",
      "sliceName" : "cns",
      "short" : "Identificador do paciente",
      "definition" : "Identificador do paciente",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:cns.id",
      "path" : "Patient.identifier.id",
      "short" : "Id lógico do identificador do paciente",
      "definition" : "Id lógico do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cns.extension",
      "path" : "Patient.identifier.extension",
      "short" : "Extensões do identificador do paciente",
      "definition" : "Extensões incluídas no identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cns.use",
      "path" : "Patient.identifier.use",
      "short" : "Uso do identificador do paciente",
      "definition" : "usual: identificador usual do paciente. official: identificador oficial do paciente. temp: identificador temporário do paciente. secondary: identificador secundário do paciente",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Patient.identifier:cns.type",
      "path" : "Patient.identifier.type",
      "short" : "Tipo do identificador do paciente",
      "definition" : "Código que representa o tipo do identificador do paciente",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Patient.identifier:cns.type.id",
      "path" : "Patient.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do paciente",
      "definition" : "Id lógico do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cns.type.extension",
      "path" : "Patient.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do paciente",
      "definition" : "Extensões incluídas no tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cns.type.coding",
      "path" : "Patient.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do paciente",
      "definition" : "Codificação que representa o tipo do identificador do paciente",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:cns.type.coding.id",
      "path" : "Patient.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do paciente",
      "definition" : "Id lógico da codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cns.type.coding.extension",
      "path" : "Patient.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do paciente",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cns.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do paciente",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do paciente",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:cns.type.coding.version",
      "path" : "Patient.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do paciente",
      "definition" : "Versão da codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cns.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "short" : "Tipo do identificador do paciente",
      "definition" : "Tipo do identificador do paciente",
      "min" : 1,
      "fixedCode" : "HC"
    },
    {
      "id" : "Patient.identifier:cns.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "short" : "Display do tipo do identificador do paciente",
      "definition" : "Display do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cns.type.coding.userSelected",
      "path" : "Patient.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do paciente",
      "definition" : "Indica se a codificação do tipo do identificador do paciente foi selecionada pelo usuário"
    },
    {
      "id" : "Patient.identifier:cns.type.text",
      "path" : "Patient.identifier.type.text",
      "short" : "Texto do tipo do identificador do paciente",
      "definition" : "Texto que representa o tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cns.system",
      "path" : "Patient.identifier.system",
      "short" : "Sistema do identificador do paciente",
      "definition" : "Sistema que identifica o tipo do identificador do paciente",
      "min" : 1,
      "fixedUri" : "https://saude.gov.br/fhir/sid/cns"
    },
    {
      "id" : "Patient.identifier:cns.value",
      "path" : "Patient.identifier.value",
      "short" : "Valor do identificador do paciente",
      "definition" : "Valor do identificador do paciente",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:cns.period",
      "path" : "Patient.identifier.period",
      "short" : "Período de uso do identificador do paciente",
      "definition" : "Período de tempo durante o qual o identificador do paciente foi utilizado"
    },
    {
      "id" : "Patient.identifier:cns.assigner",
      "path" : "Patient.identifier.assigner",
      "short" : "Entidade que atribuiu o identificador do paciente",
      "definition" : "Entidade que atribuiu o identificador do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Patient.identifier:cns.assigner.id",
      "path" : "Patient.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Patient.identifier:cns.assigner.extension",
      "path" : "Patient.identifier.assigner.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Patient.identifier:cns.assigner.reference",
      "path" : "Patient.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Patient.identifier:cns.assigner.type",
      "path" : "Patient.identifier.assigner.type",
      "short" : "Tipo referenciado (por exemplo: Patient)",
      "definition" : "Tipo referenciado (por exemplo: Patient)"
    },
    {
      "id" : "Patient.identifier:cns.assigner.identifier",
      "path" : "Patient.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Patient.identifier:cns.assigner.display",
      "path" : "Patient.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador do paciente",
      "definition" : "Nome da entidade que atribuiu o identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf",
      "path" : "Patient.identifier",
      "sliceName" : "cpf",
      "short" : "Identificador do paciente",
      "definition" : "Identificador do paciente",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:cpf.id",
      "path" : "Patient.identifier.id",
      "short" : "Id lógico do identificador do paciente",
      "definition" : "Id lógico do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf.extension",
      "path" : "Patient.identifier.extension",
      "short" : "Extensões do identificador do paciente",
      "definition" : "Extensões incluídas no identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf.use",
      "path" : "Patient.identifier.use",
      "short" : "Uso do identificador do paciente",
      "definition" : "usual: identificador usual do paciente. official: identificador oficial do paciente. temp: identificador temporário do paciente. secondary: identificador secundário do paciente",
      "min" : 1,
      "fixedCode" : "official"
    },
    {
      "id" : "Patient.identifier:cpf.type",
      "path" : "Patient.identifier.type",
      "short" : "Tipo do identificador do paciente",
      "definition" : "Código que representa o tipo do identificador do paciente",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Patient.identifier:cpf.type.id",
      "path" : "Patient.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do paciente",
      "definition" : "Id lógico do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf.type.extension",
      "path" : "Patient.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do paciente",
      "definition" : "Extensões incluídas no tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf.type.coding",
      "path" : "Patient.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do paciente",
      "definition" : "Codificação que representa o tipo do identificador do paciente",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:cpf.type.coding.id",
      "path" : "Patient.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do paciente",
      "definition" : "Id lógico da codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf.type.coding.extension",
      "path" : "Patient.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do paciente",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do paciente",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do paciente",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:cpf.type.coding.version",
      "path" : "Patient.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do paciente",
      "definition" : "Versão da codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "short" : "Tipo do identificador do paciente",
      "definition" : "Tipo do identificador do paciente",
      "min" : 1,
      "fixedCode" : "TAX"
    },
    {
      "id" : "Patient.identifier:cpf.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "short" : "Display do tipo do identificador do paciente",
      "definition" : "Display do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf.type.coding.userSelected",
      "path" : "Patient.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do paciente",
      "definition" : "Indica se a codificação do tipo do identificador do paciente foi selecionada pelo usuário"
    },
    {
      "id" : "Patient.identifier:cpf.type.text",
      "path" : "Patient.identifier.type.text",
      "short" : "Texto do tipo do identificador do paciente",
      "definition" : "Texto que representa o tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:cpf.system",
      "path" : "Patient.identifier.system",
      "short" : "Sistema do identificador do paciente",
      "definition" : "Sistema que identifica o tipo do identificador do paciente",
      "min" : 1,
      "fixedUri" : "https://saude.gov.br/fhir/sid/cpf"
    },
    {
      "id" : "Patient.identifier:cpf.value",
      "path" : "Patient.identifier.value",
      "short" : "Valor do identificador do paciente",
      "definition" : "Valor do identificador do paciente",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:cpf.period",
      "path" : "Patient.identifier.period",
      "short" : "Período de uso do identificador do paciente",
      "definition" : "Período de tempo durante o qual o identificador do paciente foi utilizado"
    },
    {
      "id" : "Patient.identifier:cpf.assigner",
      "path" : "Patient.identifier.assigner",
      "short" : "Entidade que atribuiu o identificador do paciente",
      "definition" : "Entidade que atribuiu o identificador do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Patient.identifier:cpf.assigner.id",
      "path" : "Patient.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Patient.identifier:cpf.assigner.extension",
      "path" : "Patient.identifier.assigner.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Patient.identifier:cpf.assigner.reference",
      "path" : "Patient.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Patient.identifier:cpf.assigner.type",
      "path" : "Patient.identifier.assigner.type",
      "short" : "Tipo referenciado (por exemplo: Patient)",
      "definition" : "Tipo referenciado (por exemplo: Patient)"
    },
    {
      "id" : "Patient.identifier:cpf.assigner.identifier",
      "path" : "Patient.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Patient.identifier:cpf.assigner.display",
      "path" : "Patient.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador do paciente",
      "definition" : "Nome da entidade que atribuiu o identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro",
      "path" : "Patient.identifier",
      "sliceName" : "registroEstrangeiro",
      "short" : "Identificador do paciente",
      "definition" : "Identificador do paciente",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.id",
      "path" : "Patient.identifier.id",
      "short" : "Id lógico do identificador do paciente",
      "definition" : "Id lógico do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.extension",
      "path" : "Patient.identifier.extension",
      "short" : "Extensões do identificador do paciente",
      "definition" : "Extensões incluídas no identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.use",
      "path" : "Patient.identifier.use",
      "short" : "Uso do identificador do paciente",
      "definition" : "usual: identificador usual do paciente. official: identificador oficial do paciente. temp: identificador temporário do paciente. secondary: identificador secundário do paciente",
      "fixedCode" : "official"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type",
      "path" : "Patient.identifier.type",
      "short" : "Tipo do identificador do paciente",
      "definition" : "Código que representa o tipo do identificador do paciente",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.id",
      "path" : "Patient.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do paciente",
      "definition" : "Id lógico do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.extension",
      "path" : "Patient.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do paciente",
      "definition" : "Extensões incluídas no tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.coding",
      "path" : "Patient.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do paciente",
      "definition" : "Codificação que representa o tipo do identificador do paciente",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.coding.id",
      "path" : "Patient.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do paciente",
      "definition" : "Id lógico da codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.coding.extension",
      "path" : "Patient.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do paciente",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do paciente",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do paciente",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.coding.version",
      "path" : "Patient.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do paciente",
      "definition" : "Versão da codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "short" : "Tipo do identificador do paciente",
      "definition" : "Tipo do identificador do paciente",
      "min" : 1,
      "fixedCode" : "RNE"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "short" : "Display do tipo do identificador do paciente",
      "definition" : "Display do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.coding.userSelected",
      "path" : "Patient.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do paciente",
      "definition" : "Indica se a codificação do tipo do identificador do paciente foi selecionada pelo usuário"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.type.text",
      "path" : "Patient.identifier.type.text",
      "short" : "Texto do tipo do identificador do paciente",
      "definition" : "Texto que representa o tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.system",
      "path" : "Patient.identifier.system",
      "short" : "Sistema do identificador do paciente",
      "definition" : "Sistema que identifica o tipo do identificador do paciente",
      "min" : 1,
      "fixedUri" : "https://saude.gov.br/fhir/sid/rne"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.value",
      "path" : "Patient.identifier.value",
      "short" : "Valor do identificador do paciente",
      "definition" : "Valor do identificador do paciente",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.period",
      "path" : "Patient.identifier.period",
      "short" : "Período de uso do identificador do paciente",
      "definition" : "Período de tempo durante o qual o identificador do paciente foi utilizado"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.assigner",
      "path" : "Patient.identifier.assigner",
      "short" : "Entidade que atribuiu o identificador do paciente",
      "definition" : "Entidade que atribuiu o identificador do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.assigner.id",
      "path" : "Patient.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.assigner.extension",
      "path" : "Patient.identifier.assigner.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.assigner.reference",
      "path" : "Patient.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.assigner.type",
      "path" : "Patient.identifier.assigner.type",
      "short" : "Tipo referenciado (por exemplo: Patient)",
      "definition" : "Tipo referenciado (por exemplo: Patient)"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.assigner.identifier",
      "path" : "Patient.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Patient.identifier:registroEstrangeiro.assigner.display",
      "path" : "Patient.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador do paciente",
      "definition" : "Nome da entidade que atribuiu o identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte",
      "path" : "Patient.identifier",
      "sliceName" : "passaporte",
      "short" : "Identificador do paciente",
      "definition" : "Identificador do paciente",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:passaporte.id",
      "path" : "Patient.identifier.id",
      "short" : "Id lógico do identificador do paciente",
      "definition" : "Id lógico do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte.extension",
      "path" : "Patient.identifier.extension",
      "short" : "Extensões do identificador do paciente",
      "definition" : "Extensões incluídas no identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte.use",
      "path" : "Patient.identifier.use",
      "short" : "Uso do identificador do paciente",
      "definition" : "usual: identificador usual do paciente. official: identificador oficial do paciente. temp: identificador temporário do paciente. secondary: identificador secundário do paciente",
      "fixedCode" : "official"
    },
    {
      "id" : "Patient.identifier:passaporte.type",
      "path" : "Patient.identifier.type",
      "short" : "Tipo do identificador do paciente",
      "definition" : "Código que representa o tipo do identificador do paciente",
      "binding" : {
        "strength" : "required",
        "description" : "Tipo do identificador do paciente",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo"
      }
    },
    {
      "id" : "Patient.identifier:passaporte.type.id",
      "path" : "Patient.identifier.type.id",
      "short" : "Id lógico do tipo do identificador do paciente",
      "definition" : "Id lógico do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte.type.extension",
      "path" : "Patient.identifier.type.extension",
      "short" : "Extensões do tipo do identificador do paciente",
      "definition" : "Extensões incluídas no tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte.type.coding",
      "path" : "Patient.identifier.type.coding",
      "short" : "Codificação do tipo do identificador do paciente",
      "definition" : "Codificação que representa o tipo do identificador do paciente",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:passaporte.type.coding.id",
      "path" : "Patient.identifier.type.coding.id",
      "short" : "Id lógico da codificação do tipo do identificador do paciente",
      "definition" : "Id lógico da codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte.type.coding.extension",
      "path" : "Patient.identifier.type.coding.extension",
      "short" : "Extensões da codificação do tipo do identificador do paciente",
      "definition" : "Extensões incluídas na codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "short" : "Sistema da codificação do tipo do identificador do paciente",
      "definition" : "Sistema que identifica a codificação do tipo do identificador do paciente",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:passaporte.type.coding.version",
      "path" : "Patient.identifier.type.coding.version",
      "short" : "Versão da codificação do tipo do identificador do paciente",
      "definition" : "Versão da codificação do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "short" : "Tipo do identificador do paciente",
      "definition" : "Tipo do identificador do paciente",
      "min" : 1,
      "fixedCode" : "PPN"
    },
    {
      "id" : "Patient.identifier:passaporte.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "short" : "Display do tipo do identificador do paciente",
      "definition" : "Display do tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte.type.coding.userSelected",
      "path" : "Patient.identifier.type.coding.userSelected",
      "short" : "Seleção do usuário da codificação do tipo do identificador do paciente",
      "definition" : "Indica se a codificação do tipo do identificador do paciente foi selecionada pelo usuário"
    },
    {
      "id" : "Patient.identifier:passaporte.type.text",
      "path" : "Patient.identifier.type.text",
      "short" : "Texto do tipo do identificador do paciente",
      "definition" : "Texto que representa o tipo do identificador do paciente"
    },
    {
      "id" : "Patient.identifier:passaporte.system",
      "path" : "Patient.identifier.system",
      "short" : "Sistema do identificador do paciente",
      "definition" : "Sistema que identifica o tipo do identificador do paciente",
      "min" : 1,
      "fixedUri" : "http://hl7.org/fhir/sid/passport-BRA"
    },
    {
      "id" : "Patient.identifier:passaporte.value",
      "path" : "Patient.identifier.value",
      "short" : "Valor do identificador do paciente",
      "definition" : "Valor do identificador do paciente",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:passaporte.period",
      "path" : "Patient.identifier.period",
      "short" : "Período de uso do identificador do paciente",
      "definition" : "Período de tempo durante o qual o identificador do paciente foi utilizado"
    },
    {
      "id" : "Patient.identifier:passaporte.assigner",
      "path" : "Patient.identifier.assigner",
      "short" : "Entidade que atribuiu o identificador do paciente",
      "definition" : "Entidade que atribuiu o identificador do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Patient.identifier:passaporte.assigner.id",
      "path" : "Patient.identifier.assigner.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Patient.identifier:passaporte.assigner.extension",
      "path" : "Patient.identifier.assigner.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Patient.identifier:passaporte.assigner.reference",
      "path" : "Patient.identifier.assigner.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Patient.identifier:passaporte.assigner.type",
      "path" : "Patient.identifier.assigner.type",
      "short" : "Tipo referenciado (por exemplo: Patient)",
      "definition" : "Tipo referenciado (por exemplo: Patient)"
    },
    {
      "id" : "Patient.identifier:passaporte.assigner.identifier",
      "path" : "Patient.identifier.assigner.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Patient.identifier:passaporte.assigner.display",
      "path" : "Patient.identifier.assigner.display",
      "short" : "Nome da entidade que atribuiu o identificador do paciente",
      "definition" : "Nome da entidade que atribuiu o identificador do paciente"
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "short" : "Indica se o paciente está ativo",
      "definition" : "Indica se o paciente está ativo"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "Nome do paciente",
      "definition" : "Nome do paciente",
      "constraint" : [{
        "key" : "br-core-pat-1",
        "severity" : "error",
        "human" : "Patient.name.given, Patient.name.family, Patient.name.text or Patient.name.extension SHALL be present",
        "expression" : "(family.exists() or given.exists() or text.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()",
        "xpath" : "(/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason' and not(/f:family or /f:given or /f:text)) or (not(/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason') and (/f:family or /f:given or /f:text))",
        "source" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"
      }]
    },
    {
      "id" : "Patient.name.id",
      "path" : "Patient.name.id",
      "short" : "Identificador primário deste recurso",
      "definition" : "Identificação unívoca para o recurso em um sistema"
    },
    {
      "id" : "Patient.name.extension",
      "path" : "Patient.name.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Patient.name.use",
      "path" : "Patient.name.use",
      "short" : "Uso do nome",
      "definition" : "O uso do nome"
    },
    {
      "id" : "Patient.name.text",
      "path" : "Patient.name.text",
      "short" : "Representação textual do nome completo do paciente",
      "definition" : "Representação textual do nome completo do paciente"
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "short" : "Sobrenome",
      "definition" : "Sobrenome do paciente"
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "short" : "Nome completo do paciente",
      "definition" : "Nome completo do paciente"
    },
    {
      "id" : "Patient.name.prefix",
      "path" : "Patient.name.prefix",
      "short" : "Prefixo do nome",
      "definition" : "Prefixo do nome do paciente"
    },
    {
      "id" : "Patient.name.suffix",
      "path" : "Patient.name.suffix",
      "short" : "Sufixo do nome",
      "definition" : "Sufixo do nome do paciente"
    },
    {
      "id" : "Patient.name.period",
      "path" : "Patient.name.period",
      "short" : "Período de tempo em que o nome foi usado",
      "definition" : "Período de tempo em que o nome foi usado"
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "short" : "Contatos de telecomunicação do paciente",
      "definition" : "Contatos de telecomunicação do paciente"
    },
    {
      "id" : "Patient.telecom.id",
      "path" : "Patient.telecom.id",
      "short" : "Identificador primário deste recurso",
      "definition" : "Identificação unívoca para o recurso em um sistema"
    },
    {
      "id" : "Patient.telecom.extension",
      "path" : "Patient.telecom.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Patient.telecom.system",
      "path" : "Patient.telecom.system",
      "short" : "Sistema de telecomunicação utilizado para o contato",
      "definition" : "O sistema de telecomunicação utilizado para o contato"
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "short" : "Número",
      "definition" : "Número"
    },
    {
      "id" : "Patient.telecom.use",
      "path" : "Patient.telecom.use",
      "short" : "Uso do contato",
      "definition" : "home | work | temp | old | mobile - propósito do contato"
    },
    {
      "id" : "Patient.telecom.rank",
      "path" : "Patient.telecom.rank",
      "short" : "Indica a ordem de preferência do contato",
      "definition" : "Indica a ordem de preferência do contato"
    },
    {
      "id" : "Patient.telecom.period",
      "path" : "Patient.telecom.period",
      "short" : "Período de tempo em que o contato foi usado",
      "definition" : "Período em que o meio de contato foi utilizado pelo paciente"
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Sexo",
      "definition" : "male | female | other | unknown",
      "min" : 1
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "Data de nascimento do paciente",
      "definition" : "Data de nascimento do paciente"
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Indica se o indivíduo faleceu",
      "definition" : "Indica se o indivíduo faleceu"
    },
    {
      "id" : "Patient.deceased[x]:deceasedBoolean",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Patient.deceased[x]:deceasedDateTime",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedDateTime",
      "short" : "Data e hora do falecimento do paciente",
      "definition" : "Data e hora do falecimento do paciente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "short" : "Endereço do paciente",
      "definition" : "Endereço do paciente"
    },
    {
      "id" : "Patient.address.id",
      "path" : "Patient.address.id",
      "short" : "Identificador primário deste recurso",
      "definition" : "Identificação unívoca para o recurso em um sistema"
    },
    {
      "id" : "Patient.address.extension",
      "path" : "Patient.address.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Patient.address.use",
      "path" : "Patient.address.use",
      "short" : "Uso do endereço",
      "definition" : "home | work | temp | old - propósito do endereço"
    },
    {
      "id" : "Patient.address.type",
      "path" : "Patient.address.type",
      "short" : "Tipo de endereço",
      "definition" : "postal | physical | both"
    },
    {
      "id" : "Patient.address.text",
      "path" : "Patient.address.text",
      "short" : "Representação textual do endereço",
      "definition" : "Representação textual do endereço"
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "short" : "Endereço do paciente",
      "definition" : "Endereço do paciente"
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "short" : "Cidade do endereço",
      "definition" : "Cidade do endereço"
    },
    {
      "id" : "Patient.address.district",
      "path" : "Patient.address.district",
      "short" : "Bairro do endereço",
      "definition" : "Bairro do endereço"
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "short" : "Unidade Federativa",
      "definition" : "Unidade Federativa"
    },
    {
      "id" : "Patient.address.postalCode",
      "path" : "Patient.address.postalCode",
      "short" : "CEP do endereço",
      "definition" : "CEP do endereço"
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "short" : "País do endereço",
      "definition" : "País do endereço"
    },
    {
      "id" : "Patient.address.period",
      "path" : "Patient.address.period",
      "short" : "Período de tempo em que o endereço foi usado",
      "definition" : "Período de tempo em que o endereço foi usado"
    },
    {
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "short" : "Estado civil do paciente",
      "definition" : "Estado civil do paciente"
    },
    {
      "id" : "Patient.multipleBirth[x]",
      "path" : "Patient.multipleBirth[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Se o paciente faz parte de um parto gemelar",
      "definition" : "Se o paciente faz parte de um parto gemelar"
    },
    {
      "id" : "Patient.multipleBirth[x]:multipleBirthBoolean",
      "path" : "Patient.multipleBirth[x]",
      "sliceName" : "multipleBirthBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Patient.multipleBirth[x]:multipleBirthInteger",
      "path" : "Patient.multipleBirth[x]",
      "sliceName" : "multipleBirthInteger",
      "short" : "Gemelaridade do paciente",
      "definition" : "Gemelaridade do paciente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Patient.photo",
      "path" : "Patient.photo",
      "short" : "Fotografia do paciente",
      "definition" : "Fotografia do paciente"
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "short" : "Uma pessoa para contato (guardião, companheiro, amigo) em caso de emergência",
      "definition" : "Uma pessoa para contato (guardião, companheiro, amigo) em caso de emergência"
    },
    {
      "id" : "Patient.contact.id",
      "path" : "Patient.contact.id",
      "short" : "Identificação unívoca da pessoa de contato",
      "definition" : "Identificação unívoca da pessoa de contato"
    },
    {
      "id" : "Patient.contact.extension",
      "path" : "Patient.contact.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Patient.contact.modifierExtension",
      "path" : "Patient.contact.modifierExtension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Patient.contact.relationship",
      "path" : "Patient.contact.relationship",
      "short" : "Relação com o paciente",
      "definition" : "Relação com o paciente"
    },
    {
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
      "short" : "Nome da pessoa de contato",
      "definition" : "Nome da pessoa de contato"
    },
    {
      "id" : "Patient.contact.telecom",
      "path" : "Patient.contact.telecom",
      "short" : "Contatos de telecomunicação da pessoa de contato",
      "definition" : "Contatos de telecomunicação da pessoa de contato"
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "short" : "Endereço da pessoa de contato",
      "definition" : "Endereço da pessoa de contato"
    },
    {
      "id" : "Patient.contact.gender",
      "path" : "Patient.contact.gender",
      "short" : "Sexo do contato do paciente",
      "definition" : "Sexo do contato do paciente"
    },
    {
      "id" : "Patient.contact.organization",
      "path" : "Patient.contact.organization",
      "short" : "Organização do contato do paciente",
      "definition" : "Organização do contato do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Patient.contact.period",
      "path" : "Patient.contact.period",
      "short" : "Período de tempo em que o contato foi usado",
      "definition" : "Período de tempo em que o contato foi usado"
    },
    {
      "id" : "Patient.communication",
      "path" : "Patient.communication",
      "short" : "Idiomas falados pelo paciente"
    },
    {
      "id" : "Patient.communication.id",
      "path" : "Patient.communication.id",
      "short" : "Identificador primário deste recurso",
      "definition" : "Identificação unívoca para o recurso em um sistema"
    },
    {
      "id" : "Patient.communication.extension",
      "path" : "Patient.communication.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Patient.communication.modifierExtension",
      "path" : "Patient.communication.modifierExtension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Patient.communication.language",
      "path" : "Patient.communication.language",
      "short" : "Idioma falado pelo paciente",
      "definition" : "Idioma falado pelo paciente"
    },
    {
      "id" : "Patient.communication.preferred",
      "path" : "Patient.communication.preferred",
      "short" : "Indica se o idioma é o preferido",
      "definition" : "Indica se o idioma é o preferido"
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "short" : "Médico da atenção primária do paciente",
      "definition" : "Médico da atenção primária do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"]
      }]
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "short" : "Organização responsável pelo paciente",
      "definition" : "Organização responsável pelo paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "short" : "Links para outros recursos que se relacionam com este recurso",
      "definition" : "Links para outros recursos que se relacionam com este recurso"
    },
    {
      "id" : "Patient.link.id",
      "path" : "Patient.link.id",
      "short" : "Identificador primário deste recurso",
      "definition" : "Identificação unívoca para o recurso em um sistema"
    },
    {
      "id" : "Patient.link.extension",
      "path" : "Patient.link.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Patient.link.modifierExtension",
      "path" : "Patient.link.modifierExtension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "short" : "Outro recurso que se relaciona com este recurso",
      "definition" : "Outro recurso que se relaciona com este recurso",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "Patient.link.type",
      "path" : "Patient.link.type",
      "short" : "Tipo de relação entre os recursos",
      "definition" : "Tipo de relação entre os recursos"
    }]
  }
}

```
