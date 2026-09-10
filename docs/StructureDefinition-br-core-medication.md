# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-medication - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-medication**

## Resource Profile: br-core-medication 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreMedication |

 
Este recurso é uma especialização do recurso FHIR R4 [Medication](https://hl7.org/fhir/R4/medication.html) usado principalmente para a identificação e definição de um medicamento para fins de prescrição, dispensação e administração de um medicamento, bem como para fazer declarações sobre medicamentos no Brasil 

### Escopo/Uso

Representar medicamentos na maioria dos ambientes de assistência á saúde é uma questão de identificar um item de uma lista e então transmitir uma referência para o item selecionado em um recurso relacionado ao paciente ou para outros aplicativos. Informações adicionais sobre o medicamento são frequentemente fornecidas para verificação humana, mas uma representação completa dos detalhes da composição e eficácia do medicamento é transmitida consultando dicionários de medicamentos por meio dos códigos que eles definem. Há algumas ocasiões em que é necessário identificar um pouco mais de detalhes, como quando dispensar um pacote contendo um medicamento específico requer a identificação do medicamento e do pacote ao mesmo tempo. Há também algumas ocasiões (por exemplo, formulações personalizadas) em que a composição de um medicamento deve ser representada. Nesses casos, os ingredientes do medicamento devem ser especificados junto com a quantidade contida, embora o recurso [Medication](https://hl7.org/fhir/R4/medication.html) não forneça detalhes completos.

O recurso [br-core-medication](StructureDefinition-br-core-medication.md) permite que os medicamentos sejam caracterizados pela forma do medicamento e pelo ingrediente (ou ingredientes), bem como pela forma como são embalados. O medicamento incluirá o(s) ingrediente(s) e sua(s) dosagem(ns) e a embalagem pode incluir a quantidade (por exemplo, número de comprimidos, volume, etc.) contida em um recipiente específico (por exemplo, 100 cápsulas de Amoxicilina 500mg por frasco).

O recurso [br-core-medication](StructureDefinition-br-core-medication.md) pode ser utilizado para descrever um produto composto (também conhecido como extemporâneo ou magistral) que é fabricado pela farmácia no momento da dispensação. Neste caso, haverá vários ingredientes que são tipicamente produtos químicos básicos (por exemplo, pó de hidrocortisona) e pode haver outros ingredientes que são produtos manufaturados (por exemplo, Glaxal Base).

Quando um medicamento inclui um pacote, ou seja medicamentos na apresentação “pack”, mais detalhes sobre a composição podem ser fornecidos. Um pacote tem um recipiente (caixa embalada a vácuo, jarra, etc.) e uma lista dos produtos ou outros pacotes que estão no pacote.

### Uso indevido

Este recurso não deve ser utilizado para representar dados que não sejam relacionados a medicamentos.

### Caso de uso

A RDNS utiliza a structuredefintion [BRPrescricaoMedicamento](https://simplifier.net/redenacionaldedadosemsaude/brprescricaomedicamento) para descrever a prescrição de medicamentos. Cada um dos medicamentos prescritos são descritos utilizando a structuredefinition [BRMedication](https://simplifier.net/redenacionaldedadosemsaude/brmedicamento) aqui descrita.

### Identificadores

Para identificação dos códigos do medicamento os identificadores da base nacional de medicamentos OBM-Ontologia Brasileira de Medicamentos serão utilizados.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes (definição obrigatória) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição de suporte obrigatório). Eles são apresentados abaixo em uma explicação simples e legível. Orientações e exemplos específicos do perfil também são fornecidos. As Visualizações Formais abaixo fornecem o resumo formal, as definições e os requisitos de terminologia.

**Cada medicamento deve ter:**

1. Um código de medicamento

**Orientação de implementação específica do perfil:**

1. Os conceitos da OBM são definidos como uma associação preferred.
1. Como a associação é[preferred](http://hl7.org/fhir/R4/terminologies.html#extensible)quando um código não está disponível, apenas o texto é permitido.
1. Quando o medicamento é composto e é uma lista de ingredientes, o código ainda está presente e pode conter apenas o texto.

### Extensões

Este perfil não possui extensões.

**Usos:**

* Refere a este Perfil: [br-core-medication](StructureDefinition-br-core-medication.md), [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md) and [BRCoreProcedure](StructureDefinition-br-core-procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-medication.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Medication](http://hl7.org/fhir/R4/medication.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Medication](http://hl7.org/fhir/R4/medication.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Medication.ingredient.item[x]

 **Visão diferencial** 

Esta estrutura é derivada de [Medication](http://hl7.org/fhir/R4/medication.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Medication](http://hl7.org/fhir/R4/medication.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [br-core-medication (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication)](StructureDefinition-br-core-medication.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Medication.ingredient.item[x]

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-medication.csv), [Excel](StructureDefinition-br-core-medication.xlsx), [Schematron](StructureDefinition-br-core-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-medication",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication",
  "version" : "1.1.0",
  "name" : "BRCoreMedication",
  "title" : "br-core-medication",
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
  "description" : "Este recurso é uma especialização do recurso FHIR R4 [Medication](https://hl7.org/fhir/R4/medication.html) usado principalmente para a identificação e definição de um medicamento para fins de prescrição, dispensação e administração de um medicamento, bem como para fazer declarações sobre medicamentos no Brasil",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.id",
      "path" : "Medication.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Medication.meta",
      "path" : "Medication.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Medication.implicitRules",
      "path" : "Medication.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Medication.language",
      "path" : "Medication.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Medication.text",
      "path" : "Medication.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Medication.contained",
      "path" : "Medication.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Medication.extension",
      "path" : "Medication.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Medication.modifierExtension",
      "path" : "Medication.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Medication.identifier",
      "path" : "Medication.identifier",
      "short" : "Identificadores para este recurso",
      "definition" : "Identificadores para este recurso"
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Código do medicamento",
      "definition" : "Código do medicamento"
    },
    {
      "id" : "Medication.status",
      "path" : "Medication.status",
      "short" : "Status do medicamento ativo| inativo| entrado com erro",
      "definition" : "Status do medicamento ativo| inativo| entrado com erro"
    },
    {
      "id" : "Medication.manufacturer",
      "path" : "Medication.manufacturer",
      "short" : "Referência ao fabricante do medicamento",
      "definition" : "Referência ao fabricante do medicamento",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "short" : "Forma famacêutica do medicamento",
      "definition" : "Forma famacêutica do medicamento",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-doseform"
      }
    },
    {
      "id" : "Medication.amount",
      "path" : "Medication.amount",
      "short" : "Quantidade de medicamento na embalagem",
      "definition" : "Quantidade de medicamento na embalagem"
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "short" : "Ingredientes do medicamento",
      "definition" : "Ingredientes do medicamento"
    },
    {
      "id" : "Medication.ingredient.id",
      "path" : "Medication.ingredient.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "Medication.ingredient.extension",
      "path" : "Medication.ingredient.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Medication.ingredient.modifierExtension",
      "path" : "Medication.ingredient.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que não podem ser ignoradas"
    },
    {
      "id" : "Medication.ingredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Ingrediente",
      "definition" : "O ingrediente ou conteúdo real Vinculante: Substâncias ativas de medicamentos - IPS (preferencial): Substâncias medicamentosas SNOMED CT"
    },
    {
      "id" : "Medication.ingredient.item[x]:itemReference",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemReference",
      "short" : "Referência à Substance ou br-core-medication",
      "definition" : "Referência à Substance ou br-core-medication",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication"]
      }]
    },
    {
      "id" : "Medication.ingredient.isActive",
      "path" : "Medication.ingredient.isActive",
      "short" : "Indica se este é o ingrediente ativo",
      "definition" : "Indica se este é o ingrediente ativo"
    },
    {
      "id" : "Medication.ingredient.strength",
      "path" : "Medication.ingredient.strength",
      "short" : "Quantidade do ingrediente presente",
      "definition" : "Quantidade do ingrediente presente"
    },
    {
      "id" : "Medication.batch",
      "path" : "Medication.batch",
      "short" : "Detalhes sobre medicamento na forma tack",
      "definition" : "Detalhes sobre medicamento na forma tack"
    },
    {
      "id" : "Medication.batch.id",
      "path" : "Medication.batch.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Medication.batch.extension",
      "path" : "Medication.batch.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Medication.batch.modifierExtension",
      "path" : "Medication.batch.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Medication.batch.lotNumber",
      "path" : "Medication.batch.lotNumber",
      "short" : "Número do lote do pack de medicamento",
      "definition" : "Número do lote do pack de medicamento"
    },
    {
      "id" : "Medication.batch.expirationDate",
      "path" : "Medication.batch.expirationDate",
      "short" : "Data de validade do pack do medicamento",
      "definition" : "Data de validade do pack do medicamento"
    }]
  }
}

```
