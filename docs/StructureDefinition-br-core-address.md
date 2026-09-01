# BR.GOV.SAUDE.BR-CORE.FHIR\Endereço Brasileiro - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **Endereço Brasileiro**

## Data Type Profile: Endereço Brasileiro 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address | *Versão*:1.1.0 |
| Active as of 2025-10-30 | *Nome computável*:BRCoreAddress |
| **Copyright/Legal**: Copyright © 2025 HL7 Brasil | |

 
Perfil do tipo de dado Address para uso no contexto brasileiro, incluindo extensões específicas para localização de povos indígenas através de Aldeia, DSEI (Distrito Sanitário Especial Indígena) e Polo Base. 

 
Fornecer uma estrutura padronizada de endereçamento que contemple as particularidades do território brasileiro, especialmente no contexto da saúde indígena, permitindo a identificação precisa de aldeias, DSEIs e polos-base. 

**Usos:**

* Este Perfil de tipo de dados não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-address.json)

### Visões formais do conteúdo do perfil

 [Descrição de perfis, diferenciais, instantâneos e como as diferentes apresentações funcionam](http://hl7.org/fhir/R4/profiling.html#presentation). 

*  [Tabela diferencial](#tabs-diff) 
*  [Tabela de elementos-chave](#tabs-key) 
*  [Tabela de instantâneos](#tabs-snap) 
*  [Estatísticas/Referências](#tabs-summ) 
*  [Todos](#tabs-all) 

Esta estrutura é derivada de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) 

#### Terminologia Ligações (Diferencial)

#### Terminologia Ligações

#### Restrições

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) 

** Resumo **

**Extensões**

Esta estrutura refere-se a estas extensões:

* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-aldeia](StructureDefinition-br-core-address-aldeia.md)
* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-dsei](StructureDefinition-br-core-address-dsei.md)
* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-polo](StructureDefinition-br-core-address-polo.md)

 **Visão diferencial** 

Esta estrutura é derivada de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) 

#### Terminologia Ligações (Diferencial)

 **Visualização de elementos -chave** 

#### Terminologia Ligações

#### Restrições

 **Visualização instantânea** 

#### Terminologia Ligações

#### Restrições

Esta estrutura é derivada de [Address](http://hl7.org/fhir/R4/datatypes.html#Address) 

** Resumo **

**Extensões**

Esta estrutura refere-se a estas extensões:

* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-aldeia](StructureDefinition-br-core-address-aldeia.md)
* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-dsei](StructureDefinition-br-core-address-dsei.md)
* [https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-polo](StructureDefinition-br-core-address-polo.md)

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-address.csv), [Excel](StructureDefinition-br-core-address.xlsx), [Schematron](StructureDefinition-br-core-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-address",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address",
  "version" : "1.1.0",
  "name" : "BRCoreAddress",
  "title" : "Endereço Brasileiro",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-30",
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
  "description" : "Perfil do tipo de dado Address para uso no contexto brasileiro, incluindo extensões específicas para localização de povos indígenas através de Aldeia, DSEI (Distrito Sanitário Especial Indígena) e Polo Base.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "purpose" : "Fornecer uma estrutura padronizada de endereçamento que contemple as particularidades do território brasileiro, especialmente no contexto da saúde indígena, permitindo a identificação precisa de aldeias, DSEIs e polos-base.",
  "copyright" : "Copyright © 2025 HL7 Brasil",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address"
    },
    {
      "id" : "Address.extension:aldeia",
      "path" : "Address.extension",
      "sliceName" : "aldeia",
      "short" : "Aldeia Indígena",
      "definition" : "Referência ao recurso Location que representa a aldeia indígena onde o indivíduo reside.",
      "comment" : "A aldeia é a unidade básica de localização geográfica para populações indígenas. Este elemento permite associar o endereço a uma aldeia específica cadastrada como Location no sistema.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-aldeia"]
      }]
    },
    {
      "id" : "Address.extension:dsei",
      "path" : "Address.extension",
      "sliceName" : "dsei",
      "short" : "Distrito Sanitário Especial Indígena (DSEI)",
      "definition" : "Referência ao recurso Location que representa o Distrito Sanitário Especial Indígena (DSEI) responsável pela região.",
      "comment" : "O DSEI é uma unidade administrativa de saúde que coordena as ações de atenção à saúde indígena em uma determinada região geográfica, abrangendo múltiplas aldeias e polos-base. Este elemento permite associar o endereço ao DSEI responsável pela área.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-dsei"]
      }]
    },
    {
      "id" : "Address.extension:polo",
      "path" : "Address.extension",
      "sliceName" : "polo",
      "short" : "Polo Base",
      "definition" : "Referência ao recurso Location que representa o Polo Base que atende a região.",
      "comment" : "O Polo Base é uma unidade de saúde que serve como ponto de referência para um conjunto de aldeias, oferecendo serviços de saúde e apoio logístico. Este elemento permite associar o endereço ao polo-base responsável pela assistência à saúde na região.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-address-polo"]
      }]
    },
    {
      "id" : "Address.use",
      "path" : "Address.use",
      "short" : "Tipo de uso do endereço",
      "definition" : "Identifica o propósito deste endereço.",
      "comment" : "Os valores permitidos são: home (residencial), work (trabalho), temp (temporário), old (antigo). Para endereços de aldeias indígenas, normalmente será utilizado 'home'.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/address-use"
      }
    },
    {
      "id" : "Address.type",
      "path" : "Address.type",
      "short" : "Tipo do endereço",
      "definition" : "Distingue entre endereços físicos (físico/para visita) e endereços postais (para correspondência).",
      "comment" : "Os valores permitidos são: postal (endereço postal), physical (endereço físico), both (ambos). Para aldeias indígenas, geralmente será 'physical'.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/address-type"
      }
    },
    {
      "id" : "Address.line",
      "path" : "Address.line",
      "short" : "Linha de endereço",
      "definition" : "Este componente contém o nome da rua, número da casa, nome da aldeia, apartamento, número de caixa postal ou similar.",
      "comment" : "Para endereços de aldeias indígenas, este campo pode conter o nome da aldeia e informações adicionais de localização dentro da comunidade."
    },
    {
      "id" : "Address.city",
      "path" : "Address.city",
      "short" : "Município",
      "definition" : "Nome do município onde está localizado o endereço.",
      "comment" : "Para aldeias indígenas, este campo deve conter o município de referência onde a aldeia está situada."
    },
    {
      "id" : "Address.district",
      "path" : "Address.district",
      "short" : "Distrito",
      "definition" : "Nome do distrito administrativo (conhecido como bairro em algumas regiões).",
      "comment" : "Este campo pode ser utilizado para especificar subdivisões administrativas dentro do município."
    },
    {
      "id" : "Address.state",
      "path" : "Address.state",
      "short" : "Estado (UF)",
      "definition" : "Sigla ou nome do estado (Unidade Federativa) onde está localizado o endereço.",
      "comment" : "Deve ser utilizada a sigla do estado brasileiro (ex: AM, RS, RR, etc.)."
    },
    {
      "id" : "Address.postalCode",
      "path" : "Address.postalCode",
      "short" : "CEP (Código de Endereçamento Postal)",
      "definition" : "Código de endereçamento postal designado pelo Correios do Brasil.",
      "comment" : "O CEP deve ser fornecido no formato XXXXX-XXX. Para aldeias indígenas, pode-se utilizar o CEP do polo-base ou município de referência quando a aldeia não possuir CEP específico."
    },
    {
      "id" : "Address.country",
      "path" : "Address.country",
      "short" : "País",
      "definition" : "Código do país em formato ISO 3166.",
      "comment" : "Para o Brasil, deve ser utilizado o código 'BR' ou 'BRA'.",
      "patternString" : "BR"
    },
    {
      "id" : "Address.period",
      "path" : "Address.period",
      "short" : "Período de validade do endereço",
      "definition" : "Período de tempo em que o endereço esteve ou está em uso.",
      "comment" : "Este elemento é útil para manter histórico de endereços anteriores, especialmente importante para populações com mobilidade territorial."
    }]
  }
}

```
