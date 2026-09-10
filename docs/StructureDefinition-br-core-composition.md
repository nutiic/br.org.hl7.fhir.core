# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-composition - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-composition**

## Resource Profile: br-core-composition 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreComposition |

 
Um conjunto de informações relacionadas aos cuidados em sáude que são reunidas em um único bundle lógico que estabelece seu próprio contexto e atesta quem está fazendo a declaração. Uma Composition define a estrutura e o conteúdo narrativo necessários para um documento. No entanto, uma Composition sozinha não constitui um documento. Em vez disso, a Composition deve ser a primeira entrada em um Bundle onde Bundle.type=document, e quaisquer outros recursos referenciados da Composition devem ser incluídos como entradas subsequentes no Bundle (por exemplo, Patient, Practitioner, Encounter, etc.) 

### Escopo/Uso

Uma Composition é a estrutura básica a partir da qual os Documentos FHIR - bundles imutáveis com narrativa atestada - são construídos. Uma única composição lógica pode ser associada a uma série de documentos derivados, cada um dos quais é uma cópia congelada da composição.

Nota: A norma [Health informatics - Electronic Health Record Communication (EN 13606)](https://en.wikipedia.org/wiki/EN_13606) usa o termo “Composition” para se referir a um único commit para um sistema de Registro Eletrônico em Saúde (RES) e oferece alguns exemplos comuns: uma composição contendo uma nota de consulta, uma nota de evolução, um relatório ou uma carta, um relatório de investigação, um formulário de prescrição ou um conjunto de observações de enfermagem de beira de leito. Usar a Composition para um commit num RES é um uso válido do recurso Composition, mas para fins de FHIR, seria comum fazer atualizações mais granulares com declarações de procedência individuais.

O perfil de [ClinicalDocument](https://www.hl7.org/fhir/r4/composition-clinicaldocument.html) restringe o Composition para especificar um documento clínico (correspondente ao padrão HL7 [CDA](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=7) ). Veja também a [comparação com CDA](https://www.hl7.org/fhir/r4/comparison-cda.html).

### Caso de uso da RNDS

Alguns recursos da RNDS foram definidos em forma de documento, que no canônico são recursos de fluxo de trabalho do FHIR, que exigem a criação de outros recursos para que os processos de request-response possa ser realizado. (ex: prescrição e dispensação de medicamentos). Inclui ainda recursos de evento, como DiagnosticReport e Immunization.

No FHIR R4, os casos de uso para esses recursos estão bem definidos, por isso no br-core foram especializados os recursos equivalentes, para atender normas e regulações brasileiras.

Foi criado o recurso br- core- composition canônico e seus derivados (RAC e SA). A modelagem e perfilização do br-core foi realizada para herdar os perfis do FHIR R4 , para reuso do mesmo perfil em diferentes contextos, que vão além do contexto da RNDS.

**Tabela 1. Mapeamento dos composition RNDS para br-core**

| | |
| :--- | :--- |
| RIA e RIC | br-core- immunization recurso de evento que deve ser utilizado para o Registro de Vacinas, conforme definido no guia de implementação de imunização[HL7 v2 existente, domínio POIZ HL7 v3](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=185)e Modelo de Análise de Domínio de Imunização. |
| REL | br-core-diagnosticreport recurso de evento do ponto de vista do workflow do FHIR. |
| RDM e RPM | br-core-medicationrequest e br-core-medicationdispense, recursos de workflow do FHIR R4, usados para o processo de prescrição/dispensação de medicamentos |
| RIRA | br-core-servicerequest |
| RAC e SA | Remodelados para atender o canônico: br-core-registroatendimentoclinico, br-core-sumarioalta |
| CMD | Informações para compor o CMD foram incluídas tanto no RAC como no sumário de alta, que foram remodelados e incluíram o encounter, que estava suprimido na RNDS. O CMD é um resumo de um encounter. |

### Limites e relacionamentos

O Composition é uma estrutura para agrupar informações para fins de persistência e atestabilidade. Existem várias outras estruturas de agrupamento no FHIR com propósitos distintos:

* recurso [List](https://www.hl7.org/fhir/r4/list.html) - enumera uma coleção simples de recursos e fornece recursos para gerenciar a coleção. Embora uma instância List específica possa representar um “instantâneo”, de uma perspectiva de processo de negócios, a noção de “lista” é dinâmica - itens são adicionados e removidos ao longo do tempo. O recurso List faz Referência à outros recursos. As listas podem ser selecionadas e ter um significado comercial específico.
* recurso [Group](https://www.hl7.org/fhir/r4/group.html) - define um grupo de pessoas, animais, dispositivos, etc. específicos, enumerando-os ou descrevendo qualidades que os membros do grupo têm. O recurso Group se refere a outros recursos, possivelmente implicitamente. Os grupos devem ser agidos ou observados como um todo (por exemplo, realizando terapia em um grupo, calculando o risco para um grupo, etc.). Este recurso será comumente usado para saúde pública (por exemplo, descrevendo uma população em risco), ensaios clínicos (por exemplo, definindo um pool de sujeitos de teste) e propósitos semelhantes.
* recurso [Bundle](https://www.hl7.org/fhir/r4/bundle.html) - é um contêiner de infraestrutura para um grupo de recursos. Ele não tem narrativa e é usado para agrupar coleções de recursos para transmissão, persistência ou processamento (por exemplo, mensagens, documentos, transações, respostas de consulta, etc.). O conteúdo dos bundles é normalmente determinado algoritmicamente para uma troca específica ou propósito de persistência.

O recurso [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) - define um conjunto de informações relacionadas à saúde que são reunidas em um único documento lógico que fornece uma única declaração coerente de significado, estabelece seu próprio contexto e que tem atestado clínico com relação a quem está fazendo a declaração. O recurso [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) fornece a estrutura básica de um documento FHIR. O conteúdo completo do documento é expresso usando um Bundle contendo a Composition e suas entradas.

O recurso [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) organiza o conteúdo clínico e administrativo em seções, cada uma contendo uma narrativa e faz Referência à outros recursos para dar suporte a dados. O conteúdo narrativo das várias seções em um [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) é suportado pelos recursos referenciados nas entradas da seção. O conjunto completo de conteúdo para compor um documento inclui o recurso [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) juntamente com vários recursos apontados ou indiretamente conectados à Composition, todos reunidos em um Bundle para transporte e persistência.

Os recursos associados à seguinte lista de referências de [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) DEVEM ser incluídos no Bundle:

* br-core-composition.subject
* br-core-composition.encounter
* br-core-composition.author
* br-core-composition.attester.party
* br-core-composition.custodian
* br-core-composition.event.detail
* br-core-composition.section.author
* br-core-composition.section.focus
* br-core-composition.section.entry

Outros recursos referenciados por esses recursos PODEM ser incluídos no Bundle a critério do sistema de autoria, conforme documentado na definição de operação do sistema (como a operação $document) ou conforme especificado por quaisquer perfis aplicáveis.

### Contexto

**Códigos de status do br-core-compositon**

Cada composição tem um elemento de status, que descreve o status do conteúdo da composição, retirado deste ValueSet: ([https://terminologia.saude.gov.br/#/orgs/HL7/collections/composition-status/](https://terminologia.saude.gov.br/#/orgs/HL7/collections/composition-status/)):

**Tabela 2. Códigos de status da composition**

| | |
| :--- | :--- |
| preliminar | Esta é uma composition ou documento preliminar (também conhecido como inicial ou provisório). O conteúdo pode estar incompleto ou não verificado. |
| registrado por engano | A composition ou documento foi originalmente criado/emitido por engano, e esta é uma alteração que marca que toda a série não deve ser considerada válida. |
| final | Esta versão da composition está completa e verificada por uma pessoa autorizada e nenhum outro trabalho está planejado. Quaisquer atualizações subsequentes serão em uma nova versão da composition. |
| alterada | O conteúdo da composition ou os seus recursos referenciados foram modificados (editados ou adicionados) após serem liberados como "finais" e a composition está completa e verificada por uma pessoa autorizada. |

O status da composição geralmente vai de preliminar para final e, então pode progredir para alterado. Observe que em muitos fluxos de trabalho, apenas composições finais são disponibilizadas e o status preliminar não é usado.

Poucas composições são criadas inteiramente por engano no fluxo de trabalho - geralmente a composição diz respeito ao paciente errado ou é escrita pelo autor errado, e o erro só é detectado depois que a composição foi usada ou documentos foram derivados dela. Para dar suporte à resolução deste caso, a composição é atualizada para ser marcada como inserida por engano e um novo documento derivado pode ser criado. Isso significa que toda a série de documentos derivados agora é considerada criada por engano e os sistemas que recebem documentos derivados com base em composições retiradas DEVEM remover dados retirados de documentos anteriores do uso rotineiro e/ou tomar outras ações apropriadas. Os sistemas não são obrigados a fornecer este fluxo de trabalho ou dar suporte a documentos derivados de composições retiradas, mas NÃO DEVEM ignorar um status de inserido por engano. Observe que os sistemas que manipulam composições ou documentos derivados e não oferecem suporte ao status de erro precisam definir alguma outra maneira de manipular composições criadas por engano; embora isso não seja uma ocorrência comum, alguns sistemas clínicos não têm nenhuma provisão para remover informações errôneas do registro de um paciente, e não há como o usuário saber que o registro não é adequado para uso. Isso não é seguro.

Observações com relação ao padrão CDA estão disponíveis em [https://www.hl7.org/fhir/r4/composition.html#cda](https://www.hl7.org/fhir/r4/composition.html#cda).

**Usos:**

* Derivado deste Perfil: [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) and [br-core-sumarioalta](StructureDefinition-br-core-sumarioalta.md)
* Refere a este Perfil: [br-core-composition](StructureDefinition-br-core-composition.md) and [BRCoreProcedure](StructureDefinition-br-core-procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-composition.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Composition](http://hl7.org/fhir/R4/composition.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Composition](http://hl7.org/fhir/R4/composition.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-composition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition)](StructureDefinition-br-core-composition.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Composition.relatesTo.target[x]

 **Visão diferencial** 

Esta estrutura é derivada de [Composition](http://hl7.org/fhir/R4/composition.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Composition](http://hl7.org/fhir/R4/composition.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-composition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition)](StructureDefinition-br-core-composition.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Composition.relatesTo.target[x]

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-composition.csv), [Excel](StructureDefinition-br-core-composition.xlsx), [Schematron](StructureDefinition-br-core-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-composition",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition",
  "version" : "1.1.1",
  "name" : "BRCoreComposition",
  "title" : "br-core-composition",
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
  "description" : "Um conjunto de informações relacionadas aos cuidados em sáude que são reunidas em um único bundle lógico que estabelece seu próprio contexto e atesta quem está fazendo a declaração. Uma Composition define a estrutura e o conteúdo narrativo necessários para um documento. No entanto, uma Composition sozinha não constitui um documento. Em vez disso, a Composition deve ser a primeira entrada em um Bundle onde Bundle.type=document, e quaisquer outros recursos referenciados da Composition devem ser incluídos como entradas subsequentes no Bundle (por exemplo, Patient, Practitioner, Encounter, etc.)",
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
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.id",
      "path" : "Composition.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Composition.meta",
      "path" : "Composition.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Composition.implicitRules",
      "path" : "Composition.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Composition.language",
      "path" : "Composition.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Composition.text",
      "path" : "Composition.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Composition.contained",
      "path" : "Composition.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Composition.extension",
      "path" : "Composition.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Composition.modifierExtension",
      "path" : "Composition.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Composition.identifier",
      "path" : "Composition.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "short" : "Status/Situação da Composition",
      "definition" : "Status/Situação da Composition: preliminar, definitivo, alterado, inserido com erro",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/composition-status"
      }
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "short" : "Tipo da Composition (fixo em 'Sumário Internacional do Paciente)",
      "definition" : "Tipo da Composition (fixo em 'Sumário Internacional do Paciente)",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/doc-typecodes"
      }
    },
    {
      "id" : "Composition.type.id",
      "path" : "Composition.type.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.type.extension",
      "path" : "Composition.type.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.type.coding",
      "path" : "Composition.type.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.type.coding.id",
      "path" : "Composition.type.coding.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.type.coding.extension",
      "path" : "Composition.type.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.type.coding.system",
      "path" : "Composition.type.coding.system",
      "short" : "Identificador do sistema de terminologia",
      "definition" : "Identidficador do sistema de terminologia"
    },
    {
      "id" : "Composition.type.coding.version",
      "path" : "Composition.type.coding.version",
      "short" : "Versão da terminologia LOINC - se relevante",
      "definition" : "Versão da terminologia LOINC - se relevante"
    },
    {
      "id" : "Composition.type.coding.code",
      "path" : "Composition.type.coding.code",
      "short" : "Código conforme terminologia",
      "definition" : "Código conforme terminologia"
    },
    {
      "id" : "Composition.type.coding.display",
      "path" : "Composition.type.coding.display",
      "short" : "Descrição conforme definição da terminologia LOINC",
      "definition" : "Descrição conforme definição da terminologia LOINC"
    },
    {
      "id" : "Composition.type.coding.userSelected",
      "path" : "Composition.type.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.type.text",
      "path" : "Composition.type.text",
      "short" : "Representação em texto livre do conceito",
      "definition" : "Representação em texto livre do conceito"
    },
    {
      "id" : "Composition.category",
      "path" : "Composition.category",
      "short" : "Categoria da Composition",
      "definition" : "Categoria da Composition",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/document-classcodes"
      }
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "short" : "Sobre quem e/ou sobre o que é a Composition",
      "definition" : "Sobre quem e/ou sobre o que é a Composition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "Composition.subject.id",
      "path" : "Composition.subject.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.subject.extension",
      "path" : "Composition.subject.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.subject.reference",
      "path" : "Composition.subject.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Composition.subject.type",
      "path" : "Composition.subject.type",
      "short" : "Tipo ao qual a referência se refere (por exemplo,'Paciente')",
      "definition" : "Tipo ao qual a referência se refere (por exemplo,'Paciente')"
    },
    {
      "id" : "Composition.subject.identifier",
      "path" : "Composition.subject.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Composition.subject.display",
      "path" : "Composition.subject.display",
      "short" : "Referência ao paciente ou grupo deste atendimento",
      "definition" : "Referência ao paciente ou grupo deste atendimento"
    },
    {
      "id" : "Composition.encounter",
      "path" : "Composition.encounter",
      "short" : "Contato assistencial descrito nesta Composition",
      "definition" : "Contato assistencial descrito nesta Composition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "Composition.date",
      "path" : "Composition.date",
      "short" : "Data de edição da Composition",
      "definition" : "Data de edição da Composition"
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "short" : "Quem e/ou o que foi o autor desta Composition",
      "definition" : "Quem e/ou o que foi o autor desta Compositon",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Composition.title",
      "path" : "Composition.title",
      "short" : "Sumário Internacional do Paciente",
      "definition" : "Sumário Internacional do Paciente"
    },
    {
      "id" : "Composition.confidentiality",
      "path" : "Composition.confidentiality",
      "short" : "Códigos que especificam o nível de confidencialidade da Composition",
      "definition" : "Códigos que especificam o nível de confidencialidade da Composition",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification"
      }
    },
    {
      "id" : "Composition.attester",
      "path" : "Composition.attester",
      "short" : "Responsável por atestar a acurácia da Composition",
      "definition" : "Responsável por atestar a acurácia da Composition"
    },
    {
      "id" : "Composition.attester.id",
      "path" : "Composition.attester.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.attester.extension",
      "path" : "Composition.attester.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.attester.modifierExtension",
      "path" : "Composition.attester.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Composition.attester.mode",
      "path" : "Composition.attester.mode",
      "short" : "Métodolo utilizada para autenticar a Composition",
      "definition" : "Métodolo utilizada para autenticar a Composition: pessoal, profissional, legal, oficial",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/composition-attestation-mode"
      }
    },
    {
      "id" : "Composition.attester.time",
      "path" : "Composition.attester.time",
      "short" : "Quando a Composition foi atestada",
      "definition" : "Quando a Composition foi atestada"
    },
    {
      "id" : "Composition.attester.party",
      "path" : "Composition.attester.party",
      "short" : "Referência à quem atestou a Composition",
      "definition" : "Referência à quem atestou a Composition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Composition.custodian",
      "path" : "Composition.custodian",
      "short" : "Identifica a organização ou grupo responsável pela Composition",
      "definition" : "Identifica a organização ou grupo responsável pela Composition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Composition.relatesTo",
      "path" : "Composition.relatesTo",
      "short" : "Relações que esta Composition tem com outras composições ou recursos",
      "definition" : "Relações que esta Composition tem com outras composições ou recursos"
    },
    {
      "id" : "Composition.relatesTo.id",
      "path" : "Composition.relatesTo.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Composition.relatesTo.extension",
      "path" : "Composition.relatesTo.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.relatesTo.modifierExtension",
      "path" : "Composition.relatesTo.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Composition.relatesTo.code",
      "path" : "Composition.relatesTo.code",
      "short" : "Código da asssociação da Composition",
      "definition" : "Código da asssociação da Composition",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/document-relationship-type"
      }
    },
    {
      "id" : "Composition.relatesTo.target[x]",
      "path" : "Composition.relatesTo.target[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Relacionamento alvo",
      "definition" : "Relacionamento alvo"
    },
    {
      "id" : "Composition.relatesTo.target[x]:targetReference",
      "path" : "Composition.relatesTo.target[x]",
      "sliceName" : "targetReference",
      "short" : "Referência à Composition alvo",
      "definition" : "Referência à Composition alvo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition"]
      }]
    },
    {
      "id" : "Composition.event",
      "path" : "Composition.event",
      "short" : "O serviço especializado  como uma colonoscopia ou uma apendicectomia, sendo documentado",
      "definition" : "O serviço especializado  como uma colonoscopia ou uma apendicectomia, sendo documentado"
    },
    {
      "id" : "Composition.event.id",
      "path" : "Composition.event.id",
      "short" : "Identificador  único para o elemento dentro de um recurso (para referências internas). Este pode ser qualquer valor de string que não contenha espaços",
      "definition" : "Identificador  único para o elemento dentro de um recurso (para referências internas). Este pode ser qualquer valor de string que não contenha espaços"
    },
    {
      "id" : "Composition.event.extension",
      "path" : "Composition.event.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.event.modifierExtension",
      "path" : "Composition.event.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Composition.event.code",
      "path" : "Composition.event.code",
      "short" : "Esta lista de códigos representa os principais atos clínicos, como uma colonoscopia ou uma apendicectomia, sendo documentados. Em alguns casos, o evento é inerente ao typeCode, como um 'Histórico e Relatório Físico', no qual o procedimento documentado é necessariamente um ato de 'Histórico e Físico'",
      "definition" : "Esta lista de códigos representa os principais atos clínicos, como uma colonoscopia ou uma apendicectomia, sendo documentados. Em alguns casos, o evento é inerente ao typeCode, como um 'Histórico e Relatório Físico', no qual o procedimento documentado é necessariamente um ato de 'Histórico e Físico'",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ActCode"
      }
    },
    {
      "id" : "Composition.event.period",
      "path" : "Composition.event.period",
      "short" : "O período de tempo coberto pela composition. Não há declaração de que a documentação seja uma representação completa para este período, apenas que documenta eventos durante esse tempo",
      "definition" : "O período de tempo coberto pela composition. Não há declaração de que a documentação seja uma representação completa para este período, apenas que documenta eventos durante esse tempo"
    },
    {
      "id" : "Composition.event.detail",
      "path" : "Composition.event.detail",
      "short" : "Referência aos eventos da Composition",
      "definition" : "Referência aos eventos da Composition"
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "short" : "A secção inicial da composition a partir da qual as demais seções são definidas",
      "definition" : "A secção inicial da composition a partir da qual as demais seções são definidas"
    },
    {
      "id" : "Composition.section.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elemento",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section.extension",
      "path" : "Composition.section.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section.modifierExtension",
      "path" : "Composition.section.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Composition.section.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção",
      "definition" : "Título da seção"
    },
    {
      "id" : "Composition.section.code",
      "path" : "Composition.section.code",
      "short" : "Um código que identifica o tipo de conteúdo contido dentro da seção. Isso deve ser consistente com o título da seção",
      "definition" : "Um código que identifica o tipo de conteúdo contido dentro da seção. Isso deve ser consistente com o título da seção",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/doc-section-codes"
      }
    },
    {
      "id" : "Composition.section.author",
      "path" : "Composition.section.author",
      "short" : "Referência à quem e/ou o que foi o autor desta seção",
      "definition" : "Referência à quem e/ou o que foi o autor desta seção",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Composition.section.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência ao recurso associado desta seção",
      "definition" : "Referência ao recurso associado desta seção"
    },
    {
      "id" : "Composition.section.text",
      "path" : "Composition.section.text",
      "short" : "Resumo em texto livre da seção",
      "definition" : "Resumo em texto livre da seção"
    },
    {
      "id" : "Composition.section.mode",
      "path" : "Composition.section.mode",
      "short" : "Método de processamento da seção",
      "definition" : "Método de processamento da seção",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/list-mode"
      }
    },
    {
      "id" : "Composition.section.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos itens nas section.entry",
      "definition" : "Ordem dos itens nas section.entry",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/list-empty-reason"
      }
    },
    {
      "id" : "Composition.section.entry",
      "path" : "Composition.section.entry",
      "short" : "Uma referência ao recurso a partir do qual a narrativa da seção é derivada",
      "definition" : "Uma referência ao recurso a partir do qual a narrativa da seção é derivada"
    },
    {
      "id" : "Composition.section.emptyReason",
      "path" : "Composition.section.emptyReason",
      "short" : "Explicação porquê a seção está vazia",
      "definition" : "Explicação porquê a seção está vazia"
    },
    {
      "id" : "Composition.section.section",
      "path" : "Composition.section.section",
      "short" : "Uma subseção aninhada dentro desta seção",
      "definition" : "Uma subseção aninhada dentro desta seção"
    }]
  }
}

```
