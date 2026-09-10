# BR.GOV.SAUDE.BR-CORE.FHIR\br-core-registroatendimentoclinico - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* [**Lista de artefatos**](artifacts.md)
* **br-core-registroatendimentoclinico**

## Resource Profile: br-core-registroatendimentoclinico 

| | |
| :--- | :--- |
| *URL Canônica*:https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-registroatendimentoclinico | *Versão*:1.1.0 |
| Active as of 2026-09-10 | *Nome computável*:BRCoreRegistroAtendimentoClinico |

 
Esse perfil restringe o perfil [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) para especificar um documento clínico, o registro de atendimento clínico, definido pela [PORTARIA Nº 234, DE 18 DE JULHO DE 2022](https://www.cosemssp.org.br/wp-content/uploads/2022/07/PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-DOU-Imprensa-Nacional.pdf), que institui o Modelo de Informação (MI) Registro de Atendimento Clínico (RAC). Este modelo compreende um conjunto essencial de elementos e dados administrativos e clínicos que fornecem um instantâneo (snapshot) das informações de uma consulta realizada a um indivíduo no âmbito da atenção básica, especializada ou domiciliar (atendimento diário). Apresenta informações relacionadas ao acompanhamento do indivíduo como medições, observações, diagnósticos e/ou problemas, exames, procedimentos, pequenas cirurgias e desfecho 

### Caso de uso

O perfil [Clinical Document](https://hl7.org/fhir/R4/clinicaldocument.html) restringe a Composição para especificar um documento clínico (correspondendo ao modelo CDA). A composição básica é um recurso geral para composições ou documentos sobre qualquer tipo de assunto que possa ser encontrado na área da saúde, incluindo diretrizes, medicamentos, etc. Um documento clínico é focado em documentos relacionados ao processo de prestação de cuidados, onde o sujeito é um paciente, um grupo de pacientes ou um conceito intimamente relacionado. Um documento clínico tem requisitos adicionais de confidencialidade que não se aplicam da mesma forma a outros tipos de documentos.

O perfil [br-core-registroatendimentoclinico](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-registroatendimentoclinico.html) é um documento clínico projetado para apoiar todos cenários de casos de uso, que incluem a prestação de cuidados planejados e não planejados em regime extra-hospitalar (ambulatórios, consultórios, policlínicas, atenção domiciliar e telessaúde), abrangendo os elementos de dados essenciais, extensões (quando necessárias) e terminologias para o intercâmbio de informações interoperáveis processadas para múltiplos sistemas de informações em saúde, apoiando a comunicação entre os diversos níveis de atenção: subsidiando a continuidade e transição de cuidados efetivas dos pacientes dentro do Sistema de Saúde; contribuindo para melhorar a qualidade da atenção em saúde e a segurança do indivíduo e também a agregação e a análise de dados para tomada de decisão e produção de conhecimento.

### Caso de uso da RNDS

O princípio geral adotado na definição do [br-core-registroatendimentoclinico]() é ser compatível com o Documento Clínico do RAC da RNDS, IPS e br-core, para definir o modelo computacional, herdou-se a estrutura da representação canônica do documento clínico do FHIR R4 ([https://hl7.org/fhir/R4/clinicaldocument.html](https://hl7.org/fhir/R4/clinicaldocument.html)) e nas orientações do IG Clinical Document que servem como um ponto de partida universal comum para aqueles que criam suas próprias especificações de documentos clínicos FHIR e oferece suporte a usuários de CDA que desejam migrar para uma representação de documentos clínicos baseada em FHIR. Este é perfil de domínio universal para uso em todo o mundo para facilitar a consistência e a conformidade com o padrão FHIR. A Tabela 1 apresenta o mapeamento de estrutura realizado entre o perfil do RAC da RNDS e o perfil br-core-registroatendimentoclinico.

**Tabela 1. Mapeamento do RAC RNDS para br-core-registroatendimentoclinico**

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Composition.status | 1..1 | O status de fluxo de trabalho/clínico desta composição. |  | Suprimido na RNDS | [http://hl7.org/fhir/ValueSet/br-core-registroatendimentoclinico-status](http://hl7.org/fhir/ValueSet/composition-status) |  |
| Composition.type | 1..1 | Especifica o tipo particular de composição (por exemplo, Sumario de Alta, Registro de Imunização). | [BRTipoDocumento](http://hl7.org/fhir/R4/valueset-doc-typecodes.html) | Map from MSBRTipoDocumentoRACRegistro de Atendimento Clínico to LOINC 34108-1 Outpatient Note | [http://hl7.org/fhir/R4/valueset-doc-typecodes.html](http://hl7.org/fhir/R4/valueset-doc-typecodes.html) | br-core-registroatendimento clinico.type |
| Composition.type.text | 0..1 | Representação em texto livre do conceito |  | Fixo em Resumo do Atendimento Clínico | Resumo do Atendimento Clínico | br-core-registroatendimento clinico.type |
| Composition.category | 0..1 | Categoria da Composição. |  | Suprimido na RNDS | [https://hl7.org/fhir/R4/valueset-document-classcodes.html](https://hl7.org/fhir/R4/valueset-document-classcodes.html) | br-core-registroatendimento clinico.category |
| Composition. confidentiality | 0..1 | O código que especifica o nível de confidencialidade desta composição. |  | Suprimido na RNDS | [http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification](http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification) | br-core-registroatendimento clinico. confidentiality |
| Composition. attester.mode | 1..1 | O tipo de certificação que o autenticador oferece. |  | Suprimido na RNDS | [http://hl7.org/fhir/R4/valueset-br-core-registroatendimentoclinico-attestation-mode.html](http://hl7.org/fhir/R4/valueset-br-core-registroatendimentoclinico-attestation-mode.html) | br-core-registroatendimento clinico.attester. mode |
| Composition. relatesTo.code | 0..1 | Alvo do relacionamento da composição |  | Suprimido na RNDS | [http://hl7.org/fhir/R4/valueset-document-relationship-type.html](http://hl7.org/fhir/R4/valueset-document-relationship-type.html) | br-core-registroatendimento clinico.relatesTo. code |
| Composition.relatesTo. target.reference | 0..1 | Referência à br-core-registroatendimento clinico alvo |  | Suprimido na RNDS | Reference(br-core-registroatendimento clinico) | br-core-registroatendimento clinico.relatesTo. target.reference |
| Composition.event. code | 0..* | Esta lista de códigos representa os principais atos clínicos, como uma colonoscopia ou uma apendicectomia, sendo documentados. Em alguns casos, o evento é inerente ao typeCode, como um "Histórico e Relatório Físico", no qual o procedimento documentado é necessariamente um ato de "Histórico e Físico". |  | Suprimido da RNDS | [http://terminology.hl7.org/ValueSet/v3-ActCode](http://terminology.hl7.org/ValueSet/v3-ActCode) | br-core-registroatendimento clinico.event.code |
| Composition.section. mode | 0..1 | Método de processamento da seção |  | Suprimido RNDS | [http://hl7.org/fhir/R4/valueset-list-mode.html](http://hl7.org/fhir/R4/valueset-list-mode.html) | br-core-registroatendimento clinico.section.mode |
| Composition.section. orderedBy | 0..1 | Especifica a ordem dos itens nas sections.entry |  | Suprimido RNDS | [http://hl7.org/fhir/R4/valueset-list-order.html](http://hl7.org/fhir/R4/valueset-list-order.html) | br-core-registroatendimento clinico.section. orderedBy |
| Composition.section. emptyReason | 0..1 | Explicação porque a seção está vazia |  | Suprimido na RNDS | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section. emptyReason |
| Composition.section [diagnosticosAvaliados]. mode | 0..1 | Método de processamento da seção |  | Suprimido RNDS | [http://hl7.org/fhir/R4/valueset-list-mode.html](http://hl7.org/fhir/R4/valueset-list-mode.html) | br-core-registroatendimento clinico.section [diagnosticosAvaliados]. mode |
| Composition.section [diagnosticosAvaliados]. orderedBy | 0..1 | Especifica a ordem dos itens nas sections.entry |  | Suprimido RNDS | [http://hl7.org/fhir/R4/valueset-list-order.html](http://hl7.org/fhir/R4/valueset-list-order.html) | br-core-registroatendimento clinico.section [diagnosticosAvaliados]. orderedBy |
| Composition.section [diagnosticosAvaliados]. emptyReason | 1..* |  |  | Suprimido RNDS | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section [diagnosticosAvaliados]. emptyReason |
| Composition.section [procedimentosRealizados]. mode | 0..1 | Método de processamento da seção |  | Suprimido no RAC | [http://hl7.org/fhir/R4/valueset-list-mode.html](http://hl7.org/fhir/R4/valueset-list-mode.html) | br-core-registroatendimento clinico.section [procedimentosRealizados]. mode |
| Composition.section [procedimentosRealizados]. orderedBy | 0..1 | Especifica a ordem dos itens nas sections.entry |  | Suprimido no RAC | [http://hl7.org/fhir/R4/valueset-list-order.html](http://hl7.org/fhir/R4/valueset-list-order.html) | br-core-registroatendimento clinico.section [procedimentosRealizados]. orderedBy |
| Composition.section [procedimentosRealizados]. entry | 1..* | Referência ao recurso que contém os dados desta seção |  | Suprimido no RAC | Reference(Procedure | DocumentReference) | br-core-registroatendimento clinico.section [procedimentosRealizados]. entry |
| Composition.section [procedimentosRealizados]. emptyReason | 0..1 | Explicação porque a seção está vazia |  | Suprimido no RAC | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section [procedimentosRealizados]. emptyReason |
| Composition.section [sinaisVitais] .mode | 0..1 | Método de processamento da seção |  | Suprimido da RNDS | [http://hl7.org/fhir/R4/valueset-list-mode.html](http://hl7.org/fhir/R4/valueset-list-mode.html) | br-core-registroatendimento clinico.section [sinaisVitais].mode |
| Composition.section [sinaisVitaiss]. orderedBy | 0..1 | Especifica a ordem dos itens nas sections.entry |  | Suprimido da RNDS | [http://hl7.org/fhir/R4/valueset-list-order.html](http://hl7.org/fhir/R4/valueset-list-order.html) | br-core-registroatendimento clinico.section [sinaisVitais].orderedBy |
| Composition.section [sinaisVitais]. emptyReason | 0..1 | Explicação porque a seção está vazia |  | Suprimido da RNDS | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section [sinaisVitais]. emptyReason |
| Composition.section [históriaObstétrica]. mode | 0..1 | Método de processamento da seção |  | Suprimido da RNDS | [http://hl7.org/fhir/R4/valueset-list-mode.html](http://hl7.org/fhir/R4/valueset-list-mode.html) | br-core-registroatendimentoclinico. section [históriaObstétrica]. mode |
| Composition.section [históriaObstétrica]. orderedBy | 0..1 | Especifica a ordem dos itens nas sections.entry |  | Suprimido da RNDS | [http://hl7.org/fhir/R4/valueset-list-order.html](http://hl7.org/fhir/R4/valueset-list-order.html) | br-core-registroatendimento clinico.section [históriaObstétrica]. orderedBy |
| Composition.section [históriaObstétrica]. emptyReason | 0..1 | Explicação porque a seção está vazia |  |  | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section [históriaObstétrica]. emptyReason |
| Composition.section [tipoAleitamentoMaterno]. mode | 0..1 | Método de processamento da seção |  | Não existe na RNDS | [http://hl7.org/fhir/R4/valueset-list-mode.html](http://hl7.org/fhir/R4/valueset-list-mode.html) | br-core-registroatendimento clinico.section [tipoAleitamentoMaterno]. mode |
| Composition.section [tipoAleitamentoMaterno]. orderedBy | 0..1 | Especifica a ordem dos itens nas sections.entry |  | Não existe na RNDS | [http://hl7.org/fhir/R4/valueset-list-order.html](http://hl7.org/fhir/R4/valueset-list-order.html) | br-core-registroatendimento clinico.section [tipoAleitamentoMaterno]. orderedBy |
| Composition.section [tipoAleitamentoMaterno]. emptyReason | 0..1 | Explicação porque a seção está vazia |  | Não existe na RNDS | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section [tipoAleitamentoMaterno]. emptyReason |
| Composition.section [históriaSocial]. mode | 0..1 | Método de processamento da seção |  | Não existe na RNDS | [http://hl7.org/fhir/R4/valueset-list-mode.html](http://hl7.org/fhir/R4/valueset-list-mode.html) | br-core-registroatendimento clinico.section [históriaSocial]. mode |
| Composition.section [históriaSocial]. orderedBy | 0..1 | Especifica a ordem dos itens nas sections.entry |  | Não existe na RNDS | [http://hl7.org/fhir/R4/valueset-list-order.html](http://hl7.org/fhir/R4/valueset-list-order.html) | br-core-registroatendimento clinico.section [históriaSocial]. orderedBy |
| Composition.section [HistoriaSocial]. emptyReason | 0..1 | Explicação porque a seção está vazia |  | Não existe na RNDS | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section [historiaSocial]. emptyReason |
| Composition.section [alergiasIntolerancias]. code | 0..1 | Identificador exclusivo para referência entre elementos |  | Suprimido na RNDS | Fixed Value: (Complex) | br-core-registroatendimento clinico.section [alergiasIntolerancias]. code |
| Composition.section [alergiasIntolerancias]. code.coding.system | 0..1 | Identificador do sistema de terminologia |  | Suprimido na RNDS | [http://www.loinc.org/](http://www.loinc.org/) | br-core-registroatendimento clinico.section [alergiasIntolerancias]. code.coding.system |
| Composition.section [alergiasIntolerancias]. code.coding.code | 0..1 |  |  | Suprimido na RNDS | Fixo em 48765-2 | br-core-registroatendimento clinico.section [alergiasIntolerancias]. code.coding.code |
| Composition.section [alergiasIntolerancias]. code.coding.display | 0..1 |  |  | Suprimido na RNDS | Alergias e Intolerãncias | br-core-registroatendimento clinico.section [alergiasIntolerancias]. code.coding.display |
| Composition.section [alergiasIntolerancias]. mode | 0..1 | Método de processamento da seção |  | Suprimido na RNDS | [http://hl7.org/fhir/R4/valueset-list-mode.html](http://hl7.org/fhir/R4/valueset-list-mode.html) | br-core-registroatendimento clinico.section [alergiasIntolerancias]. mode |
| Composition.section [alergiasIntolerancias]. orderedBy | 0..1 | Especifica a ordem dos itens nas sections.entry |  | Suprimido na RNDS | [http://hl7.org/fhir/R4/valueset-list-order.html](http://hl7.org/fhir/R4/valueset-list-order.html) | br-core-registroatendimento clinico.section [alergiasIntolerancias]. orderedBy |
| Composition.section [alergiasIntolerancias]. emptyReason | 0..1 | Explicação porque a seção está vazia |  | Suprimido na RNDS | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section [alergiasIntolerancias]. emptyReason |
| Composition.section [Medicamentos]. mode | 0..1 | Método de processamento da seção |  | Suprimido na RNDS | [http://hl7.org/fhir/R4/valueset-list-mode.html](http://hl7.org/fhir/R4/valueset-list-mode.html) | br-core-registroatendimento clinico.section [Medicamentos]. mode |
| Composition.section [Medicamentos]. orderedBy | 0..1 | Especifica a ordem dos itens nas sections.entry |  | Suprimido da RNDS | [http://hl7.org/fhir/R4/valueset-list-order.html](http://hl7.org/fhir/R4/valueset-list-order.html) | br-core-registroatendimento clinico.section [Medicamentos]. orderedBy |
| Composition.section [Medicamentos]. entry | 1..* | Referência ao recurso que contém os dados desta seção |  | Reference (BRRegistroPrescricaoMedicamento) que referecia o medication request, porém é apenas para um para um, quando no IPS é 0.*. No caso de um sumário, podem ter vários medicationRequests, a RNDS usa o RPM. Não contempla todos os casos de uso de um atendimento clínico, nem mesmo o modelo do RAC | Reference (MedicationStatement | MedicationRequest | MedicationAdministration | MedicationDispense | DocumentReference) | br-core-registroatendimento clinico.section [Medicamentos]. entry |
| Composition.section [Medicamentos]. emptyReason | 0..1 | Explicação porque a seção está vazia |  | Suprimido na RNDS | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section [Medicamentos]. emptyReason |
| Composition.section [planoCuidados]. emptyReason | 0..1 | Explicação porque a seção está vazia |  | Suprimido da RNDS | [http://hl7.org/fhir/R4/valueset-list-empty-reason.html](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) | br-core-registroatendimento clinico.section [planoCuidados]. emptyReason |

### Legibilidade humana e renderização de documentos clínicos FHIR

A [orientação narrativa principal do FHIR](https://hl7.org/fhir/R4/narrative.html) estipula que a narrativa de um recurso “DEVE refletir todo o conteúdo necessário para que um humano entenda as informações clínicas e comerciais essenciais para o recurso”. Além disso, para garantir a comunicação inequívoca da narrativa atestada de um documento clínico, este IG exige que:

1. Deve haver um método determinístico pelo qual um destinatário de um Documento Clínico FHIR arbitrário possa exibir o conteúdo narrativo da nota em um navegador da Web padrão.
1. A legibilidade humana não deve exigir que um remetente transmita uma folha de estilo especial junto com um Documento Clínico FHIR. Deve ser possível renderizar todos os Documentos Clínicos FHIR com uma única folha de estilo e ferramentas de exibição de mercado geral.
1. A legibilidade humana se aplica ao conteúdo autenticado. Pode haver informações adicionais transmitidas no documento que estão lá principalmente para processamento de máquina que não são autenticadas e não precisam ser renderizadas.

Metadados de documentos clínicos (por exemplo, nome e data de nascimento do paciente, provedores participantes) também podem precisar ser renderizados, com a ressalva, conforme declarado no padrão [Consolidated CDA Templates for Clinical Notes](https://www.hl7.org/ccdasearch/pdfs/CCDA_Volume_One.pdf), “Metadados carregados no cabeçalho podem já estar disponíveis para renderização de EHRs ou outras fontes externas ao documento. Um exemplo disso seria um médico usando um EHR que já contém o nome do paciente, data de nascimento, endereço atual e número de telefone. Quando um documento CDA é renderizado dentro desse EHR, essas informações podem não precisar ser exibidas, pois já são conhecidas e exibidas na interface do usuário do EHR”.

O recurso Composition é especial porque pode transmitir narrativas em Composition.text e Composition.section.text. Este IG recomenda que metadados de documentos sejam transmitidos em Composition.text, enquanto narrativas atestadas sejam transmitidas em Composition.section.text. Além disso, embora o destinatário do documento deva ser capaz de renderizar o conteúdo de Composition.section.text, ele pode opcionalmente renderizar Composition.text ou escolher ignorar Composition.text, especialmente quando for capaz de analisar os campos estruturados de Composition. Para resumir:

* O criador do Documento Clínico FHIR 
* **DEVE** colocar a narrativa atestada em Composition.section.text.
* **NÃO DEVE** colocar narrativa atestada redundantemente em Composition.text e Composition.section.text.
* **PODE** incluir narrativa que não seja derivada de nenhum dado estruturado.
* **DEVE** incluir metadados do documento (por exemplo, paciente) em Composition.text.
* **PODE** incluir uma lista de seções do documento em Composition.text
 
* O destinatário do Documento Clínico FHIR 
* **DEVE** incluir, no mínimo, Composition.title, Composition.section.title e Composition.section.text em qualquer versão do documento.
* **PODE** incluir Composition.text em uma representação do documento.
* **PODE** renderizar informações adicionais do documento (como nome do paciente e data de nascimento) derivadas de campos de composição estruturados.
 

Essas regras se aplicam até mesmo a outros campos do tipo narrativo (por exemplo, FHIR R5 Composition.note, extensão FHIR ‘note’).

As boas práticas recomendam que, a o seguinte esteja presente sempre que o documento for visualizado: Título do documento e datas do documento; Tipos de serviço e encontro e intervalos de datas, conforme apropriado; Nomes de todas as pessoas, juntamente com suas funções, participações, intervalos de datas de participação, identificadores, endereço e informações de telecomunicações; Nomes de organizações selecionadas, juntamente com suas funções, participações, intervalos de datas de participação, identificadores, endereço e informações de telecomunicações; Data de nascimento do(s) sujeito(s); Informações de identificação do paciente.

Os recursos mandatórios e must support do

* br-core-registroatendimentoclinico.identifier
* br-core-registroatendimentoclinico.text
* br-core-registroatendimentoclinico.status
* br-core-registroatendimentoclínico.type
* br-core-registroatendimentoclinico.subject
* br-core-registroatendimentoclinico.encounter
* br-core-registroatendimentoclínico.date
* br-core-registroatendimentoclínico.author
* br-core-registroatendimentoclínico.attester
* br-core-registroatendimentoclínico.attester.party
* br-core-registroatendimentoclínico.custodian
* br-core-registroatendimentoclínico.attester.time
* br-core-registroatendimentoclínico.attester.mode
* br-core-registroatendimentoclínico.relatesTo.target
* br-core-registroatendimentoclinico: event:careProvisioningEvent
* br-core-registroatendimentoclinico: event:careProvisioningEvent .code
* br-core-registroatendimentoclinico. event:careProvisioningEvent.detail
* br-core-registroatendimentoclínico.section
* br-core-registroatendimentoclínico.section-code
* br-core-registroatendimentoclínico.section-text

Outros recursos referenciados por esses recursos PODEM ser incluídos no Bundle a critério do sistema de autoria, conforme documentado na definição de operação do sistema (como a operação $document) ou conforme especificado por quaisquer perfis aplicáveis.

Sistemas clínicos não têm nenhuma provisão para remover informações errôneas do registro de um paciente, e não há como o usuário saber que o registro não é adequado para uso. Isso não é seguro.

Observações com relação ao padrão CDA estão disponíveis em [https://www.hl7.org/fhir/r4/composition.html#cda](https://www.hl7.org/fhir/r4/composition.html#cda).

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.gov.saude.br-core.fhir|current/StructureDefinition/StructureDefinition-br-core-registroatendimentoclinico.json)

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

Obrigatório: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreVitalSigns (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-vitalsigns)](StructureDefinition-br-core-vitalsigns.md)
* [BRCoreObservationPregnancyStatus (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancystatus)](StructureDefinition-br-core-observationpregnancystatus.md)
* [BRCoreObservationPregnancyOutcome (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyoutcome)](StructureDefinition-br-core-observationpregnancyoutcome.md)
* [BRCoreObservationBreastfeedingStatus (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationbreastfeedingstatus)](StructureDefinition-br-core-observationbreastfeedingstatus.md)
* [BRCoreObservationAlcoholUse (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationalcoholuse)](StructureDefinition-br-core-observationalcoholuse.md)
* [BRCoreObservationTobaccoUse (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationtobaccouse)](StructureDefinition-br-core-observationtobaccouse.md)
* [br-core-allergyintolerance (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance)](StructureDefinition-br-core-allergyintolerance.md)
* [br-core-medicationstatement (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement)](StructureDefinition-br-core-medicationstatement.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [br-core-medicationdispense (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense)](StructureDefinition-br-core-medicationdispense.md)
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

Obrigatório: 2 elementos

**Estruturas**

Esta estrutura refere-se a estas outras estruturas:

* [BRCoreCondition (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)](StructureDefinition-br-core-condition.md)
* [BRCoreProcedure (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)](StructureDefinition-br-core-procedure.md)
* [BRCoreVitalSigns (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-vitalsigns)](StructureDefinition-br-core-vitalsigns.md)
* [BRCoreObservationPregnancyStatus (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancystatus)](StructureDefinition-br-core-observationpregnancystatus.md)
* [BRCoreObservationPregnancyOutcome (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyoutcome)](StructureDefinition-br-core-observationpregnancyoutcome.md)
* [BRCoreObservationBreastfeedingStatus (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationbreastfeedingstatus)](StructureDefinition-br-core-observationbreastfeedingstatus.md)
* [BRCoreObservationAlcoholUse (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationalcoholuse)](StructureDefinition-br-core-observationalcoholuse.md)
* [BRCoreObservationTobaccoUse (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationtobaccouse)](StructureDefinition-br-core-observationtobaccouse.md)
* [br-core-allergyintolerance (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance)](StructureDefinition-br-core-allergyintolerance.md)
* [br-core-medicationstatement (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement)](StructureDefinition-br-core-medicationstatement.md)
* [br-core-medicationrequest (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest)](StructureDefinition-br-core-medicationrequest.md)
* [br-core-medicationadministration (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration)](StructureDefinition-br-core-medicationadministration.md)
* [br-core-medicationdispense (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense)](StructureDefinition-br-core-medicationdispense.md)
* [BRCoreCarePlan (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan)](StructureDefinition-br-core-careplan.md)
* [BRCoreCapacidadeFuncional (https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-capacidadefuncional)](StructureDefinition-br-core-capacidadefuncional.md)

**Fatias**

Esta estrutura define os seguintes [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Composition.section

 

Outras representações de perfil: [CSV](StructureDefinition-br-core-registroatendimentoclinico.csv), [Excel](StructureDefinition-br-core-registroatendimentoclinico.xlsx), [Schematron](StructureDefinition-br-core-registroatendimentoclinico.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "br-core-registroatendimentoclinico",
  "url" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-registroatendimentoclinico",
  "version" : "1.1.0",
  "name" : "BRCoreRegistroAtendimentoClinico",
  "title" : "br-core-registroatendimentoclinico",
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
  "description" : "Esse perfil restringe o perfil [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) para especificar um documento clínico, o registro de atendimento clínico, definido pela [PORTARIA Nº 234, DE 18 DE JULHO DE 2022](https://www.cosemssp.org.br/wp-content/uploads/2022/07/PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-DOU-Imprensa-Nacional.pdf), que institui o Modelo de Informação (MI) Registro de Atendimento Clínico (RAC). Este modelo compreende um conjunto essencial de elementos e dados administrativos e clínicos que fornecem um instantâneo (snapshot) das informações de uma consulta realizada a um indivíduo no âmbito da atenção básica, especializada ou domiciliar (atendimento diário). Apresenta informações relacionadas ao acompanhamento do indivíduo como medições, observações, diagnósticos e/ou problemas, exames, procedimentos, pequenas cirurgias e desfecho",
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
      "min" : 1
    },
    {
      "id" : "Composition.section:diagnosticosAvaliados",
      "path" : "Composition.section",
      "sliceName" : "diagnosticosAvaliados",
      "short" : "Seção de Resumo de Diagnósticos Avaliados",
      "definition" : "Seção de Resumo de Diagnósticos Admissão",
      "min" : 1,
      "max" : "*"
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
      "short" : "Diagnósticos avaliados relevantes para o sumário internacional do paciente",
      "definition" : "Diagnósticos avaliados relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition"]
      }]
    },
    {
      "id" : "Composition.section:procedimentosRealizados",
      "path" : "Composition.section",
      "sliceName" : "procedimentosRealizados",
      "short" : "Seção de Resumo de Procedimentos Realizados",
      "definition" : "Seção de Resumo de Procedimentos Realizados",
      "min" : 0,
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
      "definition" : "Procedimentos realizados relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure"]
      }]
    },
    {
      "id" : "Composition.section:sinaisVitais",
      "path" : "Composition.section",
      "sliceName" : "sinaisVitais",
      "short" : "Seção de Resumo de Sinais Vitais",
      "definition" : "Seção de Resumo de Sinais Vitais",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:sinaisVitais.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:sinaisVitais.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Sinais Vitais'",
      "definition" : "Título da seção - Fixo em 'Sinais Vitais'"
    },
    {
      "id" : "Composition.section:sinaisVitais.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "8716-3"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Vital Signs Document"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:sinaisVitais.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:sinaisVitais.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:sinaisVitais.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:sinaisVitais.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:sinaisVitais.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:sinaisVitais.entry",
      "path" : "Composition.section.entry",
      "short" : "Sinais vitais relevantes para o sumário internacional do paciente",
      "definition" : "Sinais vitais relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-vitalsigns"]
      }]
    },
    {
      "id" : "Composition.section:historiaObstetrica",
      "path" : "Composition.section",
      "sliceName" : "historiaObstetrica",
      "short" : "Seção de Resumo de História obstétrica",
      "definition" : "Seção de Resumo de História obstétrica",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:historiaObstetrica.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:historiaObstetrica.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'História obstétrica'",
      "definition" : "Título da seção - Fixo em 'História obstétrica'"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "89213-3"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Obstetrics History and physical note Document"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:historiaObstetrica.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:historiaObstetrica.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:historiaObstetrica.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:historiaObstetrica.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:historiaObstetrica.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:historiaObstetrica.entry",
      "path" : "Composition.section.entry",
      "short" : "História obstétrica relevantes para o sumário internacional do paciente",
      "definition" : "História obstétrica relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancystatus",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyoutcome"]
      }]
    },
    {
      "id" : "Composition.section:aleitamentoMaterno",
      "path" : "Composition.section",
      "sliceName" : "aleitamentoMaterno",
      "short" : "Seção de Resumo de Aleitamento Materno",
      "definition" : "Seção de Resumo de Aleitamento Materno",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Aleitamento Materno'",
      "definition" : "Título da seção - Fixo em 'Aleitamento Materno'"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "63895-7"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Breastfeeding status Document"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:aleitamentoMaterno.entry",
      "path" : "Composition.section.entry",
      "short" : "Aleitamento materno para o sumário internacional do paciente",
      "definition" : "Aleitamento materno relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationbreastfeedingstatus"]
      }]
    },
    {
      "id" : "Composition.section:historiaSocial",
      "path" : "Composition.section",
      "sliceName" : "historiaSocial",
      "short" : "Seção de Resumo de História Social",
      "definition" : "Seção de Resumo de História Social",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:historiaSocial.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:historiaSocial.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'História Social'",
      "definition" : "Título da seção - Fixo em 'História Social'"
    },
    {
      "id" : "Composition.section:historiaSocial.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:historiaSocial.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:historiaSocial.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:historiaSocial.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:historiaSocial.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:historiaSocial.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:historiaSocial.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:historiaSocial.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:historiaSocial.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "29762-2"
    },
    {
      "id" : "Composition.section:historiaSocial.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Social history Narrative Document"
    },
    {
      "id" : "Composition.section:historiaSocial.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:historiaSocial.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:historiaSocial.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:historiaSocial.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:historiaSocial.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:historiaSocial.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:historiaSocial.entry",
      "path" : "Composition.section.entry",
      "short" : "História social relevantes para o sumário internacional do paciente",
      "definition" : "História social relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationalcoholuse",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observationtobaccouse"]
      }]
    },
    {
      "id" : "Composition.section:alergiasIntolerancias",
      "path" : "Composition.section",
      "sliceName" : "alergiasIntolerancias",
      "short" : "Seção de Resumo de Alergias e Intolerâncias",
      "definition" : "Seção de Resumo de Alergias e Intolerâncias",
      "min" : 0,
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
      "short" : "Alergias e intolerâncias relevantes para o sumário internacional do paciente",
      "definition" : "Alergias e intolerâncias relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance"]
      }]
    },
    {
      "id" : "Composition.section:medicamentos",
      "path" : "Composition.section",
      "sliceName" : "medicamentos",
      "short" : "Seção de Resumo de Medicamentos",
      "definition" : "Seção de Resumo de Medicamentos",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:medicamentos.id",
      "path" : "Composition.section.id",
      "short" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:medicamentos.title",
      "path" : "Composition.section.title",
      "short" : "Título da seção - Fixo em 'Medicamentos'",
      "definition" : "Título da seção - Fixo em 'Medicamentos'"
    },
    {
      "id" : "Composition.section:medicamentos.code",
      "path" : "Composition.section.code",
      "short" : "Classificação da seção da Composition/Document",
      "definition" : "Classificação da seção da Composition/Document"
    },
    {
      "id" : "Composition.section:medicamentos.code.id",
      "path" : "Composition.section.code.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:medicamentos.code.extension",
      "path" : "Composition.section.code.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:medicamentos.code.coding",
      "path" : "Composition.section.code.coding",
      "short" : "Código definido por uma terminologia",
      "definition" : "Código definido por uma terminologia"
    },
    {
      "id" : "Composition.section:medicamentos.code.coding.id",
      "path" : "Composition.section.code.coding.id",
      "short" : "Identificador exclusivo para referência entre elementos",
      "definition" : "Identificador exclusivo para referência entre elementos"
    },
    {
      "id" : "Composition.section:medicamentos.code.coding.extension",
      "path" : "Composition.section.code.coding.extension",
      "short" : "Conteúdo adicional definido por implementações",
      "definition" : "Conteúdo adicional definido por implementações"
    },
    {
      "id" : "Composition.section:medicamentos.code.coding.system",
      "path" : "Composition.section.code.coding.system",
      "short" : "Identificador da terminologia",
      "definition" : "Identidade da terminologia",
      "patternUri" : "https://loinc.org/"
    },
    {
      "id" : "Composition.section:medicamentos.code.coding.version",
      "path" : "Composition.section.code.coding.version",
      "short" : "Versão da terminologia - se relevante",
      "definition" : "Versão da terminologia  - se relevante"
    },
    {
      "id" : "Composition.section:medicamentos.code.coding.code",
      "path" : "Composition.section.code.coding.code",
      "short" : "Código do conceito na sintaxe definida pela terminologia",
      "definition" : "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'",
      "patternCode" : "52471-0"
    },
    {
      "id" : "Composition.section:medicamentos.code.coding.display",
      "path" : "Composition.section.code.coding.display",
      "short" : "Descrição conforme definido pela terminologia",
      "definition" : "Representação definida pela terminologia",
      "patternString" : "Medications Document"
    },
    {
      "id" : "Composition.section:medicamentos.code.coding.userSelected",
      "path" : "Composition.section.code.coding.userSelected",
      "short" : "Se esta codificação foi escolhida diretamente pelo usuário",
      "definition" : "Se esta codificação foi escolhida diretamente pelo usuário"
    },
    {
      "id" : "Composition.section:medicamentos.code.text",
      "path" : "Composition.section.code.text",
      "short" : "Representação em texto do conceito",
      "definition" : "Representação em texto do conceito"
    },
    {
      "id" : "Composition.section:medicamentos.author",
      "path" : "Composition.section.author",
      "short" : "Quem/o quê foi o autor desta seção",
      "definition" : "Quem/o quê foi o autor desta seção"
    },
    {
      "id" : "Composition.section:medicamentos.focus",
      "path" : "Composition.section.focus",
      "short" : "Referência à recurso associado desta seção",
      "definition" : "Referência à recurso associado desta seção"
    },
    {
      "id" : "Composition.section:medicamentos.text",
      "path" : "Composition.section.text",
      "short" : "Resumo de texto da seção",
      "definition" : "Resumo de texto da seção"
    },
    {
      "id" : "Composition.section:medicamentos.orderedBy",
      "path" : "Composition.section.orderedBy",
      "short" : "Ordem dos elementos na seção 'entry'",
      "definition" : "Ordem dos elementos na seção 'entry'"
    },
    {
      "id" : "Composition.section:medicamentos.entry",
      "path" : "Composition.section.entry",
      "short" : "Medicamentos relevantes para o sumário internacional do paciente",
      "definition" : "Medicamentos relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }]
    },
    {
      "id" : "Composition.section:planoCuidados",
      "path" : "Composition.section",
      "sliceName" : "planoCuidados",
      "short" : "Seção de Resumo de Planos de Cuidado",
      "definition" : "Seção de Resumo de Planos de Cuidado",
      "min" : 0,
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
      "id" : "Composition.section:capacidadeFuncional",
      "path" : "Composition.section",
      "sliceName" : "capacidadeFuncional",
      "short" : "Seção de Resumo de Capacidade Funcional",
      "definition" : "Seção de Resumo de Capacidade Funcional",
      "min" : 0,
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
      "definition" : "Capacidade funcional relevantes para o sumário internacional do paciente",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-capacidadefuncional"]
      }]
    }]
  }
}

```
