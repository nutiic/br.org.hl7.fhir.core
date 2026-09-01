# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreRelatedPerson - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreRelatedPerson**

## Resource Profile: BRCoreRelatedPerson 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson | *Versão*:1.1.0 |
| Active as of 2026-09-01 | *Nome computável*:BRCoreRelatedPerson |

 
O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md) contém as informações sobre uma pessoa envolvida no cuidado de um paciente, mas que não é alvo de cuidados de saúde nem tem responsabilidade formal no processo de cuidado. 
A pessoa representada pelo recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md) normalmente tem um relacionamento profissional pessoal ou não específico de cuidado em saúde com o paciente. O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md) é usado principalmente para atribuição de informações, já que geralmente é uma fonte de informações sobre o paciente. Para manter informações sobre pessoas para fins de contato para um paciente, use um elemento br-core-patien.contact. Alguns indivíduos podem ser representados simultaneamente como um patient.contact e [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md). 
Exemplos de pessoas que podem ser um [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md): 
* Esposa ou marido de um paciente
* Parentes ou amigos de um paciente
* Um vizinho que leva um paciente para o hospital
* O dono ou treinador de um cavalo
* Um advogado ou tutor do paciente
* Um cão-guia
 

### Cenários de uso:

Alguns exemplos de cenários de uso para este perfil são:

* Consultar uma pessoa relacionada que dê apoio ao paciente.
* Consultar uma pessoa relacionada ao paciente pelo nome.

### Elementos de dados obrigatórios e que devem estar presentes (Must Support)

Os seguintes elementos devem estar sempre presentes ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support), em um recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md).

**Cada RelatedPerson deve ter:**

1. um paciente

**Cada RelatedPerson deve oferecer suporte a:**

1. a relação com o paciente
1. o nome da pessoa relacionada
1. a telecomunicação da pessoa relacionada
1. o endereço da pessoa relacionada

**Usos:**

* Refere a este Perfil: [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md), [BRCoreCarePlan](StructureDefinition-br-core-careplan.md), [br-core-careteam](StructureDefinition-br-core-careteam.md), [br-core-composition](StructureDefinition-br-core-composition.md)... Show 11 more, [BRCoreCondition](StructureDefinition-br-core-condition.md), [br-core-consent](StructureDefinition-br-core-consent.md), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCorePatient](StructureDefinition-br-core-patient.md), [BRCoreProcedure](StructureDefinition-br-core-procedure.md), [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-relatedperson.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)

 **Visão diferencial** 

Esta estrutura é derivada de [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-relatedperson.csv), [Excel](StructureDefinition-br-core-relatedperson.xlsx), [Schematron](StructureDefinition-br-core-relatedperson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-relatedperson",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
  "version" : "1.1.0",
  "name" : "BRCoreRelatedPerson",
  "status" : "active",
  "date" : "2026-09-01T10:20:38-04:00",
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
  "description" : "O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html) contém as informações sobre uma pessoa envolvida no cuidado de um paciente, mas que não é alvo de cuidados de saúde nem tem responsabilidade formal no processo de cuidado. \n\nA pessoa representada pelo recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html) normalmente tem um relacionamento profissional pessoal ou não específico de cuidado em saúde com o paciente. O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html) é usado principalmente para atribuição de informações, já que geralmente é uma fonte de informações sobre o paciente. Para manter informações sobre pessoas para fins de contato para um paciente, use um elemento br-core-patien.contact. Alguns indivíduos podem ser representados simultaneamente como  um patient.contact e [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html).\n\nExemplos de pessoas que podem ser um [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html):\n-\tEsposa ou marido de um paciente\n-\tParentes ou amigos de um paciente\n-\tUm vizinho que leva um paciente para o hospital\n-\tO dono ou treinador de um cavalo\n-\tUm advogado ou tutor do paciente\n-\tUm cão-guia\n",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.id",
      "path" : "RelatedPerson.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "RelatedPerson.meta",
      "path" : "RelatedPerson.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "RelatedPerson.implicitRules",
      "path" : "RelatedPerson.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "RelatedPerson.language",
      "path" : "RelatedPerson.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "RelatedPerson.text",
      "path" : "RelatedPerson.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "RelatedPerson.contained",
      "path" : "RelatedPerson.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "RelatedPerson.extension",
      "path" : "RelatedPerson.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "RelatedPerson.modifierExtension",
      "path" : "RelatedPerson.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "RelatedPerson.active",
      "path" : "RelatedPerson.active",
      "short" : "Se o registro desta pessoa relacionada está ativo",
      "definition" : "Se o registro desta pessoa relacionada está ativo"
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "short" : "Referência ao paciente com quem essa pessoa está relacionada",
      "definition" : "Referência ao paciente com quem essa pessoa está relacionada",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "short" : "Código da natureza do relacionamento",
      "definition" : "Código da natureza do relacionamento"
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "short" : "Nome associado à pessoa",
      "definition" : "Nome associado à pessoa"
    },
    {
      "id" : "RelatedPerson.telecom",
      "path" : "RelatedPerson.telecom",
      "short" : "Contato da pessoa",
      "definition" : "Contato da pessoa"
    },
    {
      "id" : "RelatedPerson.gender",
      "path" : "RelatedPerson.gender",
      "short" : "Sexo: masculino | feminino | outro | desconhecido",
      "definition" : "masculino | feminino | outro | desconhecido"
    },
    {
      "id" : "RelatedPerson.birthDate",
      "path" : "RelatedPerson.birthDate",
      "short" : "Data de nascimento da pessoa relacionada",
      "definition" : "Data de nascimento da pessoa relacionada"
    },
    {
      "id" : "RelatedPerson.address",
      "path" : "RelatedPerson.address",
      "short" : "Endereço da pessoa relacionada",
      "definition" : "Endereço da pessoa relacionada"
    },
    {
      "id" : "RelatedPerson.photo",
      "path" : "RelatedPerson.photo",
      "short" : "Imagem da pessoa",
      "definition" : "Imagem da pessoa"
    },
    {
      "id" : "RelatedPerson.period",
      "path" : "RelatedPerson.period",
      "short" : "Período de tempo em que esta relação é considerada válida",
      "definition" : "Período de tempo em que esta relação é considerada válida"
    },
    {
      "id" : "RelatedPerson.communication",
      "path" : "RelatedPerson.communication",
      "short" : "Idiomas que podem ser utilizados",
      "definition" : "Idiomas que podem ser utilizados"
    },
    {
      "id" : "RelatedPerson.communication.id",
      "path" : "RelatedPerson.communication.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "RelatedPerson.communication.extension",
      "path" : "RelatedPerson.communication.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "RelatedPerson.communication.modifierExtension",
      "path" : "RelatedPerson.communication.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "RelatedPerson.communication.language",
      "path" : "RelatedPerson.communication.language",
      "short" : "Idioma que pode ser utilizada para comunicação com o paciente",
      "definition" : "Idioma que pode ser utilizada para comunicação com o paciente"
    },
    {
      "id" : "RelatedPerson.communication.preferred",
      "path" : "RelatedPerson.communication.preferred",
      "short" : "Indicador de idioma preferencial",
      "definition" : "Indicador de idioma preferencial"
    }]
  }
}

```
