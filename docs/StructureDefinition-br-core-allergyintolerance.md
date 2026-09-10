# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-allergyintolerance - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-allergyintolerance**

## Resource Profile: br-core-allergyintolerance 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance | *Versão*:1.1.1 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreAllergyIntolerance |

 
Este perfil define as características mínimas para o recurso [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md) registrar, pesquisar e buscar alergias/reações adversas associadas a um paciente. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes e restringe como os elementos são usados. Além disso, fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção. 

### Cenários de uso:

Este recurso deve ser utilizado para registros de avaliação clínica de uma alergia ou intolerância; uma predisposição ou um risco potencial para um indivíduo de ter uma reação adversa em uma exposição futura à substância especificada, ou classe de substância.

Quando uma predisposição for identificada, deve-se registrar informações ou evidências sobre um evento de reação adversa/intolerância que seja caracterizado por qualquer resposta fisiológica prejudicial ou indesejável que seja específica do indivíduo e desencadeada pela exposição de um indivíduo à substância ou classe de substância identificada.

As substâncias incluem, mas não estão limitadas a: uma substância terapêutica administrada corretamente em uma dosagem apropriada para o indivíduo; alimentos; material derivado de plantas ou animais; ou veneno de picadas de insetos.

Alguns exemplos de cenários de uso para este perfil são:

* Consultar alergias e intolerâncias de um paciente.
* Registrar ou atualizar a alergia ou a intolerância de um paciente.

### Elementos de dados obrigatórios e que devem estar presentes (Must Support)

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada br-core-allergyintolerance deve ter:**

1. um paciente
1. um estado clínico da alergia (por exemplo, ativa ou resolvida)
1. um código que informa a que o paciente é alérgico

**Cada br-core-allergyintolerance deve oferecer suporte a:**

1. o tipo da reação;
1. o código;
1. a reação - eventos de reação adversa relacionados à exposição da substância;
1. o código para a manifestação de reação de alergia ou intolerância do subconjunto SNOMED uma manifestação de reação;
1. a severidade.

### Orientações de implementação específicas do perfil

Se o paciente não for questionado sobre suas alergias o status da verificação da alergia (br-core.allergyintolerance.verificationStatus) deve ser representado como “não confirmado”.

### Limites e relacionamentos

Este recurso é usado para fornecer um único local dentro do registro eletrônico de saúde para documentar declarações clínicas sobre reações adversas a substâncias/produtos, incluindo:

* registrar uma avaliação clínica da propensão do paciente a uma potencial reação futura após reexposição;
* registrar informações cumulativas sobre a reação a cada exposição, incluindo “nenhuma reação”, se apropriado.

Use para registrar informações sobre a presença positiva do risco de uma reação adversa:

* para apoiar o atendimento clínico direto de um indivíduo;
* como parte de uma lista de reações adversas ou alergias/intolerâncias controladas;
* para apoiar a troca de informações sobre a propensão e eventos relacionados a reações adversas;
* para informar relatórios de reações adversas;
* para auxiliar atividades informatizadas baseadas em conhecimento, como suporte à decisão clínica e alertas.

Use para registrar informações sobre reações adversas a uma ampla gama de substâncias, incluindo: produtos biológicos e sanguíneos; incipientes e excipientes em preparações medicinais; alimentos; sais metálicos; e compostos químicos orgânicos.

**Usos:**

* Refere a este Perfil: [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) and [br-core-sumarioalta](StructureDefinition-br-core-sumarioalta.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-allergyintolerance.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [AllergyIntolerance](http://hl7.org/fhir/R4/allergyintolerance.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [AllergyIntolerance](http://hl7.org/fhir/R4/allergyintolerance.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)

 **Visão diferencial** 

Esta estrutura é derivada de [AllergyIntolerance](http://hl7.org/fhir/R4/allergyintolerance.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [AllergyIntolerance](http://hl7.org/fhir/R4/allergyintolerance.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-allergyintolerance.csv), [Excel](StructureDefinition-br-core-allergyintolerance.xlsx), [Schematron](StructureDefinition-br-core-allergyintolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-allergyintolerance",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance",
  "version" : "1.1.1",
  "name" : "BRCoreAllergyIntolerance",
  "title" : "br-core-allergyintolerance",
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
  "description" : "Este perfil define as características mínimas para o recurso [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.html) registrar, pesquisar e buscar alergias/reações adversas associadas a um paciente. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes e restringe como os elementos são usados. Além disso, fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção. ",
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
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.id",
      "path" : "AllergyIntolerance.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "AllergyIntolerance.meta",
      "path" : "AllergyIntolerance.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "AllergyIntolerance.implicitRules",
      "path" : "AllergyIntolerance.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "AllergyIntolerance.language",
      "path" : "AllergyIntolerance.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "AllergyIntolerance.text",
      "path" : "AllergyIntolerance.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "AllergyIntolerance.contained",
      "path" : "AllergyIntolerance.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "AllergyIntolerance.extension",
      "path" : "AllergyIntolerance.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "AllergyIntolerance.modifierExtension",
      "path" : "AllergyIntolerance.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "AllergyIntolerance.identifier",
      "path" : "AllergyIntolerance.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "short" : "O estado clínico da alergia ou intolerância",
      "definition" : "O estado clínico da alergia ou intolerância"
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "short" : "Declaração sobre a certeza associada a uma propensão, ou risco potencial, de uma reação à substância identificada",
      "definition" : "Declaração sobre a certeza associada a uma propensão, ou risco potencial, de uma reação à substância identificada"
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "short" : "Identificação do mecanismo fisiológico subjacente a um Risco de Reação",
      "definition" : "Identificação do mecanismo fisiológico subjacente a um Risco de Reação"
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "short" : "Categoria de uma substância identificada associada a alergias ou intolerâncias: comida | medicamento | ambiente | biológico",
      "definition" : "Categoria de uma substância identificada associada a alergias ou intolerâncias: comida | medicamento | ambiente | biológico"
    },
    {
      "id" : "AllergyIntolerance.criticality",
      "path" : "AllergyIntolerance.criticality",
      "short" : "Criticalidade da reação: baixo | alto | incapaz de avaliar",
      "definition" : "Criticalidade da reação: baixo | alto | incapaz de avaliar"
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "Tipo de substância/produto, condição de alergia ou intolerância ou ou código para alergia ausente/desconhecida",
      "definition" : "Tipo de substância/produto, condição de alergia ou intolerância ou ou código para alergia ausente/desconhecida",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRAlergenos"
      }
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "short" : "Referência do paciente",
      "definition" : "Referência do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "AllergyIntolerance.patient.id",
      "path" : "AllergyIntolerance.patient.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "AllergyIntolerance.patient.extension",
      "path" : "AllergyIntolerance.patient.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "AllergyIntolerance.patient.reference",
      "path" : "AllergyIntolerance.patient.reference",
      "short" : "Referência literal, URL relativa, interna ou absoluta",
      "definition" : "Referência literal, URL relativa, interna ou absoluta"
    },
    {
      "id" : "AllergyIntolerance.patient.type",
      "path" : "AllergyIntolerance.patient.type",
      "short" : "Tipo ao qual a referência se refere (por exemplo: Paciente)",
      "definition" : "Tipo ao qual a referência se refere (por exemplo: Paciente)"
    },
    {
      "id" : "AllergyIntolerance.patient.identifier",
      "path" : "AllergyIntolerance.patient.identifier",
      "short" : "Referência lógica, quando a referência literal não é conhecida",
      "definition" : "Referência lógica, quando a referência literal não é conhecida"
    },
    {
      "id" : "AllergyIntolerance.patient.display",
      "path" : "AllergyIntolerance.patient.display",
      "short" : "Texto alternativo para o recurso",
      "definition" : "Texto alternativo para o recurso"
    },
    {
      "id" : "AllergyIntolerance.encounter",
      "path" : "AllergyIntolerance.encounter",
      "short" : "Quando a alergia ou intolerância foi afirmada",
      "definition" : "Quando a alergia ou intolerância foi afirmada",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "AllergyIntolerance.onset[x]",
      "path" : "AllergyIntolerance.onset[x]",
      "short" : "Quando a alergia ou a intolerância foi identificada",
      "definition" : "Quando a alergia ou a intolerância foi identificada"
    },
    {
      "id" : "AllergyIntolerance.recordedDate",
      "path" : "AllergyIntolerance.recordedDate",
      "short" : "Data em que a primeira versão da instância do recurso foi registrada",
      "definition" : "Data em que a primeira versão da instância do recurso foi registrada"
    },
    {
      "id" : "AllergyIntolerance.recorder",
      "path" : "AllergyIntolerance.recorder",
      "short" : "Quem registrou a alergia/reação adversa",
      "definition" : "Quem registrou a alergia/reação adversa",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "AllergyIntolerance.asserter",
      "path" : "AllergyIntolerance.asserter",
      "short" : "Fonte da informação sobre a alergia/reação adversa",
      "definition" : "Fonte da informação sobre a alergia/reação adversa",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "AllergyIntolerance.lastOccurrence",
      "path" : "AllergyIntolerance.lastOccurrence",
      "short" : "Data (/hora) da última ocorrência conhecida de uma reação",
      "definition" : "Data (/hora) da última ocorrência conhecida de uma reação"
    },
    {
      "id" : "AllergyIntolerance.note",
      "path" : "AllergyIntolerance.note",
      "short" : "Texto adicional não capturado em outros campos",
      "definition" : "Texto adicional não capturado em outros campos."
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "short" : "Eventos de reação adversa relacionados à exposição da substância",
      "definition" : "Eventos de reação adversa relacionados à exposição da substância"
    },
    {
      "id" : "AllergyIntolerance.reaction.id",
      "path" : "AllergyIntolerance.reaction.id",
      "short" : "ID exclusivo para referência entre elementos",
      "definition" : "ID exclusivo para referência entre elementos"
    },
    {
      "id" : "AllergyIntolerance.reaction.extension",
      "path" : "AllergyIntolerance.reaction.extension",
      "short" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas",
      "definition" : "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
    },
    {
      "id" : "AllergyIntolerance.reaction.modifierExtension",
      "path" : "AllergyIntolerance.reaction.modifierExtension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "AllergyIntolerance.reaction.substance",
      "path" : "AllergyIntolerance.reaction.substance",
      "short" : "Substância específica ou produto farmacêutico considerado responsável pelo evento",
      "definition" : "Substância específica ou produto farmacêutico considerado responsável pelo evento",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRAlergenos"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "short" : "Código para a manifestação de reação de alergia ou intolerância do subconjunto SNOMED International Patient Set (IPS) do SNOMED CT (IPS Free Set)",
      "definition" : "Código para a manifestação de reação de alergia ou intolerância do subconjunto SNOMED IPS do SNOMED CT (IPS Free Set)",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRReacoesAdversasMedDRA"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.description",
      "path" : "AllergyIntolerance.reaction.description",
      "short" : "Descrição do evento como um todo",
      "definition" : "Descrição do evento como um todo"
    },
    {
      "id" : "AllergyIntolerance.reaction.onset",
      "path" : "AllergyIntolerance.reaction.onset",
      "short" : "Data (/hora) em que as manifestações apareceram",
      "definition" : "Data (/hora) em que as manifestações apareceram"
    },
    {
      "id" : "AllergyIntolerance.reaction.severity",
      "path" : "AllergyIntolerance.reaction.severity",
      "short" : "Avaliação clínica da gravidade de um evento de reação: leve | moderado | grave (do evento como um todo)",
      "definition" : "Avaliação clínica da gravidade de um evento de reação: leve | moderado | grave (do evento como um todo)"
    },
    {
      "id" : "AllergyIntolerance.reaction.exposureRoute",
      "path" : "AllergyIntolerance.reaction.exposureRoute",
      "short" : "Como o sujeito foi exposto à substância",
      "definition" : "Como o sujeito foi exposto à substância",
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.note",
      "path" : "AllergyIntolerance.reaction.note",
      "short" : "Texto sobre evento não capturado em outros campos",
      "definition" : "Texto sobre evento não capturado em outros campos"
    }]
  }
}

```
