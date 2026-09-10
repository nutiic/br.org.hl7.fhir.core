# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-sumarioalta - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-sumarioalta**

## Resource Profile: br-core-sumarioalta 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-sumarioalta | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreSumarioAlta |

 
Este perfil representa as informações da alta hospitalar, conforme a [PORTARIA Nº 701, DE 29 DE SETEMBRO DE 2022](https://bvsms.saude.gov.br/bvs/saudelegis/Saes/2022/prt0701_19_10_2022.html). “O Sumário de Alta é um documento essencial para: 
* Apoiar a comunicação das informações do sumário de alta entre os diversos níveis de atenção de modo eficiente, efetivo e a tempo, contribuindo para uma atenção coordenada entre os cuidadores do indivíduo e apoiando a continuidade dos seus cuidados;
* Melhorar a qualidade da atenção em saúde e a segurança para o indivíduo com informações qualificadas, completas e oportunas que contribuam para uma conduta mais adequada às necessidades individuais de cada indivíduo e redução de efeitos adversos;
* Contribuir para reduzir o número de reinternações evitáveis;
* Garantir que um conjunto mínimo de informações clínicas padronizadas possa ser encaminhado e processado para múltiplos sistemas de informações em saúde, tais como prontuários eletrônicos dos indivíduos, registros eletrônicos em saúde e outros sistemas que utilizam as informações clínicas como insumos em seus processos de trabalho, facilitando a agregação e análise desses dados para tomada de decisão e produção de conhecimento;
* Reduzir o custo com entradas manuais, integrações, mapeamento de sistemas independentes e manutenção dos sistemas de informação em saúde;
* Prover aos desenvolvedores a especificação do conjunto de dados, mensagens de interface padronizada para a comunicação da alta, reduzindo o tempo entre o desenvolvimento e implantação da comunicação do sumário de alta;
* Promover a simplificação e padronização das comunicações sobre os eventos de saúde entre os diversos envolvidos na atenção à saúde;
* Alimentar o registro pessoal de saúde do indivíduo.”
 

### Escopo/Uso

Este perfil implementa o Sumário de Alta Hospitalar conforme modelo de informação publicado na [PORTARIA Nº 701, DE 29 DE SETEMBRO DE 2022](https://bvsms.saude.gov.br/bvs/saudelegis/Saes/2022/prt0701_19_10_2022.html).

Conforme a Portaria acima:

Este documento se aplica a todas as partes interessadas no processo de continuidade da assistência do indivíduo, incluindo:

* Estabelecimentos de saúde em processo de planejamento, implementação ou atualização de sistemas de informação de saúde
* Desenvolvedores de sistemas de informação de saúde;
* Administradores, gerentes e formuladores de políticas de saúde;
* Profissionais de saúde;
* Profissionais de Tecnologia da Informação e Comunicação (TIC); e
* Indivíduos em geral.

As seções do modelo de informação da [PORTARIA Nº 701](https://bvsms.saude.gov.br/bvs/saudelegis/Saes/2022/prt0701_19_10_2022.html) foram criadas no elemento br-core-composition conforme abaixo:

**Tabela 1. Mapeamento modelo de informação SA para br-core-sumarioalta**

| | |
| :--- | :--- |
| Nome da secção no modelo de informação SA | Nome da secção no br-core-sumarioalta |
| Motivo da admissão, diagnósticos relevantes e patologias associadas desenvolvidas na internação | Composition.section[diagnosticosAdmissao]Composition.section[diagnosticosAvaliados] |
| Alergias e/ou reações adversas na internação | Composition.section.[alergiasIntolerancias] |
| Procedimento(s) realizado(s) ou solicitado(s) | Composition.section[procedimentosRealizados] |
| Medicamentos prescritos na alta (não estruturado)Medicamentos prescritos na alta (estruturado) | Composition.section[prescricaoAlta] |
| Plano de cuidados, instruções e recomendações (na alta) | Composition.section[planoCuidados] |
| Restrições funcionais e incapacidades em saúde | Composition.section[capacidadeFuncional] |

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

**Tabela 2.Dados Obrigatórios no br-core-sumarioalta (*)**

| | |
| :--- | :--- |
| Composition.status | Cfme -[BREstadoDocumento](https://terminologia-br-ig.web.app/ValueSet-BREstadoDocumento) |
| Composition.type | Cfme -[BRTipoDocumento](https://terminologia-br-ig.web.app/ValueSet-BRTpoDocumento)fixo em “SA” |
| Composition.category | Cfme -[document-classcodes](http://hl7.org/fhir/ValueSet/document-classcodes)fixo em "[18842-5](http://details.loinc.org/LOINC/18842-5.html)" (Sumário de Alta) |
| Composition.section[diagnosticosAdmissao].code.coding.code | fixo em “42347-5” |
| Composition.section[diagnosticosAdmissao].code.coding.display | “Diagnóstico da Admissão” |
| Composition.section[alergiasIntolerancias].code.coding.code | fixo em “48765-2” |
| Composition.section[alergiasIntolerancias].code.coding.display | “Alergias e Reações Adversas” |
| Composition.section[diagnosticosAvaliados].code.coding.code | fixo em “11450-4 |
| Composition.section[diagnosticosAvaliados].code.coding.display | “Lista de Problemas” |
| Composition.section[procedimentosRealizados].code.coding.code | Fixo em “47519-4” |
| Composition.section[procedimentosRealizados].code.coding.display | “Histórico de Procedimentos” |
| Composition.section[prescricaoAlta].code.coding.code | Fixo em “8654-6” |
| Composition.section[prescricaoAlta].code.coding.display | “Medicações da alta hospitalar” |
| Composition.section[planoCuidados].code.coding.code | Fixo em “18776-5” |
| Composition.section[planoCuidados].code.coding.display | “Plano de Cuidados” |
| Composition.section[capacidadeFuncional].code | Fixo em “54522-8” |
| Composition.section[capacidadeFuncional].code.coding.display | “Capacidade Funcional” |

(*) códigos LOINC traduzidos cfme https://terminologia.saude.gov.br/CodeSystem/loinc

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-sumarioalta.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [BRCoreComposition](StructureDefinition-br-core-composition.md) 

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [BRCoreComposition](StructureDefinition-br-core-composition.md) 

** Resumo **

Obrigatório: 7 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [br-core-allergyintolerance (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance)](StructureDefinition-br-core-allergyintolerance.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCoreCapacidadeFuncional (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-capacidadefuncional)](StructureDefinition-br-core-capacidadefuncional.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Composition.section

 **Visão diferencial** 

Esta estrutura é derivada de [BRCoreComposition](StructureDefinition-br-core-composition.md) 

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [BRCoreComposition](StructureDefinition-br-core-composition.md) 

** Resumo **

Obrigatório: 7 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [br-core-allergyintolerance (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance)](StructureDefinition-br-core-allergyintolerance.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCoreCapacidadeFuncional (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-capacidadefuncional)](StructureDefinition-br-core-capacidadefuncional.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Composition.section

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-sumarioalta.csv), [Excel](StructureDefinition-br-core-sumarioalta.xlsx), [Schematron](StructureDefinition-br-core-sumarioalta.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-sumarioalta",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-sumarioalta",
  "version" : "1.1.0",
  "name" : "BRCoreSumarioAlta",
  "title" : "br-core-sumarioalta",
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
  "description" : "Este perfil representa as informações da alta hospitalar, conforme a [PORTARIA Nº 701, DE 29 DE SETEMBRO DE 2022](https://bvsms.saude.gov.br/bvs/saudelegis/Saes/2022/prt0701_19_10_2022.html).\n“O Sumário de Alta é um documento essencial para: \n-\tApoiar a comunicação das informações do sumário de alta entre os diversos níveis de atenção de modo eficiente, efetivo e a tempo, contribuindo para uma atenção coordenada entre os cuidadores do indivíduo e apoiando a continuidade dos seus cuidados;\n-\tMelhorar a qualidade da atenção em saúde e a segurança para o indivíduo com informações qualificadas, completas e oportunas que contribuam para uma conduta mais adequada às necessidades individuais de cada indivíduo e redução de efeitos adversos;\n-\tContribuir para reduzir o número de reinternações evitáveis;\n-\tGarantir que um conjunto mínimo de informações clínicas padronizadas possa ser encaminhado e processado para múltiplos sistemas de informações em saúde, tais como prontuários eletrônicos dos indivíduos, registros eletrônicos em saúde e outros sistemas que utilizam as informações clínicas como insumos em seus processos de trabalho, facilitando a agregação e análise desses dados para tomada de decisão e produção de conhecimento;\n-\tReduzir o custo com entradas manuais, integrações, mapeamento de sistemas independentes e manutenção dos sistemas de informação em saúde;\n-\tProver aos desenvolvedores a especificação do conjunto de dados, mensagens de interface padronizada para a comunicação da alta, reduzindo o tempo entre o desenvolvimento e implantação da comunicação do sumário de alta;\n-\tPromover a simplificação e padronização das comunicações sobre os eventos de saúde entre os diversos envolvidos na atenção à saúde;\n-\tAlimentar o registro pessoal de saúde do indivíduo.”\n",
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
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.category",
      "path" : "Composition.category",
      "max" : "1"
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "short" : "Seções do sumário de alta",
      "definition" : "Seções do sumário de alta",
      "min" : 7,
      "max" : "7"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao",
      "path" : "Composition.section",
      "sliceName" : "diagnosticosAdmissao",
      "short" : "Seção de Resumo de Diagnósticos Admissão",
      "definition" : "Seção de Resumo de Diagnósticos Admissão",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Diagnósticos Admissão'",
      "definition" : "Título da seção - Fixo em 'Diagnósticos Admissão'"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "42347-5"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Admission Diagnosis"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.entry",
      "path" : "Composition.section.entry",
      "short" : "Medicamentos relevantes para o sumário internacional do paciente",
      "definition" : "Medicamentos relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition"]
      }]
    },
    {
      "id" : "Composition.section:diagnosticosAdmissao.emptyReason",
      "path" : "Composition.section.emptyReason",
      "short" : "Explicação porquê a secção está vazia",
      "definition" : "Explicação porquê a secção está vazia"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias",
      "path" : "Composition.section",
      "sliceName" : "alergiasIntolerancias",
      "short" : "Seção de Alergias e Intolerâncias",
      "definition" : "Seção de Alergias e Intolerâncias",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Alergias e Intolerâncias'",
      "definition" : "Título da seção - Fixo em 'Alergias e Intolerâncias'"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "48765-2"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Allergies and adverse reactions Document"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.entry",
      "path" : "Composition.section.entry",
      "short" : "Alergias e Intolerâncias relevantes para o sumário internacional do paciente",
      "definition" : "Alergias e Intolerâncias relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance"]
      }]
    },
    {
      "id" : "Composition.section:alergiasIntolerancias.emptyReason",
      "path" : "Composition.section.emptyReason",
      "short" : "Explicação porquê a secção está vazia",
      "definition" : "Explicação porquê a secção está vazia"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados",
      "path" : "Composition.section",
      "sliceName" : "diagnosticosAvaliados",
      "short" : "Seção de Resumo de Diagnósticos Avaliados",
      "definition" : "Seção de Resumo de Diagnósticos Avaliados",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Diagnósticos Avaliados'",
      "definition" : "Título da seção - Fixo em 'Diagnósticos Avaliados'"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "57852-6"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Problem List"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.entry",
      "path" : "Composition.section.entry",
      "short" : "Diagnósticos relevantes para o sumário internacional do paciente",
      "definition" : "Diagnósticos relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition"]
      }]
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados.emptyReason",
      "path" : "Composition.section.emptyReason",
      "short" : "Explicação porquê a secção está vazia",
      "definition" : "Explicação porquê a secção está vazia"
    },
    {
      "id" : "Composition.section:procedimentosRealizados",
      "path" : "Composition.section",
      "sliceName" : "procedimentosRealizados",
      "short" : "Seção de Resumo de Procedimentos Realizados",
      "definition" : "Seção de Resumo de Procedimentos Realizados",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Procedimentos Realizados'",
      "definition" : "Título da seção - Fixo em 'Procedimentos Realizados'"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "47519-4"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "History of Procedures Document"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:procedimentosRealizados.entry",
      "path" : "Composition.section.entry",
      "short" : "Procedimentos realizados relevantes para o sumário internacional do paciente",
      "definition" : "Procedimentos realizados  relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure"]
      }]
    },
    {
      "id" : "Composition.section:procedimentosRealizados.emptyReason",
      "path" : "Composition.section.emptyReason",
      "short" : "Explicação porquê a secção está vazia",
      "definition" : "Explicação porquê a secção está vazia"
    },
    {
      "id" : "Composition.section:prescricaoAlta",
      "path" : "Composition.section",
      "sliceName" : "prescricaoAlta",
      "short" : "Seção de Resumo da Prescrição da Alta",
      "definition" : "Seção de Resumo da Prescrição da Alta",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:prescricaoAlta.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:prescricaoAlta.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Prescrição da Alta'",
      "definition" : "Título da seção - Fixo em 'Prescrição da Alta'"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "8654-6"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Hospital discharge medications"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:prescricaoAlta.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:prescricaoAlta.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:prescricaoAlta.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:prescricaoAlta.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:prescricaoAlta.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:prescricaoAlta.entry",
      "path" : "Composition.section.entry",
      "short" : "Prescrição da alta para o sumário internacional do paciente",
      "definition" : "Prescrição da alta para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest"]
      }]
    },
    {
      "id" : "Composition.section:prescricaoAlta.emptyReason",
      "path" : "Composition.section.emptyReason",
      "short" : "Explicação porquê a secção está vazia",
      "definition" : "Explicação porquê a secção está vazia"
    },
    {
      "id" : "Composition.section:planoCuidados",
      "path" : "Composition.section",
      "sliceName" : "planoCuidados",
      "short" : "Seção de Resumo de Planos de Cuidado",
      "definition" : "Seção de Resumo de Planos de Cuidado",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:planoCuidados.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:planoCuidados.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Planos de Cuidado'",
      "definition" : "Título da seção - Fixo em 'Planos de Cuidado'"
    },
    {
      "id" : "Composition.section:planoCuidados.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:planoCuidados.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:planoCuidados.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:planoCuidados.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:planoCuidados.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:planoCuidados.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:planoCuidados.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:planoCuidados.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:planoCuidados.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "18776-5"
    },
    {
      "id" : "Composition.section:planoCuidados.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Plan of care note"
    },
    {
      "id" : "Composition.section:planoCuidados.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:planoCuidados.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:planoCuidados.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:planoCuidados.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:planoCuidados.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:planoCuidados.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:planoCuidados.entry",
      "path" : "Composition.section.entry",
      "short" : "Planos de cuidado relevantes para o sumário internacional do paciente",
      "definition" : "Planos de cuidado relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan"]
      }]
    },
    {
      "id" : "Composition.section:planoCuidados.emptyReason",
      "path" : "Composition.section.emptyReason",
      "short" : "Explicação porquê a secção está vazia",
      "definition" : "Explicação porquê a secção está vazia"
    },
    {
      "id" : "Composition.section:capacidadeFuncional",
      "path" : "Composition.section",
      "sliceName" : "capacidadeFuncional",
      "short" : "Seção de Resumo de Capacidade Funcional",
      "definition" : "Seção de Resumo de Capacidade Funcional",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Capacidade Funcional'",
      "definition" : "Título da seção - Fixo em 'Capacidade Funcional'"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "54522-8"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Functional status"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:capacidadeFuncional.entry",
      "path" : "Composition.section.entry",
      "short" : "Capacidade funcional para o sumário internacional do paciente",
      "definition" : "Capacidade funcional para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-capacidadefuncional"]
      }]
    },
    {
      "id" : "Composition.section:capacidadeFuncional.emptyReason",
      "path" : "Composition.section.emptyReason",
      "short" : "Explicação porquê a secção está vazia",
      "definition" : "Explicação porquê a secção está vazia"
    }]
  }
}

```
