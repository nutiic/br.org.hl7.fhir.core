# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreSpecimen - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreSpecimen**

## Resource Profile: BRCoreSpecimen 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreSpecimen |

 
Este perfil restringe o recurso Specimen para representar as características de amostras biológicas no contexto de resultados laboratoriais integrados a um Sumário do Paciente. O recurso Specimen descreve uma amostra utilizada para análise laboratorial 

### Escopo/Uso

Este perfil define expectativas mínimas para o recurso Specimen registrar, pesquisar e buscar informações sobre substâncias associadas a um paciente sendo amostrado ou testado.

### Caso de uso

Alguns cenários de uso para este perfil são:

* retirado de uma entidade biológica, viva ou morta
* tirado de um objeto físico ou do ambiente

Algumas amostras são biológicos e podem conter um ou mais componentes, incluindo, mas não se limitando a moléculas celulares, células, tecidos, órgãos, fluidos corporais, embriões e produtos excretores do corpo.

O recurso de espécime abrange substâncias usadas para diagnóstico e testes ambientais. O foco do recurso de espécime é o processo de coleta, manutenção e processamento do espécime, bem como onde o espécime se originou. Isso é distinto do uso de Substância, que é usado somente quando esses outros aspectos não são relevantes.

### Caso de uso da RNDS

Na RNDS a amostra biológica é referenciado pelo perfil [BRAmostraBiologica](https://simplifier.net/RedeNacionaldeDadosemSaude/BRAmostraBiologica/) (Specimen) que verifica o tipo da amostra de um exame ou teste a partir do valueset [BRTipoAmostra](https://simplifier.net/redenacionaldedadosemsaude/valueset-brtipoamostra-1.0).

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada amostra biológica (Specimen) deve ter:**

1. o tipo da amostra biológica

**Cada amostra biológica (Specimen) deve oferecer suporte a:**

1. identificador(es) comercial(ais)
1. um identificador de acesso
1. um paciente

### Orientações de implementação específicas do perfil

Como a vinculação é extensível quando um código não está disponível, apenas texto é permitido.

Embora ambos Specimen.identifier e Specimen.accessionIdentifier sejam marcados como Deve suportar, o sistema do servidor não é obrigado a suportar ambos, mas **DEVE** suportar pelo menos um desses elementos. No entanto, o aplicativo cliente **DEVE** suportar ambos os elementos.

A condição da amostra é usada pelo laboratório para determinar a aceitabilidade de uma amostra para o teste solicitado. Uma condição de amostra individual pode ser aceitável para um teste e não para outro. A condição da amostra é normalmente fornecida quando a amostra não atende aos critérios de aceitabilidade do laboratório, independentemente de o teste ter sido realizado ou não.

Além dos critérios de busca de Specimen, os clientes podem solicitar que os recursos Specimen sejam incluídos com a consulta de recurso [Observation](https://hl7.org/fhir/R4/observation.html#Observation) ou [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html#DiagnosticReport).

### Limites e relacionamentos

Este recurso é referenciado por [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html#DiagnosticReport), [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html#ImagingStudy), [Media](https://hl7.org/fhir/R4/media.html#Media), [MolecularSequence](https://hl7.org/fhir/R4/molecularsequence.html#MolecularSequence), [Observation](https://hl7.org/fhir/R4/observation.html#Observation), [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest) e ele mesmo.

**Usos:**

* Refere a este Perfil: [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md), [BRCoreObservation](StructureDefinition-br-core-observation.md), [BRCoreSpecimen](StructureDefinition-br-core-specimen.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-specimen.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Specimen](http://hl7.org/fhir/R4/specimen.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Specimen](http://hl7.org/fhir/R4/specimen.html) 

** Resumo **

Obrigatório: 0 elemento(3 aninhado obrigatoriamente elementos)

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCoreSpecimen (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen)](StructureDefinition-br-core-specimen.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Specimen](http://hl7.org/fhir/R4/specimen.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Specimen](http://hl7.org/fhir/R4/specimen.html) 

** Resumo **

Obrigatório: 0 elemento(3 aninhado obrigatoriamente elementos)

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-location (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location)](StructureDefinition-br-core-location.md)
* [BRCoreSpecimen (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen)](StructureDefinition-br-core-specimen.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-specimen.csv), [Excel](StructureDefinition-br-core-specimen.xlsx), [Schematron](StructureDefinition-br-core-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-specimen",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen",
  "version" : "1.1.0",
  "name" : "BRCoreSpecimen",
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
  "description" : "Este perfil restringe o recurso Specimen para representar as características de amostras biológicas no contexto de resultados laboratoriais integrados a um Sumário do Paciente. O recurso Specimen descreve uma amostra utilizada para análise laboratorial",
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
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.id",
      "path" : "Specimen.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Specimen.meta",
      "path" : "Specimen.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Specimen.implicitRules",
      "path" : "Specimen.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Specimen.language",
      "path" : "Specimen.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Specimen.text",
      "path" : "Specimen.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Specimen.contained",
      "path" : "Specimen.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Specimen.extension",
      "path" : "Specimen.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Specimen.modifierExtension",
      "path" : "Specimen.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "Specimen.accessionIdentifier",
      "path" : "Specimen.accessionIdentifier",
      "short" : "Identificador atribuído pelo laboratório",
      "definition" : "Identificador atribuído pelo laboratório"
    },
    {
      "id" : "Specimen.status",
      "path" : "Specimen.status",
      "short" : "Status da amostra: disponível | indisponível | insatisfatório | inserido com erro: códigos que fornecem o status/disponibilidade de uma amostra",
      "definition" : "Status da amostra: disponível | indisponível | insatisfatório | inserido com erro: códigos que fornecem o status/disponibilidade de uma amostra"
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "short" : "Tipo de material que compõem a amostra",
      "definition" : "Tipo de material que compõem a amostra",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoAmostra"
      }
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "short" : "Referência de onde veio a amostra. Pode ser de paciente(s), de um local (por exemplo, a fonte de uma amostra ambiental) ou uma amostra de uma substância ou dispositivo",
      "definition" : "Referência de onde veio a amostra. Pode ser de paciente(s), de um local (por exemplo, a fonte de uma amostra ambiental) ou uma amostra de uma substância ou dispositivo",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/Substance",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "Specimen.subject.id",
      "path" : "Specimen.subject.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Specimen.subject.extension",
      "path" : "Specimen.subject.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Specimen.subject.reference",
      "path" : "Specimen.subject.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "Specimen.subject.type",
      "path" : "Specimen.subject.type",
      "short" : "Tipo ao qual a referência se refere (por exemplo, Paciente)",
      "definition" : "Tipo ao qual a referência se refere (por exemplo, Paciente)"
    },
    {
      "id" : "Specimen.subject.identifier",
      "path" : "Specimen.subject.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "Specimen.subject.display",
      "path" : "Specimen.subject.display",
      "short" : "Texto alternativo para o recurso",
      "definition" : "Texto alternativo para o recurso"
    },
    {
      "id" : "Specimen.receivedTime",
      "path" : "Specimen.receivedTime",
      "short" : "Data/hora em que a amostra foi recebida para processamento",
      "definition" : "Data/hora em que a amostra foi recebida para processamento"
    },
    {
      "id" : "Specimen.parent",
      "path" : "Specimen.parent",
      "short" : "Referencia a origem da amostra",
      "definition" : "Referencia a origem da amostra",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen"]
      }]
    },
    {
      "id" : "Specimen.request",
      "path" : "Specimen.request",
      "short" : "Referencia a requisição associada",
      "definition" : "Referencia a requisição associada",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest"]
      }]
    },
    {
      "id" : "Specimen.collection",
      "path" : "Specimen.collection",
      "short" : "Detalhes da coleta",
      "definition" : "Detalhes da coleta"
    },
    {
      "id" : "Specimen.collection.id",
      "path" : "Specimen.collection.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Specimen.collection.extension",
      "path" : "Specimen.collection.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Specimen.collection.modifierExtension",
      "path" : "Specimen.collection.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Specimen.collection.collector",
      "path" : "Specimen.collection.collector",
      "short" : "Referência ao profissional responsável pela coleta",
      "definition" : "Referência ao profissional responsável pela coleta",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"]
      }]
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "short" : "Data/Hora-Período da coleta",
      "definition" : "Data/Hora-Período da coleta",
      "min" : 1
    },
    {
      "id" : "Specimen.collection.duration",
      "path" : "Specimen.collection.duration",
      "short" : "Duração da coleta",
      "definition" : "Duracao da coleta"
    },
    {
      "id" : "Specimen.collection.quantity",
      "path" : "Specimen.collection.quantity",
      "short" : "Quantidade de amostra coletada",
      "definition" : "Quantidade de amostra coletada",
      "min" : 1
    },
    {
      "id" : "Specimen.collection.method",
      "path" : "Specimen.collection.method",
      "short" : "Método de coleta da amostra",
      "definition" : "Método de coleta da amostra",
      "min" : 1,
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/specimen-collection-method"
      }
    },
    {
      "id" : "Specimen.collection.bodySite",
      "path" : "Specimen.collection.bodySite",
      "short" : "Local anatômico de coleta da amostra",
      "definition" : "Local anatômico de coleta da amostra"
    },
    {
      "id" : "Specimen.collection.fastingStatus[x]",
      "path" : "Specimen.collection.fastingStatus[x]",
      "short" : "Tempo de jejum do paciente, se for o caso",
      "definition" : "Tempo de jejum do paciente, se for o caso"
    },
    {
      "id" : "Specimen.processing",
      "path" : "Specimen.processing",
      "short" : "Detalhes da etapa de processamento da amostra e respectivos passos",
      "definition" : "Detalhes da etapa de processamento da amostra e respectivos passos"
    },
    {
      "id" : "Specimen.processing.id",
      "path" : "Specimen.processing.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Specimen.processing.extension",
      "path" : "Specimen.processing.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Specimen.processing.modifierExtension",
      "path" : "Specimen.processing.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Specimen.processing.description",
      "path" : "Specimen.processing.description",
      "short" : "Texto que descreve o procedimento",
      "definition" : "Texto que descreve o procedimento"
    },
    {
      "id" : "Specimen.processing.procedure",
      "path" : "Specimen.processing.procedure",
      "short" : "Indica a etapa de tratamento aplicada a amostra",
      "definition" : "Indica a etapa de tratamento aplicada a amostra"
    },
    {
      "id" : "Specimen.processing.additive",
      "path" : "Specimen.processing.additive",
      "short" : "Referência ao material utilizado na etapa de processamento da amostra",
      "definition" : "Referência ao material utilizado na etapa de processamento da amostra"
    },
    {
      "id" : "Specimen.processing.time[x]",
      "path" : "Specimen.processing.time[x]",
      "short" : "Data e hora do processamento da amostra",
      "definition" : "Data e hora do processamento da amostra"
    },
    {
      "id" : "Specimen.container",
      "path" : "Specimen.container",
      "short" : "Recipiente que contém a amostra (tubo/lâmina, etc.)",
      "definition" : "Recipiente que contém a amostra (tubo/lâmina, etc.)"
    },
    {
      "id" : "Specimen.container.id",
      "path" : "Specimen.container.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Specimen.container.extension",
      "path" : "Specimen.container.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Specimen.container.modifierExtension",
      "path" : "Specimen.container.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "Specimen.container.identifier",
      "path" : "Specimen.container.identifier",
      "short" : "Id do recipiente",
      "definition" : "Id do recipiente que contém a amostra"
    },
    {
      "id" : "Specimen.container.description",
      "path" : "Specimen.container.description",
      "short" : "Descrição do recipiente",
      "definition" : "Descrição do recipiente que contém a amostra"
    },
    {
      "id" : "Specimen.container.type",
      "path" : "Specimen.container.type",
      "short" : "Tipo de recipiente associado a amostra",
      "definition" : "Tipo de recipiente associado a amostra"
    },
    {
      "id" : "Specimen.container.capacity",
      "path" : "Specimen.container.capacity",
      "short" : "Volume ou tamanho do recipiente",
      "definition" : "Volume ou tamanho do recipiente"
    },
    {
      "id" : "Specimen.container.specimenQuantity",
      "path" : "Specimen.container.specimenQuantity",
      "short" : "Quantidade de amostra no recipiente",
      "definition" : "Quantidade de amostra no recipiente"
    },
    {
      "id" : "Specimen.container.additive[x]",
      "path" : "Specimen.container.additive[x]",
      "short" : "Aditivo associado ao recipiente",
      "definition" : "Aditivo associado ao recipiente"
    },
    {
      "id" : "Specimen.condition",
      "path" : "Specimen.condition",
      "short" : "Condições da amostra",
      "definition" : "Condições da amostra",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0493"
      }
    },
    {
      "id" : "Specimen.note",
      "path" : "Specimen.note",
      "short" : "Comentários",
      "definition" : "Comentários"
    }]
  }
}

```
