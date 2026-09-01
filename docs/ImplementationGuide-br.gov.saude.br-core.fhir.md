# Resource Guia de implementação do Core do Brasil: Release 1 - BR Realm | STU1



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "br.gov.saude.br-core.fhir",
  "url" : "https://br-core.saude.gov.br/fhir/ImplementationGuide/br.gov.saude.br-core.fhir",
  "version" : "1.1.0",
  "name" : "BRCORE",
  "title" : "Guia de implementação do Core do Brasil: Release 1 - BR Realm | STU1",
  "status" : "active",
  "date" : "2023-05-08",
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
  "description" : "Guia de Implementação Core de Interoperabilidade em Saúde Digital do Brasil.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "packageId" : "br.gov.saude.br-core.fhir",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "br_gov_saude_terminologia_fhir",
    "uri" : "https://terminologia.saude.gov.br/fhir/ImplementationGuide/br.gov.saude.terminologia.fhir",
    "packageId" : "br.gov.saude.terminologia.fhir",
    "version" : "dev"
  },
  {
    "id" : "br_gov_saude_ips_fhir",
    "uri" : "https://ips.saude.gov.br/fhir/ImplementationGuide/br.gov.saude.ips.fhir",
    "packageId" : "br.gov.saude.ips.fhir",
    "version" : "1.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2023+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "STU1"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "produce-jekyll-data"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://br-core.saude.gov.br/fhir/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2023+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "STU1"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "produce-jekyll-data"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://br-core.saude.gov.br/fhir/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-07ce5462-f77b-4ad6-af8c-2f67a6500b97.html"
      }],
      "reference" : {
        "reference" : "Observation/07ce5462-f77b-4ad6-af8c-2f67a6500b97"
      },
      "name" : "07ce5462-f77b-4ad6-af8c-2f67a6500b97",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-1f311b28-03d5-411d-90a6-84edf417e01a.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/1f311b28-03d5-411d-90a6-84edf417e01a"
      },
      "name" : "1f311b28-03d5-411d-90a6-84edf417e01a",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-2f42ddad-b9bb-4f68-b5b9-426054529f31.html"
      }],
      "reference" : {
        "reference" : "Specimen/2f42ddad-b9bb-4f68-b5b9-426054529f31"
      },
      "name" : "2f42ddad-b9bb-4f68-b5b9-426054529f31",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationDispense-80589c80-643e-43ea-801b-5f32616e9a27.html"
      }],
      "reference" : {
        "reference" : "MedicationDispense/80589c80-643e-43ea-801b-5f32616e9a27"
      },
      "name" : "80589c80-643e-43ea-801b-5f32616e9a27",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ae6990a3-bf35-4758-88b8-825c9e5f0e98.html"
      }],
      "reference" : {
        "reference" : "Condition/ae6990a3-bf35-4758-88b8-825c9e5f0e98"
      },
      "name" : "ae6990a3-bf35-4758-88b8-825c9e5f0e98",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-address-aldeia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-address-aldeia"
      },
      "name" : "Aldeia Indígena",
      "description" : "Extensão que permite referenciar uma aldeia indígena como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-diagnosticreport-conduta.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-diagnosticreport-conduta"
      },
      "name" : "BR Core DiagnosticReport Conduta",
      "description" : "Esta extensão representa uma conduta associada ao laudo, fornecendo orientações ou sugestões baseadas nos resultados do diagnóstico para o manejo clínico do paciente.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-allergyintolerance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-allergyintolerance"
      },
      "name" : "br-core-allergyintolerance",
      "description" : "Este perfil define as características mínimas para o recurso [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.html) registrar, pesquisar e buscar alergias/reações adversas associadas a um paciente. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes e restringe como os elementos são usados. Além disso, fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-appointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-appointment"
      },
      "name" : "br-core-appointment",
      "description" : "Perfil brasileiro do recurso FHIR R4 Appointment, utilizado para agendamento de atendimentos, procedimentos e interações de cuidado no contexto do SUS, RNDS, saúde suplementar e privada, incluindo marcação, remarcação e cancelamento, bem como gestão de participantes, datas/horários e justificativas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-careteam.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-careteam"
      },
      "name" : "br-core-careteam",
      "description" : "Este perfil restringe o recurso [CareTeam](https://hl7.org/fhir/R4/careteam.html) que inclui todas as pessoas e organizações que planejam participar da coordenação e prestação de cuidados a um paciente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-composition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-composition"
      },
      "name" : "br-core-composition",
      "description" : "Um conjunto de informações relacionadas aos cuidados em sáude que são reunidas em um único bundle lógico que estabelece seu próprio contexto e atesta quem está fazendo a declaração. Uma Composition define a estrutura e o conteúdo narrativo necessários para um documento. No entanto, uma Composition sozinha não constitui um documento. Em vez disso, a Composition deve ser a primeira entrada em um Bundle onde Bundle.type=document, e quaisquer outros recursos referenciados da Composition devem ser incluídos como entradas subsequentes no Bundle (por exemplo, Patient, Practitioner, Encounter, etc.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-consent.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-consent"
      },
      "name" : "br-core-consent",
      "description" : "Este perfil define as características mínimas para o recurso [br-core-consent](StructureDefinition-br-core-consent.html) registrar, pesquisar e buscar consentimentos para tratamento de dados pessoais conforme Lei Geral de Proteção de Dados (LGPD) - Lei nº 13.709/2018. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes e restringe como os elementos são usados. Além disso, fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-encounter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-encounter"
      },
      "name" : "br-core-encounter",
      "description" : "Uma interação entre um paciente e o(s) prestador(es) de  serviços saúde com a finalidade de fornecer serviço(s) de saúde ou avaliar o estado de saúde de um paciente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-healthcareservice.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-healthcareservice"
      },
      "name" : "br-core-healthcareservice",
      "description" : "Este perfil restringe o recurso [HealthcareService](https://hl7.org/fhir/R4/healthcareservice.html) que representa os detalhes de um serviço de saúde disponível em um local",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-location.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-location"
      },
      "name" : "br-core-location",
      "description" : "Este perfil restringe o recurso [Location](https://hl7.org/fhir/R4/location.html) que aborda detalhes e informações da posição de um local físico onde os serviços são fornecidos e os recursos e participantes podem ser armazenados, encontrados, contidos ou acomodados",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-medication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-medication"
      },
      "name" : "br-core-medication",
      "description" : "Este recurso é uma especialização do recurso FHIR R4 [Medication](https://hl7.org/fhir/R4/medication.html) usado principalmente para a identificação e definição de um medicamento para fins de prescrição, dispensação e administração de um medicamento, bem como para fazer declarações sobre medicamentos no Brasil",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-medicationadministration.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-medicationadministration"
      },
      "name" : "br-core-medicationadministration",
      "description" : "Descreve o evento de um paciente consumindo ou de algum medicamento sendo administrado a um paciente. Isso pode ser tão simples quanto engolir um comprimido ou pode ser uma infusão de longa duração. Recursos relacionados vinculam esse evento à prescrição de autorização e ao atendimento specífco entre o paciente e o profissional de saúde",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-medicationdispense.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-medicationdispense"
      },
      "name" : "br-core-medicationdispense",
      "description" : "Este recurso Indica que um medicamento deve ser ou foi dispensado para uma pessoa/paciente. O recurso inclui a descrição do medicamento (suprimento) fornecido bem como as instruções para a sua administração. A dispensação do medicamento é o resultado de um  pedido de medicamentos feito por um sistema de informações",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-medicationrequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-medicationrequest"
      },
      "name" : "br-core-medicationrequest",
      "description" : "Um pedido ou solicitação para fornecimento do medicamento e instruções para administração do medicamento a um paciente. O recurso é chamado de 'MedicationRequest' em vez de 'MedicationPrescription' ou 'MedicationOrder' para generalizar o uso em ambientes de internação e ambulatorial, incluindo planos de cuidados, etc., e para harmonizar com padrões de fluxo de trabalho",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-medicationstatement.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-medicationstatement"
      },
      "name" : "br-core-medicationstatement",
      "description" : "Um registro de um medicamento que está sendo consumido por um paciente. Um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html) indica  que o paciente pode estar tomando o medicamento agora ou tomou o medicamento no passado ou tomará o medicamento no futuro. A fonte dessas informações pode ser o paciente, outra pessoa significativa (como um membro da família ou cônjuge) ou um clínico. Um cenário comum em que essas informações são capturadas é durante o processo de obtenção do histórico durante uma visita ou internação do paciente. As informações sobre medicamentos podem vir de fontes como a memória do paciente, de um frasco de prescrição ou de uma lista de medicamentos que o paciente, o clínico ou outra parte mantém.\n\nA principal diferença entre um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html) e um [br-core-medicationadministration](https://saude.gov.br/fhir/StructureDefiniton/medicationadministration.html) é que o último  contém informações completas sobre a administração e é baseada em informações reais sobre a administração e da pessoa que administrou o medicamento.  Um [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) é frequentemente, se não sempre, menos específico. Não há data/hora obrigatória em que o medicamento foi administrado; na verdade, sabe-se apenas que uma fonte relatou que o paciente está tomando esse medicamento, onde detalhes como hora, quantidade ou taxa ou mesmo o produto do medicamento podem estar incompletos, ausentes ou menos precisos. Conforme dito anteriormente, as informações do [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) podem vir da memória do paciente, de um frasco de prescrição ou de uma lista de medicamentos que o paciente, o clínico ou outra parte mantém. A administração de medicamentos é mais formal e não deixa de ter informações detalhadas.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-registroatendimentoclinico.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-registroatendimentoclinico"
      },
      "name" : "br-core-registroatendimentoclinico",
      "description" : "Esse perfil restringe o perfil [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) para especificar um documento clínico, o registro de atendimento clínico, definido pela [PORTARIA Nº 234, DE 18 DE JULHO DE 2022](https://www.cosemssp.org.br/wp-content/uploads/2022/07/PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-DOU-Imprensa-Nacional.pdf), que institui o Modelo de Informação (MI) Registro de Atendimento Clínico (RAC). Este modelo compreende um conjunto essencial de elementos e dados administrativos e clínicos que fornecem um instantâneo (snapshot) das informações de uma consulta realizada a um indivíduo no âmbito da atenção básica, especializada ou domiciliar (atendimento diário). Apresenta informações relacionadas ao acompanhamento do indivíduo como medições, observações, diagnósticos e/ou problemas, exames, procedimentos, pequenas cirurgias e desfecho",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-schedule.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-schedule"
      },
      "name" : "br-core-schedule",
      "description" : "Perfil brasileiro do recurso FHIR R4 Schedule, utilizado para representar agendas e disponibilidades de profissionais, serviços ou locais de saúde no contexto da RNDS e sistemas de interoperabilidade, incluindo suporte a teleconsultas e telecolposcopia.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-slot.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-slot"
      },
      "name" : "br-core-slot",
      "description" : "Perfil brasileiro do recurso FHIR R4 Slot, utilizado para representar a disponibilidade e reservas de tempo em sistemas de agendamento, interoperabilidade e integração com a RNDS, permitindo a comunicação entre agendas, prestadores e sistemas de marcação de consultas e procedimentos.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-sumarioalta.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-sumarioalta"
      },
      "name" : "br-core-sumarioalta",
      "description" : "Este perfil representa as informações da alta hospitalar, conforme a [PORTARIA Nº 701, DE 29 DE SETEMBRO DE 2022](https://bvsms.saude.gov.br/bvs/saudelegis/Saes/2022/prt0701_19_10_2022.html).\n“O Sumário de Alta é um documento essencial para: \n-\tApoiar a comunicação das informações do sumário de alta entre os diversos níveis de atenção de modo eficiente, efetivo e a tempo, contribuindo para uma atenção coordenada entre os cuidadores do indivíduo e apoiando a continuidade dos seus cuidados;\n-\tMelhorar a qualidade da atenção em saúde e a segurança para o indivíduo com informações qualificadas, completas e oportunas que contribuam para uma conduta mais adequada às necessidades individuais de cada indivíduo e redução de efeitos adversos;\n-\tContribuir para reduzir o número de reinternações evitáveis;\n-\tGarantir que um conjunto mínimo de informações clínicas padronizadas possa ser encaminhado e processado para múltiplos sistemas de informações em saúde, tais como prontuários eletrônicos dos indivíduos, registros eletrônicos em saúde e outros sistemas que utilizam as informações clínicas como insumos em seus processos de trabalho, facilitando a agregação e análise desses dados para tomada de decisão e produção de conhecimento;\n-\tReduzir o custo com entradas manuais, integrações, mapeamento de sistemas independentes e manutenção dos sistemas de informação em saúde;\n-\tProver aos desenvolvedores a especificação do conjunto de dados, mensagens de interface padronizada para a comunicação da alta, reduzindo o tempo entre o desenvolvimento e implantação da comunicação do sumário de alta;\n-\tPromover a simplificação e padronização das comunicações sobre os eventos de saúde entre os diversos envolvidos na atenção à saúde;\n-\tAlimentar o registro pessoal de saúde do indivíduo.”",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-capacidadefuncional.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-capacidadefuncional"
      },
      "name" : "BRCoreCapacidadeFuncional",
      "description" : "Este perfil herda do recurso [br-core-condition](StructureDefinition-br-core-condition.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-careplan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-careplan"
      },
      "name" : "BRCoreCarePlan",
      "description" : "Este perfil restringe o recurso [CarePlan](https://hl7.org/fhir/R4/careplan.html) que descreve a intenção de como um ou mais profissionais pretendem prestar cuidados a um determinado paciente, grupo ou comunidade por um período de tempo, possivelmente limitado ao cuidado de uma condição específica ou conjunto de condições",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-condition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-condition"
      },
      "name" : "BRCoreCondition",
      "description" : "Este perfil representa as restrições aplicadas ao recurso FHIR R4 [Condition](http://hl7.org/fhir/R4/condition.html)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-diagnosticreport.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-diagnosticreport"
      },
      "name" : "BRCoreDiagnosticReport",
      "description" : "Este perfil restringe o recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) que representa as descobertas e a interpretação de testes diagnósticos realizados em pacientes, grupos de pacientes, dispositivos e locais, e/ou espécimes derivados destes. O relatório inclui contexto clínico, como solicitação e informações do provedor, e alguma mistura de resultados atômicos, imagens, interpretações textuais e codificadas, e representação formatada de relatórios diagnósticos",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-immunization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-immunization"
      },
      "name" : "BRCoreImmunization",
      "description" : "Este perfil restringe o recurso [Immunization](https://hl7.org/fhir/R4/immunization.html) que descreve o evento em que um paciente recebe uma vacina ou um registro de uma imunização conforme relatado por um paciente, um médico ou outra parte",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-observation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-observation"
      },
      "name" : "BRCoreObservation",
      "description" : "O recurso [br-core-Observation](StructureDefinition-br-core-observation.html) herda do recurso FHIR R4 [observation](https://hl7.org/fhir/R4B/observation.html) e registra medidas e resumo simples feitas sobre um paciente, dispositivo ou outro assunto",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-observationalcoholuse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-observationalcoholuse"
      },
      "name" : "BRCoreObservationAlcoholUse",
      "description" : "O perfil [br-core-observationalcoholuse](StructureDefinition-br-core-observationalcoholuse.html) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html), projetado para documentar a avaliação do uso de álcool em um resumo de paciente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-observationbreastfeedingstatus.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-observationbreastfeedingstatus"
      },
      "name" : "BRCoreObservationBreastfeedingStatus",
      "description" : "Esse recurso [br-core-observationbreastfeedingstatus](StructureDefinition-br-core-observationbreastfeedingstatus.html) é uma restrição do perfil Observation para registrar informações sobre o tipo de aleitamento materno do paciente nos seus primeiros anos de vida",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-observationpregnancyedd.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-observationpregnancyedd"
      },
      "name" : "BRCoreObservationPregnancyEDD",
      "description" : "Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar a data prevista para o parto",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-observationpregnancyoutcome.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-observationpregnancyoutcome"
      },
      "name" : "BRCoreObservationPregnancyOutcome",
      "description" : "Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar o histórico resumido dos resultados da gravidez.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-observationpregnancystatus.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-observationpregnancystatus"
      },
      "name" : "BRCoreObservationPregnancyStatus",
      "description" : "Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar o estado da gravidez.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-observationtobaccouse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-observationtobaccouse"
      },
      "name" : "BRCoreObservationTobaccoUse",
      "description" : "O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.html) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html) para representar a avaliação sobre tabagismo em um registro de atendimento clínico ou em um sumário do paciente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-organization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-organization"
      },
      "name" : "BRCoreOrganization",
      "description" : "Este perfil representa um agrupamento formal ou informal reconhecido de pessoas ou organizações com o propósito de alcançar alguma forma de ação coletiva. Inclui empresas, instituições, corporações, departamentos, grupos comunitários, grupos de práticas de saúde, planos de saúde, empresas fabricantes de produtos medicinais, entre outros",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-patient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-patient"
      },
      "name" : "BRCorePatient",
      "description" : "Este perfil representa o perfil [br-core-patient](StructureDefinition-br-core-patient.html) com todas as informações demográficas e administrativas necessárias para descrever um paciente no Brasil, com as respectivas legislações dos elementos e domínios obrigatórios conforme abaixo. O perfil [br-core-patient](StructureDefinition-br-core-patient.html) herda do recurso FHIR R4 [Patient](https://hl7.org/fhir/R4B/patient.html) para definições de escopo e uso. Este perfil define expectativas mínimas para o recurso [br-core-patient](StructureDefinition-br-core-patient.html) registrar, pesquisar e buscar dados demográficos básicos e outras informações administrativas sobre um paciente individual. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes e restringe como os elementos são usados.  \r\n\r\nPara contemplar uma descrição do paciente com maior equidade, conforme recomendações da portaria GM/MS Nº 230, de 7 de março de 2023, foram adicionados atributos adicionais para expressar o sexo do paciente, além do sexo administrativo: sexo ao nascer descritos no ValueSet [BRSexoNascimento](https://terminologia.saude.gov.br/fhir/ValueSet/BRSexoNascimento) e identidade de gênero descrita no ValueSet [BRIdentidadeGenero](https://terminologia.saude.gov.br/fhir/ValueSet/BRIdentidadeGenero). Com relação a orientação sexual, este é um dado que pode mudar durante a vida do paciente, portanto, recomenda-se que ele seja coletado em cada evento assistencial",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-practitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-practitioner"
      },
      "name" : "BRCorePractitioner",
      "description" : "O Profissional é uma pessoa que está direta ou indiretamente envolvida na prestação de cuidados de saúde ou serviços relacionados ao paciente",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-practitionerrole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-practitionerrole"
      },
      "name" : "BRCorePractitionerRole",
      "description" : "Este perfil restringe o recurso PractitionerRole que representa um conjunto específico de funções/locais/especialidades/serviços que um profissional pode desempenhar em uma organização por um período de tempo",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-procedure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-procedure"
      },
      "name" : "BRCoreProcedure",
      "description" : "Este recurso descreve uma ação que é ou foi realizada em ou para um paciente. Pode ser uma intervenção física como uma operação, ou menos invasiva como serviços de longo prazo, aconselhamento ou hipnoterapia",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-relatedperson.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-relatedperson"
      },
      "name" : "BRCoreRelatedPerson",
      "description" : "O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html) contém as informações sobre uma pessoa envolvida no cuidado de um paciente, mas que não é alvo de cuidados de saúde nem tem responsabilidade formal no processo de cuidado. \n\nA pessoa representada pelo recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html) normalmente tem um relacionamento profissional pessoal ou não específico de cuidado em saúde com o paciente. O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html) é usado principalmente para atribuição de informações, já que geralmente é uma fonte de informações sobre o paciente. Para manter informações sobre pessoas para fins de contato para um paciente, use um elemento br-core-patien.contact. Alguns indivíduos podem ser representados simultaneamente como  um patient.contact e [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html).\n\nExemplos de pessoas que podem ser um [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html):\n-\tEsposa ou marido de um paciente\n-\tParentes ou amigos de um paciente\n-\tUm vizinho que leva um paciente para o hospital\n-\tO dono ou treinador de um cavalo\n-\tUm advogado ou tutor do paciente\n-\tUm cão-guia",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-servicerequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-servicerequest"
      },
      "name" : "BRCoreServiceRequest",
      "description" : "Este recurso restringe o recurso [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) que registra uma solicitação de serviço, como investigações diagnósticas, tratamentos ou operações a serem realizadas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-specimen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-specimen"
      },
      "name" : "BRCoreSpecimen",
      "description" : "Este perfil restringe o recurso Specimen para representar as características de amostras biológicas no contexto de resultados laboratoriais integrados a um Sumário do Paciente. O recurso Specimen descreve uma amostra utilizada para análise laboratorial",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-vitalsigns.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-vitalsigns"
      },
      "name" : "BRCoreVitalSigns",
      "description" : "Este perfil é baseado no perfil [VitalSigns](http://hl7.org/fhir/R4/observation-vitalsigns.html) e define restrições adicionais no recurso Observation para representar Observation de sinais vitais. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes no recurso e restringe como os elementos são usados.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-c2a71a42-d3cd-4be8-8bf4-fdddea59034f.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/c2a71a42-d3cd-4be8-8bf4-fdddea59034f"
      },
      "name" : "c2a71a42-d3cd-4be8-8bf4-fdddea59034f",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-d70c3a7e-abf0-44ab-ab0b-8c59ffee8f85.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/d70c3a7e-abf0-44ab-ab0b-8c59ffee8f85"
      },
      "name" : "d70c3a7e-abf0-44ab-ab0b-8c59ffee8f85",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-d8810230-45e2-40a6-8588-ea1624030762.html"
      }],
      "reference" : {
        "reference" : "Observation/d8810230-45e2-40a6-8588-ea1624030762"
      },
      "name" : "d8810230-45e2-40a6-8588-ea1624030762",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-address-dsei.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-address-dsei"
      },
      "name" : "Distrito Sanitário Especial Indígena (DSEI)",
      "description" : "Extensão que permite referenciar um Distrito Sanitário Especial Indígena (DSEI) como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-address.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-address"
      },
      "name" : "Endereço Brasileiro",
      "description" : "Perfil do tipo de dado Address para uso no contexto brasileiro, incluindo extensões específicas para localização de povos indígenas através de Aldeia, DSEI (Distrito Sanitário Especial Indígena) e Polo Base.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AllergyIntolerance-42a8e4ee-cc8b-4c07-bee2-da8fe14ada34.html"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/42a8e4ee-cc8b-4c07-bee2-da8fe14ada34"
      },
      "name" : "Exemplo de alergia e intolerância.",
      "description" : "Exemplo de alergia e intolerância.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AllergyIntolerance-b2549739-2479-406e-ab6e-1e4251b08bc9.html"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/b2549739-2479-406e-ab6e-1e4251b08bc9"
      },
      "name" : "Exemplo de alergia e intolerância.",
      "description" : "Exemplo de alergia e intolerância.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-5c0878bd-a787-489d-82aa-82f4fb55909e.html"
      }],
      "reference" : {
        "reference" : "Composition/5c0878bd-a787-489d-82aa-82f4fb55909e"
      },
      "name" : "Exemplo de composition.",
      "description" : "Exemplo de composition.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-composition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-91d8d24f-a70d-4ebf-8dea-71cf92ce1bd5.html"
      }],
      "reference" : {
        "reference" : "Condition/91d8d24f-a70d-4ebf-8dea-71cf92ce1bd5"
      },
      "name" : "Exemplo de condição de saúde fictícia.",
      "description" : "Exemplo de condição de saúde fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-c6d553d8-cce0-404b-9d1f-eeffbf7fc6df.html"
      }],
      "reference" : {
        "reference" : "Encounter/c6d553d8-cce0-404b-9d1f-eeffbf7fc6df"
      },
      "name" : "Exemplo de consulta fictícia.",
      "description" : "Exemplo de consultae fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-82c41d7b-b125-49ae-825e-8918885ba234.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/82c41d7b-b125-49ae-825e-8918885ba234"
      },
      "name" : "Exemplo de declaração de medicação.",
      "description" : "Exemplo de declaração de medicação fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-9d15b978-0743-4a5b-af6f-aac73c027f16.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/9d15b978-0743-4a5b-af6f-aac73c027f16"
      },
      "name" : "Exemplo de declaração de medicação.",
      "description" : "Exemplo de declaração de medicação fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-90e2319e-dc54-4379-88f3-13c5e74e924e.html"
      }],
      "reference" : {
        "reference" : "Observation/90e2319e-dc54-4379-88f3-13c5e74e924e"
      },
      "name" : "Exemplo de gravidez.",
      "description" : "Exemplo de gravidez fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyedd"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-714819de-cd07-4423-94ea-7057504a2cc8.html"
      }],
      "reference" : {
        "reference" : "Immunization/714819de-cd07-4423-94ea-7057504a2cc8"
      },
      "name" : "Exemplo de imunização.",
      "description" : "Exemplo de imunização fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-9fea09cf-0529-4f7d-bad0-80cd5fd00cba.html"
      }],
      "reference" : {
        "reference" : "Location/9fea09cf-0529-4f7d-bad0-80cd5fd00cba"
      },
      "name" : "Exemplo de locação.",
      "description" : "Exemplo de locação.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Medication-3a46210c-7eb3-48ec-aa67-db7e7ee18864.html"
      }],
      "reference" : {
        "reference" : "Medication/3a46210c-7eb3-48ec-aa67-db7e7ee18864"
      },
      "name" : "Exemplo de medicação.",
      "description" : "Exemplo de medicação fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-52ba1c80-5d2c-4faf-8c90-f4363e20d7bb.html"
      }],
      "reference" : {
        "reference" : "Observation/52ba1c80-5d2c-4faf-8c90-f4363e20d7bb"
      },
      "name" : "Exemplo de observação.",
      "description" : "Exemplo de observação de saúde fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-1428c345-c221-411f-880f-6fb163817387.html"
      }],
      "reference" : {
        "reference" : "Organization/1428c345-c221-411f-880f-6fb163817387"
      },
      "name" : "Exemplo de organização.",
      "description" : "Exemplo de organização de saúde fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-2b9c99c6-f9c9-42f0-a107-ed5f0d806995.html"
      }],
      "reference" : {
        "reference" : "Organization/2b9c99c6-f9c9-42f0-a107-ed5f0d806995"
      },
      "name" : "Exemplo de organização.",
      "description" : "Exemplo de organização de saúde fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-7b98fd1d-5f85-40f5-9436-2c767ab734ae.html"
      }],
      "reference" : {
        "reference" : "Organization/7b98fd1d-5f85-40f5-9436-2c767ab734ae"
      },
      "name" : "Exemplo de organização.",
      "description" : "Exemplo de organização de saúde fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-b1997888-85fd-41b6-bf94-6242cf3c8265.html"
      }],
      "reference" : {
        "reference" : "Patient/b1997888-85fd-41b6-bf94-6242cf3c8265"
      },
      "name" : "Exemplo de paciente.",
      "description" : "Exemplo de paciente fictício.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-b2f63a4c-ddaa-4652-8481-ac1ff473104e.html"
      }],
      "reference" : {
        "reference" : "Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e"
      },
      "name" : "Exemplo de paciente.",
      "description" : "Exemplo de paciente fictício.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-c3a40500-5fe8-47f1-b21a-dce205e6c617.html"
      }],
      "reference" : {
        "reference" : "Patient/c3a40500-5fe8-47f1-b21a-dce205e6c617"
      },
      "name" : "Exemplo de paciente.",
      "description" : "Exemplo de paciente fictício.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-69ba81d5-37fe-471e-99d8-e53649ccdeed.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/69ba81d5-37fe-471e-99d8-e53649ccdeed"
      },
      "name" : "Exemplo de papel de profissional de saúde.",
      "description" : "Exemplo de papel de profissional de saúde fictício.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-1ed343f2-5231-40d6-a6ea-4428105b7532.html"
      }],
      "reference" : {
        "reference" : "CarePlan/1ed343f2-5231-40d6-a6ea-4428105b7532"
      },
      "name" : "Exemplo de plano de cuidado.",
      "description" : "Exemplo de plano de cuidado.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-5f147d9b-ff84-44d1-b258-e2c9284098f4.html"
      }],
      "reference" : {
        "reference" : "Observation/5f147d9b-ff84-44d1-b258-e2c9284098f4"
      },
      "name" : "Exemplo de pregnancy status.",
      "description" : "Exemplo de pregnancy status de saúde fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancystatus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-b0030c23-bd7d-445e-bfe5-020828f7dbaf.html"
      }],
      "reference" : {
        "reference" : "Procedure/b0030c23-bd7d-445e-bfe5-020828f7dbaf"
      },
      "name" : "Exemplo de procedimento de saúde.",
      "description" : "Exemplo de procedimento de saúde.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-d3b61455-f432-48f0-b83b-ba825922d735.html"
      }],
      "reference" : {
        "reference" : "Practitioner/d3b61455-f432-48f0-b83b-ba825922d735"
      },
      "name" : "Exemplo de profissional de saúde.",
      "description" : "Exemplo de profissional de saúde fictício.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-a952a5b4-2bc5-42f8-a3de-af67ec3ea791.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/a952a5b4-2bc5-42f8-a3de-af67ec3ea791"
      },
      "name" : "Exemplo de reporte de diagnóstico.",
      "description" : "Exemplo de reporte de diagnóstico.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-02f99181-eab1-4634-9d58-508c7d4f195b.html"
      }],
      "reference" : {
        "reference" : "Observation/02f99181-eab1-4634-9d58-508c7d4f195b"
      },
      "name" : "Exemplo de resultado de gravidez.",
      "description" : "Exemplo de resultado de gravidez fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyoutcome"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CareTeam-0af04a2a-5174-438d-85ae-fc83df65541e.html"
      }],
      "reference" : {
        "reference" : "CareTeam/0af04a2a-5174-438d-85ae-fc83df65541e"
      },
      "name" : "Exemplo de time de cuidado.",
      "description" : "Exemplo de time de cuidado.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careteam"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-f48ffa19-7af8-4377-aab8-2c98ca1ce07b.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/f48ffa19-7af8-4377-aab8-2c98ca1ce07b"
      },
      "name" : "Exemplo de uma pessoa relacionada ao paciente.",
      "description" : "Exemplo de uma pessoa relacionada ao paciente.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-bcdeed7f-cd8c-4d53-b61e-160471b913eb.html"
      }],
      "reference" : {
        "reference" : "Observation/bcdeed7f-cd8c-4d53-b61e-160471b913eb"
      },
      "name" : "Exemplo de uso de tabaco.",
      "description" : "Exemplo de uso de tabaco fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationtobaccouse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-b359a2d8-dfef-4147-b5a1-3a6437263650.html"
      }],
      "reference" : {
        "reference" : "Observation/b359a2d8-dfef-4147-b5a1-3a6437263650"
      },
      "name" : "Exemplo de uso de álcool.",
      "description" : "Exemplo de uso de álcool fictícia.",
      "exampleCanonical" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationalcoholuse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-pesquisaclinica.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-pesquisaclinica"
      },
      "name" : "Extensão de pesquisa clínica do Core do Brasil",
      "description" : "Este perfil de extensão representa uma pesquisa clínica",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-populacaotradicional.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-populacaotradicional"
      },
      "name" : "Extensão de populacao tradicional do Core do Brasil",
      "description" : "Este perfil de extensão representa um populacao tradicional com a qual uma pessoa se associa",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-povoitinerante.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-povoitinerante"
      },
      "name" : "Extensão de povo itinerante do Core do Brasil",
      "description" : "Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-base-legal-lgpd.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-base-legal-lgpd"
      },
      "name" : "Extensão do perfil BRCoreConsent define extensões específicas para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)",
      "description" : "Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-br-core-address-polo.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/br-core-address-polo"
      },
      "name" : "Polo Base",
      "description" : "Extensão que permite referenciar um Polo Base como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-7681618d-399d-4291-b321-32ce6d645088.html"
      }],
      "reference" : {
        "reference" : "Composition/7681618d-399d-4291-b321-32ce6d645088"
      },
      "name" : "Registro de Atendimento Clínico",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-4e14ddc8-13de-4c7f-8913-bfa81633b81b.html"
      }],
      "reference" : {
        "reference" : "Composition/4e14ddc8-13de-4c7f-8913-bfa81633b81b"
      },
      "name" : "Sumário de Alta Hospitalar",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "HealthcareService-58a7b01f-72e8-411a-b1c0-5f7728ab7c51.html"
      }],
      "reference" : {
        "reference" : "HealthcareService/58a7b01f-72e8-411a-b1c0-5f7728ab7c51"
      },
      "name" : "UBS INDIANOPOLIS SIGMUND FREUD",
      "exampleBoolean" : true
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Início",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Histórico de mudanças",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Baixar",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "premissas.html"
        }],
        "nameUrl" : "premissas.html",
        "title" : "Princípios, Premissas",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "estrutura.html"
        }],
        "nameUrl" : "estrutura.html",
        "title" : "Estrutura",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "modelos.html"
        }],
        "nameUrl" : "modelos.html",
        "title" : "Especificação",
        "generation" : "html"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
