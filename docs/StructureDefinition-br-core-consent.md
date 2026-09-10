# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-consent - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-consent**

## Resource Profile: br-core-consent 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-consent | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreConsent |

 
Este perfil define as características mínimas para o recurso [br-core-consent](StructureDefinition-br-core-consent.md) registrar, pesquisar e buscar consentimentos para tratamento de dados pessoais conforme Lei Geral de Proteção de Dados (LGPD) - Lei nº 13.709/2018. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes e restringe como os elementos são usados. Além disso, fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção. 

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-consent.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Consent](http://hl7.org/fhir/R4/consent.html) 

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Consent](http://hl7.org/fhir/R4/consent.html) 

** Resumo **

Obrigatório: 2 elementos
 Deve ser suportado: 1 elemento

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)

**Extensões**

Esta estrutura refere-se a estas extensões:

* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-base-legal-lgpd](StructureDefinition-br-core-base-legal-lgpd.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Consent](http://hl7.org/fhir/R4/consent.html) 

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Consent](http://hl7.org/fhir/R4/consent.html) 

** Resumo **

Obrigatório: 2 elementos
 Deve ser suportado: 1 elemento

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)

**Extensões**

Esta estrutura refere-se a estas extensões:

* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-base-legal-lgpd](StructureDefinition-br-core-base-legal-lgpd.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-consent.csv), [Excel](StructureDefinition-br-core-consent.xlsx), [Schematron](StructureDefinition-br-core-consent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-consent",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-consent",
  "version" : "1.1.0",
  "name" : "BRCoreConsent",
  "title" : "br-core-consent",
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
  "description" : "Este perfil define as características mínimas para o recurso [br-core-consent](StructureDefinition-br-core-consent.html) registrar, pesquisar e buscar consentimentos para tratamento de dados pessoais conforme Lei Geral de Proteção de Dados (LGPD) - Lei nº 13.709/2018. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes e restringe como os elementos são usados. Além disso, fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção. ",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.id",
      "path" : "Consent.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Consent.meta",
      "path" : "Consent.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Consent.implicitRules",
      "path" : "Consent.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Consent.language",
      "path" : "Consent.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Consent.text",
      "path" : "Consent.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Consent.contained",
      "path" : "Consent.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Consent.extension",
      "path" : "Consent.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base",
      "min" : 1
    },
    {
      "id" : "Consent.extension:baseLegalLGPD",
      "path" : "Consent.extension",
      "sliceName" : "baseLegalLGPD",
      "short" : "Base legal LGPD para tratamento de dados (Art. 7º)",
      "definition" : "Base legal LGPD para tratamento de dados (Art. 7º)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-base-legal-lgpd"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.modifierExtension",
      "path" : "Consent.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Consent.identifier",
      "path" : "Consent.identifier",
      "short" : "Identificadores externos para este consentimento",
      "definition" : "Identificadores externos para este consentimento"
    },
    {
      "id" : "Consent.status",
      "path" : "Consent.status",
      "short" : "Status do consentimento: draft | proposed | active | rejected | inactive | entered-in-error",
      "definition" : "Status do consentimento: draft | proposed | active | rejected | inactive | entered-in-error"
    },
    {
      "id" : "Consent.scope",
      "path" : "Consent.scope",
      "short" : "Escopo do consentimento: patient-privacy | research | treatment | adr",
      "definition" : "Escopo do consentimento: patient-privacy | research | treatment | adr"
    },
    {
      "id" : "Consent.category",
      "path" : "Consent.category",
      "short" : "Classificação do consentimento e base legal LGPD",
      "definition" : "Classificação do consentimento e base legal LGPD"
    },
    {
      "id" : "Consent.patient",
      "path" : "Consent.patient",
      "short" : "Titular dos dados pessoais",
      "definition" : "Titular dos dados pessoais",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "Consent.patient.id",
      "path" : "Consent.patient.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Consent.patient.extension",
      "path" : "Consent.patient.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Consent.patient.reference",
      "path" : "Consent.patient.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Consent.patient.type",
      "path" : "Consent.patient.type",
      "short" : "Tipo ao qual a referência se refere (por exemplo: Patient)",
      "definition" : "Tipo ao qual a referência se refere (por exemplo: Patient)"
    },
    {
      "id" : "Consent.patient.identifier",
      "path" : "Consent.patient.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Consent.patient.display",
      "path" : "Consent.patient.display",
      "short" : "Texto alternativo para o recurso",
      "definition" : "Texto alternativo para o recurso"
    },
    {
      "id" : "Consent.dateTime",
      "path" : "Consent.dateTime",
      "short" : "Data e hora do consentimento",
      "definition" : "Data e hora do consentimento"
    },
    {
      "id" : "Consent.performer",
      "path" : "Consent.performer",
      "short" : "Quem concedeu o consentimento",
      "definition" : "Quem concedeu o consentimento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Consent.organization",
      "path" : "Consent.organization",
      "short" : "Controlador dos dados (organização responsável)",
      "definition" : "Controlador dos dados (organização responsável)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Consent.source[x]",
      "path" : "Consent.source[x]",
      "short" : "Fonte/evidência do consentimento",
      "definition" : "Fonte/evidência do consentimento"
    },
    {
      "id" : "Consent.policy",
      "path" : "Consent.policy",
      "short" : "Políticas que regem o consentimento",
      "definition" : "Políticas que regem o consentimento"
    },
    {
      "id" : "Consent.policy.id",
      "path" : "Consent.policy.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Consent.policy.extension",
      "path" : "Consent.policy.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Consent.policy.modifierExtension",
      "path" : "Consent.policy.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Consent.policy.authority",
      "path" : "Consent.policy.authority",
      "short" : "Autoridade responsável pela política (ex: ANPD)",
      "definition" : "Autoridade responsável pela política (ex: ANPD)"
    },
    {
      "id" : "Consent.policy.uri",
      "path" : "Consent.policy.uri",
      "short" : "URI da política ou legislação",
      "definition" : "URI da política ou legislação"
    },
    {
      "id" : "Consent.policyRule",
      "path" : "Consent.policyRule",
      "short" : "Regra de política de consentimento",
      "definition" : "Regra de política de consentimento"
    },
    {
      "id" : "Consent.verification",
      "path" : "Consent.verification",
      "short" : "Verificação do consentimento",
      "definition" : "Verificação do consentimento"
    },
    {
      "id" : "Consent.verification.id",
      "path" : "Consent.verification.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Consent.verification.extension",
      "path" : "Consent.verification.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Consent.verification.modifierExtension",
      "path" : "Consent.verification.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Consent.verification.verified",
      "path" : "Consent.verification.verified",
      "short" : "Consentimento foi verificado",
      "definition" : "Consentimento foi verificado"
    },
    {
      "id" : "Consent.verification.verifiedWith",
      "path" : "Consent.verification.verifiedWith",
      "short" : "Pessoa que verificou",
      "definition" : "Pessoa que verificou",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "Consent.verification.verificationDate",
      "path" : "Consent.verification.verificationDate",
      "short" : "Quando foi verificado",
      "definition" : "Quando foi verificado"
    },
    {
      "id" : "Consent.provision",
      "path" : "Consent.provision",
      "short" : "Regras de acesso e tratamento de dados",
      "definition" : "Regras de acesso e tratamento de dados"
    },
    {
      "id" : "Consent.provision.id",
      "path" : "Consent.provision.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Consent.provision.extension",
      "path" : "Consent.provision.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Consent.provision.modifierExtension",
      "path" : "Consent.provision.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Consent.provision.type",
      "path" : "Consent.provision.type",
      "short" : "Tipo de ação: permit | deny",
      "definition" : "Tipo de ação: permit | deny"
    },
    {
      "id" : "Consent.provision.period",
      "path" : "Consent.provision.period",
      "short" : "Período de validade do consentimento",
      "definition" : "Período de validade do consentimento"
    },
    {
      "id" : "Consent.provision.actor",
      "path" : "Consent.provision.actor",
      "short" : "Agentes autorizados",
      "definition" : "Agentes autorizados"
    },
    {
      "id" : "Consent.provision.actor.id",
      "path" : "Consent.provision.actor.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Consent.provision.actor.extension",
      "path" : "Consent.provision.actor.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Consent.provision.actor.modifierExtension",
      "path" : "Consent.provision.actor.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Consent.provision.actor.role",
      "path" : "Consent.provision.actor.role",
      "short" : "Como o agente está envolvido",
      "definition" : "Como o agente está envolvido"
    },
    {
      "id" : "Consent.provision.actor.reference",
      "path" : "Consent.provision.actor.reference",
      "short" : "Recurso para o ator",
      "definition" : "Recurso para o ator",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "Consent.provision.action",
      "path" : "Consent.provision.action",
      "short" : "Ações permitidas ou negadas",
      "definition" : "Ações permitidas ou negadas"
    },
    {
      "id" : "Consent.provision.securityLabel",
      "path" : "Consent.provision.securityLabel",
      "short" : "Rótulos de segurança que definem os dados afetados",
      "definition" : "Rótulos de segurança que definem os dados afetados"
    },
    {
      "id" : "Consent.provision.purpose",
      "path" : "Consent.provision.purpose",
      "short" : "Finalidade do tratamento de dados",
      "definition" : "Finalidade do tratamento de dados"
    },
    {
      "id" : "Consent.provision.class",
      "path" : "Consent.provision.class",
      "short" : "Tipo ou classe de dados pessoais",
      "definition" : "Tipo ou classe de dados pessoais"
    },
    {
      "id" : "Consent.provision.code",
      "path" : "Consent.provision.code",
      "short" : "Instâncias de dados específicas",
      "definition" : "Instâncias de dados específicas"
    },
    {
      "id" : "Consent.provision.dataPeriod",
      "path" : "Consent.provision.dataPeriod",
      "short" : "Período temporal dos dados cobertos",
      "definition" : "Período temporal dos dados cobertos"
    },
    {
      "id" : "Consent.provision.data",
      "path" : "Consent.provision.data",
      "short" : "Dados específicos cobertos",
      "definition" : "Dados específicos cobertos"
    },
    {
      "id" : "Consent.provision.data.id",
      "path" : "Consent.provision.data.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Consent.provision.data.extension",
      "path" : "Consent.provision.data.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Consent.provision.data.modifierExtension",
      "path" : "Consent.provision.data.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Consent.provision.data.meaning",
      "path" : "Consent.provision.data.meaning",
      "short" : "Instância | relacionado | dependente | autorizado",
      "definition" : "Instância | relacionado | dependente | autorizado"
    },
    {
      "id" : "Consent.provision.data.reference",
      "path" : "Consent.provision.data.reference",
      "short" : "O recurso real ao qual a regra de consentimento se aplica",
      "definition" : "O recurso real ao qual a regra de consentimento se aplica"
    },
    {
      "id" : "Consent.provision.provision",
      "path" : "Consent.provision.provision",
      "short" : "Provisões aninhadas (sub-regras/exceções)",
      "definition" : "Provisões aninhadas (sub-regras/exceções)"
    }]
  }
}

```
