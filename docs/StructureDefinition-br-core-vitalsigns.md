# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreVitalSigns - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreVitalSigns**

## Resource Profile: BRCoreVitalSigns 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-vitalsigns | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreVitalSigns |

 
Este perfil é baseado no perfil [VitalSigns](http://hl7.org/fhir/R4/observation-vitalsigns.html) e define restrições adicionais no recurso Observation para representar Observation de sinais vitais. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes no recurso e restringe como os elementos são usados. 

### Escopo/Uso

Os sinais vitais são observações físicas que indicam as funções de sustentação da vida do corpo. Eles são realizados para avaliar a saúde física geral, dar pistas sobre possíveis estados de doença ou para mostrar progresso em direção à recuperação. É necessária que exista uma estrutura única e vocabulários padrão para representar cada sinal vital, e permitir o acesso onipresente e a reutilização das Observation dos sinais vitais. Principalmente com o uso de vestíveis pelos pacientes onde desejam ou precisam compartilhar informações desses dispositivos. Para atender a esta necessidade, deve haver um vocabulário consistente e uma sintaxe comum para alcançar a interoperabilidade semântica.

O objetivo do perfil de [VitalSigns](https://hl7.org/fhir/R4/observation-vitalsigns.html) neste guia de implementação é fornecer um mecanismo para capturar as observações de sinais vitais associados a um paciente informado pelos perfis da RNDS que incluem os sinais vitais, ou seja, pressão arterial, temperatura corporal, frequência cardíaca e frequência respiratória. Também é possível incluir outros achados clínicos neste perfil, tais como: como altura, peso, índice de massa corporal, perímetro cefálico, oximetria de pulso e circunferência abdominal. Em particular, podem ser incluídos sinais vitais notáveis ou achados físicos, como os mais recentes, máximos e/ou mínimos, linha de base ou tendências relevantes.

### Cenários de uso

As informações de sinais vitais são enviadas para a RNDS a partir do Sumário do Atendimento Clínico (RAC). No RAC essas informações foram incluídas na Structure Definition BRMedidaObservada, que contém um valueset, BRTipoObservacao-1.0 para categorizar os tipos de observações registradas, as quais, além de observações de sinais vitais, incluem vários outros tipos de observações que não são pertinentes ao perfil br-core-observationvitalsigns.

### Caso de uso da RNDS

Apenas os conceitos relacionados ao perfil Sinais Vitais serão apresentados no perfil br-core-vitalsigns. O curador de sumário identificará que se trata de uma estrutura de BRMedidaObservada e testará o código LOINC enviado no elemento value.

A Tabela 1 representa o conjunto mínimo de conceitos de sinais vitais e os códigos LOINC que serão usados para representar observações de sinais vitais RNDS no IPS.

**Tabela 1. Sinais Vitais expressos no ValueSet BRSinaisVitais**

| | | | |
| :--- | :--- | :--- | :--- |
| 8302-2 | [Altura](https://hl7.org/fhir/R4/bodyheight.html) | Altura do corpo | cm, [in_i] |
| 9843-4 | [Perímetro cefálico](https://hl7.org/fhir/R4/headcircum.html) | Circunferência occipital-frontal da cabeça | cm, [in_i] |
| 29463-7 | [Peso corporal](https://hl7.org/fhir/R4/bodyweight.html) | Peso corporal | g, Kg, [lb_av] |
| 8480-6 | [Pressão arterial sistólica](https://hl7.org/fhir/R4/bp.html) | Pressão arterial sistólica | Mm[Hg] |
| 8462-4 | [Pressão sanguínea diastólica](https://hl7.org/fhir/R4/bp.html) | Pressão sanguínea diastólica | Mm[Hg] |
| 8280-0 | Circunferência abdominal | Circunferência da cintura no umbigo por fita métrica | cm, [in_i] |
| 9279-1 | Frequência respiratória | Frequência respiratória | /min |
| 8867-4 | Frequência cardíaca | Frequência cardíaca | /min |
| 2708-6 | Saturação de Oxigênio | Saturação de Oxigênio | % |
| 8310-5 | Temperatura corporal | Temperatura corporal | Cel, [degF] |
| 39156-5 | IMC | IMC – Índice de massa corporal | kg/m2 |

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos são obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada Observation-VitalSigns deve ter:**

1. um status,
1. um código de categoria de ‘sinais vitais’,
1. um “valor” que informa o que está sendo medido,
* A terminologia LOINC foi a escolhida para representar os “valores” dos sinais vitais uma vez que esta é terminologia mais utilizada na maioria dos países para representar este tipo de observação. Os implementadores que precisam usar um sistema de código diferente podem mapear adequadamente seus códigos locais para a terminologia.

1. um paciente,
1. um horário que indica quando a medição foi feita

**Cada Observation-VitalSigns deve oferecer suporte a:**

1. um valor de resultado numérico e uma unidade UCUM padrão.
* nota: se não houver resultado numérico, deverá ser fornecido um motivo

1. uma razão, se o valor estiver ausente
1. resultados dos componentes

### Orientações de implementação específicas do perfil

Não se aplica.

### Limites e relacionamentos

Não se aplica.

**Usos:**

* Refere a este Perfil: [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) and [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-vitalsigns.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [observation-vitalsigns](http://hl7.org/fhir/R4/vitalsigns.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [observation-vitalsigns](http://hl7.org/fhir/R4/vitalsigns.html) 

** Resumo **

Obrigatório: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [br-core-medicationdispense (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense)](StructureDefinition-br-core-medicationdispense.md)
* [br-core-medicationstatement (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement)](StructureDefinition-br-core-medicationstatement.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreImmunization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-immunization)](StructureDefinition-br-core-immunization.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreSpecimen (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen)](StructureDefinition-br-core-specimen.md)
* [BRCoreVitalSigns (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-vitalsigns)](StructureDefinition-br-core-vitalsigns.md)

 **Visão diferencial** 

Esta estrutura é derivada de [observation-vitalsigns](http://hl7.org/fhir/R4/vitalsigns.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [observation-vitalsigns](http://hl7.org/fhir/R4/vitalsigns.html) 

** Resumo **

Obrigatório: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [br-core-medicationdispense (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense)](StructureDefinition-br-core-medicationdispense.md)
* [br-core-medicationstatement (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement)](StructureDefinition-br-core-medicationstatement.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreImmunization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-immunization)](StructureDefinition-br-core-immunization.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreRelatedPerson (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson)](StructureDefinition-br-core-relatedperson.md)
* [BRCoreSpecimen (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen)](StructureDefinition-br-core-specimen.md)
* [BRCoreVitalSigns (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-vitalsigns)](StructureDefinition-br-core-vitalsigns.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-vitalsigns.csv), [Excel](StructureDefinition-br-core-vitalsigns.xlsx), [Schematron](StructureDefinition-br-core-vitalsigns.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-vitalsigns",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-vitalsigns",
  "version" : "1.1.0",
  "name" : "BRCoreVitalSigns",
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
  "description" : "Este perfil é baseado no perfil [VitalSigns](http://hl7.org/fhir/R4/observation-vitalsigns.html) e define restrições adicionais no recurso Observation para representar Observation de sinais vitais. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes no recurso e restringe como os elementos são usados. ",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/vitalsigns",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.id",
      "path" : "Observation.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "Observation.meta",
      "path" : "Observation.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "Observation.implicitRules",
      "path" : "Observation.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "Observation.language",
      "path" : "Observation.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "Observation.text",
      "path" : "Observation.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "Observation.contained",
      "path" : "Observation.contained",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "Observation.modifierExtension",
      "path" : "Observation.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "short" : "Referência ao pedido ou ao plano de tratamento que gerou este recurso",
      "definition" : "Referência ao pedido ou ao plano de tratamento que gerou este recurso",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan",
        "http://hl7.org/fhir/StructureDefinition/DeviceRequest",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest",
        "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest"]
      }]
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "short" : "Referência ao evento do qual este recurso faz parte",
      "definition" : "Referência ao evento do qual este recurso faz parte",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-immunization",
        "http://hl7.org/fhir/StructureDefinition/ImagingStudy"]
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Status atual da observação",
      "definition" : "active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-taken"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "short" : "Categoria de alto nível da observação",
      "definition" : "Categoria de alto nível da observação"
    },
    {
      "id" : "Observation.category:VSCat",
      "path" : "Observation.category",
      "sliceName" : "VSCat",
      "short" : "Classificação do tipo de observação",
      "definition" : "Classificação do tipo de observação"
    },
    {
      "id" : "Observation.category:VSCat.id",
      "path" : "Observation.category.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Observation.category:VSCat.extension",
      "path" : "Observation.category.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Observation.category:VSCat.coding",
      "path" : "Observation.category.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Observation.category:VSCat.coding.id",
      "path" : "Observation.category.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Observation.category:VSCat.coding.extension",
      "path" : "Observation.category.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Observation.category:VSCat.coding.system",
      "path" : "Observation.category.coding.system",
      "short" : "Identidade do sistema de terminologia",
      "definition" : "Identidade do sistema de terminologia"
    },
    {
      "id" : "Observation.category:VSCat.coding.version",
      "path" : "Observation.category.coding.version",
      "short" : "Versão do sistema, se relevante",
      "definition" : "Versão do sistema, se relevante"
    },
    {
      "id" : "Observation.category:VSCat.coding.code",
      "path" : "Observation.category.coding.code",
      "short" : "Símbolo na sintaxe definida pelo sistema",
      "definition" : "Símbolo na sintaxe definida pelo sistema"
    },
    {
      "id" : "Observation.category:VSCat.coding.display",
      "path" : "Observation.category.coding.display",
      "short" : "Representação definida pelo sistema",
      "definition" : "Representação definida pelo sistema"
    },
    {
      "id" : "Observation.category:VSCat.coding.userSelected",
      "path" : "Observation.category.coding.userSelected",
      "short" : "Se a codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se a codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Observation.category:VSCat.text",
      "path" : "Observation.category.text",
      "short" : "Representação em texto simples do conceito",
      "definition" : "Representação em texto simples do conceito"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Código definido pela sintaxe do sistema de terminologia",
      "definition" : "Código definido pela sintaxe do sistema de terminologia",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRSinaisVitais"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "Referência ao paciente desta observação",
      "definition" : "Referência ao paciente desta observação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "short" : "Referência à recursos associados",
      "definition" : "Referência à recursos associados"
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "short" : "Referência ao atendimento desta observação",
      "definition" : "Referência ao atendimento desta observação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Tempo ou período de tempo clinicamente relevante para os sinais vitais",
      "definition" : "Tempo ou período de tempo clinicamente relevante para os sinais vitais"
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "short" : "Data ou hora em que esta versão da observação ficou disponível",
      "definition" : "Data ou hora em que esta versão da observação ficou disponível",
      "min" : 1
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "O responsável pela captura da observação",
      "definition" : "O responsável pela captura da observação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Valor dos sinais vitais",
      "definition" : "Valor dos sinais vitais",
      "min" : 1
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "short" : "Por que o resultado não está disponível",
      "definition" : "Por que o resultado não está disponível"
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "short" : "Interpretação da observação",
      "definition" : "Interpretação da observação. Por exemplo: valor alto, baixo, normal"
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Comentários sobre a observação",
      "definition" : "Comentários sobre a observação"
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "short" : "Local anatômico associado ao procedimento",
      "definition" : "Local anatômico associado ao procedimento",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Método utilizado para capturar o sinal vital",
      "definition" : "Método utilizado para capturar o sinal vital"
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Referência à amostra associada nesta observação",
      "definition" : "Referência à amostra associada nesta observação",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen"]
      }]
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "Referência ao dispositivo (de medida) associado nesta observação",
      "definition" : "Referência ao dispositivo (de medida) associado nesta observação"
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "short" : "Limites de referência",
      "definition" : "Limites de referência"
    },
    {
      "id" : "Observation.referenceRange.id",
      "path" : "Observation.referenceRange.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Observation.referenceRange.extension",
      "path" : "Observation.referenceRange.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Observation.referenceRange.modifierExtension",
      "path" : "Observation.referenceRange.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Observation.referenceRange.low",
      "path" : "Observation.referenceRange.low",
      "short" : "Limite inferior do intervalo de valores de referência",
      "definition" : "Limite inferior do intervalo de valores de referência"
    },
    {
      "id" : "Observation.referenceRange.high",
      "path" : "Observation.referenceRange.high",
      "short" : "Limite superior do intervalo de referência",
      "definition" : "Limite superior do intervalo de referência"
    },
    {
      "id" : "Observation.referenceRange.type",
      "path" : "Observation.referenceRange.type",
      "short" : "Qualificador do valor de referência",
      "definition" : "Qualificador do valor de referência"
    },
    {
      "id" : "Observation.referenceRange.appliesTo",
      "path" : "Observation.referenceRange.appliesTo",
      "short" : "População alvo do intervalo de referência",
      "definition" : "População alvo do intervalo de referência"
    },
    {
      "id" : "Observation.referenceRange.age",
      "path" : "Observation.referenceRange.age",
      "short" : "Faixa etária aplicável ao intervalo de referência",
      "definition" : "Faixa etária aplicável ao intervalo de referência"
    },
    {
      "id" : "Observation.referenceRange.text",
      "path" : "Observation.referenceRange.text",
      "short" : "Intervalo de referência em linguagen natural",
      "definition" : "Intervalo de referência em linguagen natural"
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Referências utilizadas para relatar componentes do painel de sinais vitais",
      "definition" : "Referências utilizadas para relatar componentes do painel de sinais vitais",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Referência à medições relacionadas a partir das quais esta observação foi realizada",
      "definition" : "Referência à medições relacionadas a partir das quais esta observação foi realizada",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference",
        "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
        "http://hl7.org/fhir/StructureDefinition/Media",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-vitalsigns",
        "http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "Utilizado para relatar pressão sistólica e diastólica",
      "definition" : "Utilizado para relatar pressão sistólica e diastólica"
    },
    {
      "id" : "Observation.component.id",
      "path" : "Observation.component.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "Observation.component.extension",
      "path" : "Observation.component.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "Observation.component.modifierExtension",
      "path" : "Observation.component.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "short" : "Tipo de observação de componente"
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "O valor do sinal vital",
      "definition" : "O valor do sinal vital"
    },
    {
      "id" : "Observation.component.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "short" : "Por que o resultado do componente está faltando",
      "definition" : "Por que o resultado do componente está faltando"
    },
    {
      "id" : "Observation.component.interpretation",
      "path" : "Observation.component.interpretation",
      "short" : "Interpretação da observação",
      "definition" : "Interpretação da observação. Por exemplo: valor elevado"
    },
    {
      "id" : "Observation.component.referenceRange",
      "path" : "Observation.component.referenceRange",
      "short" : "Valores de referência",
      "definition" : "VValores de referência"
    }]
  }
}

```
