# BR.GOV.SAUDE.BR-CORE.FHIR\BRCoreDiagnosticReport - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **BRCoreDiagnosticReport**

## Resource Profile: BRCoreDiagnosticReport 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport | *Versão*:1.1.0 |
| Active as of 2026-09-01 | *Nome computável*:BRCoreDiagnosticReport |

 
Este perfil restringe o recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) que representa as descobertas e a interpretação de testes diagnósticos realizados em pacientes, grupos de pacientes, dispositivos e locais, e/ou espécimes derivados destes. O relatório inclui contexto clínico, como solicitação e informações do provedor, e alguma mistura de resultados atômicos, imagens, interpretações textuais e codificadas, e representação formatada de relatórios diagnósticos 

### Escopo/Uso

O [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md) é um conjunto de informações que normalmente é fornecido por um serviço de diagnóstico quando as investigações são concluídas. As informações incluem uma mistura de resultados atômicos, relatórios de texto, imagens e códigos. A mistura varia dependendo da natureza do procedimento de diagnóstico e, às vezes, da natureza dos resultados de uma investigação específica. No FHIR, o relatório pode ser transmitido de várias maneiras, incluindo um [Documento](https://hl7.org/fhir/R4/documents.html), [API RESTful](https://hl7.org/fhir/R4/http.html) ou estrutura de [Mensagens](https://hl7.org/fhir/R4/messaging.html). Incluído em cada um deles, estaria o próprio recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html).

O recurso [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md) tem informações sobre o próprio relatório de diagnóstico, e sobre o sujeito e, no caso de testes laboratoriais, a amostra do relatório. Este recurso também pode se referir aos detalhes da solicitação e detalhes de observações atômicas ou instâncias de imagem. As conclusões do relatório podem ser expressas como um blob de texto simples, dados codificados estruturados ou como um relatório anexado totalmente formatado, como um PDF.

O recurso [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md) é adequado para os seguintes tipos de relatórios de diagnóstico:

* Laboratório (Química Clínica, Hematologia, Microbiologia, etc.)
* Patologia / Histopatologia / disciplinas relacionadas
* Exames de imagem (raio-x, tomografia computadorizada, ressonância magnética etc.)
* Outros diagnósticos - Cardiologia, Gastroenterologia etc.

O recurso [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md) não se destina a dar suporte à apresentação de resultados cumulativos (apresentação tabular de resultados passados e presentes no recurso). O recurso [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md) ainda não fornece suporte completo para relatórios estruturados detalhados de sequenciamento; isso está planejado para uma versão futura.

### Caso de uso

Exemplos de uso dos recursos do [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md) são: Laudo de densitometria óssea [https://hl7.org/fhir/r4/diagnosticreport-example-dxa.html]((https://hl7.org/fhir/r4/diagnosticreport-example-dxa.md)) Laudo de US de Abdomen [https://hl7.org/fhir/r4/diagnosticreport-example-ultrasound.xml]((https://hl7.org/fhir/r4/diagnosticreport-example-ultrasound.xml)) Laudo de Anatomia Patológica [https://hl7.org/fhir/r4/diagnosticreport-example-gingival-mass.html]((https://hl7.org/fhir/r4/diagnosticreport-example-gingival-mass.md))

### Caso de uso da RNDS

Este perfil ainda não está implementado na RNDS.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada Perfil DiagnosticReport deve ter:**

1. 

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Status - situação do relatório (registrado | disponível | cancelado | inserido-por-erro | desconhecido) |


1. Code – código LOINC para o relatório de diagnóstico
1. Media.link – link que referencia a imagem

### Cada Perfil DiagnosticReport deve oferecer suporte a:

Não há elementos.

### Limites e relacionamentos

Muitos processos de diagnóstico são procedimentos que geram observações e relatórios de diagnóstico. Em muitos casos, tal observação não requer uma representação explícita do procedimento usado para criar a observação, mas onde há detalhes de interesse sobre como o procedimento de diagnóstico foi realizado, o recurso Procedure é usado para descrever a atividade.

Em contraste com o recurso [br-core-observation](StructureDefinition-br-core-observation.md), o recurso [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md) normalmente inclui contexto clínico adicional e alguma mistura de resultados atômicos, imagens, relatórios de imagem, interpretação textual e codificada e representações formatadas. Relatórios de laboratório, relatórios de patologia e relatórios de imagem devem ser representados usando o recurso [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md). O recurso [br-core-observation](StructureDefinition-br-core-observation.md) é referenciado pelo [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md) para fornecer os resultados atômicos para uma investigação específica.

Se você tiver um relatório altamente estruturado, use o [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md) - ele tem suporte a dados e fluxo de trabalho. Detalhes sobre a solicitação de uma investigação diagnóstica são capturados nos vários recursos de “solicitação” (por exemplo, [br-core-servicerequest](StructureDefinition-br-core-servicerequest.md)) e permitem que o relatório se conecte a fluxos de trabalho clínicos. Para relatórios mais orientados por narrativas com menos fluxo de trabalho (histologia/necrotério, etc.), o recurso [br-core-composition](StructureDefinition-br-core-composition.md) seria mais apropriado.

As representações de imagem e mídia do relatório e imagens de suporte são referenciadas no recurso [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md). Os detalhes e instâncias de imagem reais podem ser referenciados diretamente no Diagnostic report usando o elemento “imaging” ou por referência indireta por meio dos recursos [br-core-imagingstudy](StructureDefinition-br-core-imagingStudy.md) que representam o conteúdo produzido em um estudo de imagem DICOM ou conjunto de Instâncias DICOM para um paciente.

Este recurso é referenciado por [br-core-careplan](StructureDefinition-br-core-careplan.md), [ChargeItem](https://hl7.org/fhir/R4/chargeitem.html#ChargeItem), [ClinicalImpression](https://hl7.org/fhir/R4/clinicalimpression.html#ClinicalImpression), [Communication](https://hl7.org/fhir/R4/communication.html#Communication), [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html#CommunicationRequest), [br-core-condition](StructureDefinition-br-core-condition.md), [Contract](https://hl7.org/fhir/R4/contract.html#Contract), [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html#DeviceRequest), [DeviceUseStatement](https://hl7.org/fhir/R4/deviceusestatement.html#DeviceUseStatement), [FamilyMemberHistory](https://hl7.org/fhir/R4/familymemberhistory.html#FamilyMemberHistory), [GuidanceResponse](https://hl7.org/fhir/R4/guidanceresponse.html#GuidanceResponse), [br-core-imagingstudy](StructureDefinition-br-core-imagingStudy.md), [br-core-immunization](StructureDefinition-br-core-immunization.md), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md), [br-core-procedure](StructureDefinition-br-core-procedure.md), [RequestGroup](https://hl7.org/fhir/R4/requestgroup.html#RequestGroup), [RiskAssessment](https://hl7.org/fhir/R4/riskassessment.html#RiskAssessment), [br-core-servicerequest](StructureDefinition-br-core-servicerequest.md) e [SupplyRequest](https://hl7.org/fhir/R4/supplyrequest.html#SupplyRequest).

**Usos:**

* Refere a este Perfil: [BRCoreCondition](StructureDefinition-br-core-condition.md), [BRCoreImmunization](StructureDefinition-br-core-immunization.md), [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md), [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md)... Show 2 more, [BRCoreProcedure](StructureDefinition-br-core-procedure.md) and [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-diagnosticreport.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreSpecimen (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen)](StructureDefinition-br-core-specimen.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)

**Extensões**

Esta estrutura refere-se a estas extensões:

* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport-conduta](StructureDefinition-br-core-diagnosticreport-conduta.md)

 **Visão diferencial** 

Esta estrutura é derivada de [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) 

** Resumo **

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [BRCoreServiceRequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest)](StructureDefinition-br-core-servicerequest.md)
* [BRCorePatient (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)](StructureDefinition-br-core-patient.md)
* [br-core-encounter (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)](StructureDefinition-br-core-encounter.md)
* [BRCorePractitioner (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner)](StructureDefinition-br-core-practitioner.md)
* [BRCorePractitionerRole (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole)](StructureDefinition-br-core-practitionerrole.md)
* [BRCoreOrganization (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)](StructureDefinition-br-core-organization.md)
* [BRCoreSpecimen (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen)](StructureDefinition-br-core-specimen.md)
* [BRCoreObservation (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)](StructureDefinition-br-core-observation.md)

**Extensões**

Esta estrutura refere-se a estas extensões:

* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport-conduta](StructureDefinition-br-core-diagnosticreport-conduta.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-diagnosticreport.csv), [Excel](StructureDefinition-br-core-diagnosticreport.xlsx), [Schematron](StructureDefinition-br-core-diagnosticreport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-diagnosticreport",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport",
  "version" : "1.1.0",
  "name" : "BRCoreDiagnosticReport",
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
  "description" : "Este perfil restringe o recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) que representa as descobertas e a interpretação de testes diagnósticos realizados em pacientes, grupos de pacientes, dispositivos e locais, e/ou espécimes derivados destes. O relatório inclui contexto clínico, como solicitação e informações do provedor, e alguma mistura de resultados atômicos, imagens, interpretações textuais e codificadas, e representação formatada de relatórios diagnósticos",
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
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.id",
      "path" : "DiagnosticReport.id",
      "short" : "Identificador lógico deste artefato",
      "definition" : "Identificador lógico deste artefato"
    },
    {
      "id" : "DiagnosticReport.meta",
      "path" : "DiagnosticReport.meta",
      "short" : "Metadados sobre o recurso",
      "definition" : "Metadados sobre o recurso"
    },
    {
      "id" : "DiagnosticReport.implicitRules",
      "path" : "DiagnosticReport.implicitRules",
      "short" : "Um conjunto de regras sob as quais este conteúdo foi criado",
      "definition" : "Um conjunto de regras sob as quais este conteúdo foi criado"
    },
    {
      "id" : "DiagnosticReport.language",
      "path" : "DiagnosticReport.language",
      "short" : "Idioma do recurso",
      "definition" : "Idioma do recurso"
    },
    {
      "id" : "DiagnosticReport.text",
      "path" : "DiagnosticReport.text",
      "short" : "Resumo do texto do recurso em linguagem natural",
      "definition" : "Resumo do texto do recurso em linguagem natural"
    },
    {
      "id" : "DiagnosticReport.contained",
      "path" : "DiagnosticReport.contained",
      "short" : "Recursos contidos no recurso",
      "definition" : "Recursos contidos no recurso"
    },
    {
      "id" : "DiagnosticReport.extension",
      "path" : "DiagnosticReport.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      },
      "short" : "Extensões adicionais que não fazem parte do modelo base",
      "definition" : "Extensões adicionais que não fazem parte do modelo base"
    },
    {
      "id" : "DiagnosticReport.extension:conduta",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "conduta",
      "short" : "Conduta associada ao laudo",
      "definition" : "Esta extensão representa uma conduta associada ao laudo, fornecendo orientações ou sugestões baseadas nos resultados do diagnóstico para o manejo clínico do paciente.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport-conduta"]
      }]
    },
    {
      "id" : "DiagnosticReport.modifierExtension",
      "path" : "DiagnosticReport.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "short" : "Identificadores externos para este recurso",
      "definition" : "Identificadores externos para este recurso"
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "short" : "O que foi solicitado",
      "definition" : "O que foi solicitado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest",
        "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest"]
      }]
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "short" : "O status do relatório de diagnóstico",
      "definition" : "O status do relatório de diagnóstico"
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "short" : "Categoria do serviço",
      "definition" : "Categoria do serviço",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRServicoEspecializado"
      }
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "Nome/Código para este relatório de diagnóstico",
      "definition" : "Nome/Código para este relatório de diagnóstico"
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "short" : "O indivíduo do relatório - geralmente, mas nem sempre, o paciente",
      "definition" : "O indivíduo do relatório - geralmente, mas nem sempre, o paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }]
    },
    {
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "short" : "Evento de assistência médica quando o teste foi solicitado",
      "definition" : "Evento de assistência médica quando o teste foi solicitado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }]
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "short" : "Tempo/período de tempo clinicamente relevante para o relatório",
      "definition" : "Tempo/período de tempo clinicamente relevante para o relatório"
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "short" : "Data e hora em que esta versão foi feita",
      "definition" : "Data e hora em que esta versão foi feita"
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "short" : "Serviço de diagnóstico (SADT) responsável",
      "definition" : "Serviço de diagnóstico (SADT) responsável",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }]
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "short" : "Intérprete de resultado",
      "definition" : "Intérprete de resultado",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }]
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "short" : "Amostras deste relatório",
      "definition" : "Amostras deste relatório",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen"]
      }]
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "definition" : "Observations",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation"]
      }]
    },
    {
      "id" : "DiagnosticReport.imagingStudy",
      "path" : "DiagnosticReport.imagingStudy",
      "short" : "Referência as imagens associadas ao relatório de diagnóstico ao relatório de diagnóstico",
      "definition" : "Referência as imagens associadas ao relatório de diagnóstico ao relatório de diagnóstico"
    },
    {
      "id" : "DiagnosticReport.media",
      "path" : "DiagnosticReport.media",
      "short" : "Imagens associadas a este relatório",
      "definition" : "Imagens associadas a este relatório"
    },
    {
      "id" : "DiagnosticReport.media.id",
      "path" : "DiagnosticReport.media.id",
      "short" : "Identificador único para referência cruzada",
      "definition" : "Identificador único para referência cruzada"
    },
    {
      "id" : "DiagnosticReport.media.extension",
      "path" : "DiagnosticReport.media.extension",
      "short" : "Extensões adicionais que não fazem parte do modelo de dados básico",
      "definition" : "Extensões adicionais que não fazem parte do modelo de dados básico"
    },
    {
      "id" : "DiagnosticReport.media.modifierExtension",
      "path" : "DiagnosticReport.media.modifierExtension",
      "short" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas",
      "definition" : "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
    },
    {
      "id" : "DiagnosticReport.media.comment",
      "path" : "DiagnosticReport.media.comment",
      "short" : "Comentário sobre a imagem",
      "definition" : "Comentário sobre a imagem"
    },
    {
      "id" : "DiagnosticReport.media.link",
      "path" : "DiagnosticReport.media.link",
      "short" : "Referência à fonte da imagem",
      "definition" : "Referência à fonte da imagem"
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "short" : "Conclusão clínica (interpretação) dos resultados",
      "definition" : "Conclusão clínica (interpretação) dos resultados"
    },
    {
      "id" : "DiagnosticReport.conclusionCode",
      "path" : "DiagnosticReport.conclusionCode",
      "short" : "Códigos da conclusão clínica dos resultados",
      "definition" : "Códigos da conclusão clínica dos resultados"
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "short" : "Relatório completo conforme emitido",
      "definition" : "Relatório completo conforme emitido"
    }]
  }
}

```
