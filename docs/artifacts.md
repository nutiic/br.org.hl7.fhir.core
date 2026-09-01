# BR.GOV.SAUDE.BR-CORE.FHIR\Lista de artefatos - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* **Lista de artefatos**

## Lista de artefatos

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Estruturas: perfis de recursos 

 
Eles definem restrições aos recursos do FHIR para sistemas em conformidade com este guia de implementação. 

 

| | |
| :--- | :--- |
| [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md) | Este perfil define as características mínimas para o recurso [br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md) registrar, pesquisar e buscar alergias/reações adversas associadas a um paciente. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes e restringe como os elementos são usados. Além disso, fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção. |
| [br-core-appointment](StructureDefinition-br-core-appointment.md) | Perfil brasileiro do recurso FHIR R4 Appointment, utilizado para agendamento de atendimentos, procedimentos e interações de cuidado no contexto do SUS, RNDS, saúde suplementar e privada, incluindo marcação, remarcação e cancelamento, bem como gestão de participantes, datas/horários e justificativas. |
| [br-core-careteam](StructureDefinition-br-core-careteam.md) | Este perfil restringe o recurso [CareTeam](https://hl7.org/fhir/R4/careteam.html) que inclui todas as pessoas e organizações que planejam participar da coordenação e prestação de cuidados a um paciente |
| [br-core-composition](StructureDefinition-br-core-composition.md) | Um conjunto de informações relacionadas aos cuidados em sáude que são reunidas em um único bundle lógico que estabelece seu próprio contexto e atesta quem está fazendo a declaração. Uma Composition define a estrutura e o conteúdo narrativo necessários para um documento. No entanto, uma Composition sozinha não constitui um documento. Em vez disso, a Composition deve ser a primeira entrada em um Bundle onde Bundle.type=document, e quaisquer outros recursos referenciados da Composition devem ser incluídos como entradas subsequentes no Bundle (por exemplo, Patient, Practitioner, Encounter, etc.) |
| [br-core-consent](StructureDefinition-br-core-consent.md) | Este perfil define as características mínimas para o recurso [br-core-consent](StructureDefinition-br-core-consent.md) registrar, pesquisar e buscar consentimentos para tratamento de dados pessoais conforme Lei Geral de Proteção de Dados (LGPD) - Lei nº 13.709/2018. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes e restringe como os elementos são usados. Além disso, fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção. |
| [br-core-encounter](StructureDefinition-br-core-encounter.md) | Uma interação entre um paciente e o(s) prestador(es) de serviços saúde com a finalidade de fornecer serviço(s) de saúde ou avaliar o estado de saúde de um paciente |
| [br-core-healthcareservice](StructureDefinition-br-core-healthcareservice.md) | Este perfil restringe o recurso [HealthcareService](https://hl7.org/fhir/R4/healthcareservice.html) que representa os detalhes de um serviço de saúde disponível em um local |
| [br-core-location](StructureDefinition-br-core-location.md) | Este perfil restringe o recurso [Location](https://hl7.org/fhir/R4/location.html) que aborda detalhes e informações da posição de um local físico onde os serviços são fornecidos e os recursos e participantes podem ser armazenados, encontrados, contidos ou acomodados |
| [br-core-medication](StructureDefinition-br-core-medication.md) | Este recurso é uma especialização do recurso FHIR R4 [Medication](https://hl7.org/fhir/R4/medication.html) usado principalmente para a identificação e definição de um medicamento para fins de prescrição, dispensação e administração de um medicamento, bem como para fazer declarações sobre medicamentos no Brasil |
| [br-core-medicationadministration](StructureDefinition-br-core-medicationadministration.md) | Descreve o evento de um paciente consumindo ou de algum medicamento sendo administrado a um paciente. Isso pode ser tão simples quanto engolir um comprimido ou pode ser uma infusão de longa duração. Recursos relacionados vinculam esse evento à prescrição de autorização e ao atendimento specífco entre o paciente e o profissional de saúde |
| [br-core-medicationdispense](StructureDefinition-br-core-medicationdispense.md) | Este recurso Indica que um medicamento deve ser ou foi dispensado para uma pessoa/paciente. O recurso inclui a descrição do medicamento (suprimento) fornecido bem como as instruções para a sua administração. A dispensação do medicamento é o resultado de um pedido de medicamentos feito por um sistema de informações |
| [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.md) | Um pedido ou solicitação para fornecimento do medicamento e instruções para administração do medicamento a um paciente. O recurso é chamado de ‘MedicationRequest’ em vez de ‘MedicationPrescription’ ou ‘MedicationOrder’ para generalizar o uso em ambientes de internação e ambulatorial, incluindo planos de cuidados, etc., e para harmonizar com padrões de fluxo de trabalho |
| [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.md) | Um registro de um medicamento que está sendo consumido por um paciente. Um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html) indica que o paciente pode estar tomando o medicamento agora ou tomou o medicamento no passado ou tomará o medicamento no futuro. A fonte dessas informações pode ser o paciente, outra pessoa significativa (como um membro da família ou cônjuge) ou um clínico. Um cenário comum em que essas informações são capturadas é durante o processo de obtenção do histórico durante uma visita ou internação do paciente. As informações sobre medicamentos podem vir de fontes como a memória do paciente, de um frasco de prescrição ou de uma lista de medicamentos que o paciente, o clínico ou outra parte mantém.A principal diferença entre um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html) e um [br-core-medicationadministration](https://saude.gov.br/fhir/StructureDefiniton/medicationadministration.html) é que o último contém informações completas sobre a administração e é baseada em informações reais sobre a administração e da pessoa que administrou o medicamento. Um [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) é frequentemente, se não sempre, menos específico. Não há data/hora obrigatória em que o medicamento foi administrado; na verdade, sabe-se apenas que uma fonte relatou que o paciente está tomando esse medicamento, onde detalhes como hora, quantidade ou taxa ou mesmo o produto do medicamento podem estar incompletos, ausentes ou menos precisos. Conforme dito anteriormente, as informações do [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) podem vir da memória do paciente, de um frasco de prescrição ou de uma lista de medicamentos que o paciente, o clínico ou outra parte mantém. A administração de medicamentos é mais formal e não deixa de ter informações detalhadas. |
| [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.md) | Esse perfil restringe o perfil [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) para especificar um documento clínico, o registro de atendimento clínico, definido pela [PORTARIA Nº 234, DE 18 DE JULHO DE 2022](https://www.cosemssp.org.br/wp-content/uploads/2022/07/PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-DOU-Imprensa-Nacional.pdf), que institui o Modelo de Informação (MI) Registro de Atendimento Clínico (RAC). Este modelo compreende um conjunto essencial de elementos e dados administrativos e clínicos que fornecem um instantâneo (snapshot) das informações de uma consulta realizada a um indivíduo no âmbito da atenção básica, especializada ou domiciliar (atendimento diário). Apresenta informações relacionadas ao acompanhamento do indivíduo como medições, observações, diagnósticos e/ou problemas, exames, procedimentos, pequenas cirurgias e desfecho |
| [br-core-schedule](StructureDefinition-br-core-schedule.md) | Perfil brasileiro do recurso FHIR R4 Schedule, utilizado para representar agendas e disponibilidades de profissionais, serviços ou locais de saúde no contexto da RNDS e sistemas de interoperabilidade, incluindo suporte a teleconsultas e telecolposcopia. |
| [br-core-slot](StructureDefinition-br-core-slot.md) | Perfil brasileiro do recurso FHIR R4 Slot, utilizado para representar a disponibilidade e reservas de tempo em sistemas de agendamento, interoperabilidade e integração com a RNDS, permitindo a comunicação entre agendas, prestadores e sistemas de marcação de consultas e procedimentos. |
| [br-core-sumarioalta](StructureDefinition-br-core-sumarioalta.md) | Este perfil representa as informações da alta hospitalar, conforme a [PORTARIA Nº 701, DE 29 DE SETEMBRO DE 2022](https://bvsms.saude.gov.br/bvs/saudelegis/Saes/2022/prt0701_19_10_2022.html). “O Sumário de Alta é um documento essencial para:* Apoiar a comunicação das informações do sumário de alta entre os diversos níveis de atenção de modo eficiente, efetivo e a tempo, contribuindo para uma atenção coordenada entre os cuidadores do indivíduo e apoiando a continuidade dos seus cuidados;
* Melhorar a qualidade da atenção em saúde e a segurança para o indivíduo com informações qualificadas, completas e oportunas que contribuam para uma conduta mais adequada às necessidades individuais de cada indivíduo e redução de efeitos adversos;
* Contribuir para reduzir o número de reinternações evitáveis;
* Garantir que um conjunto mínimo de informações clínicas padronizadas possa ser encaminhado e processado para múltiplos sistemas de informações em saúde, tais como prontuários eletrônicos dos indivíduos, registros eletrônicos em saúde e outros sistemas que utilizam as informações clínicas como insumos em seus processos de trabalho, facilitando a agregação e análise desses dados para tomada de decisão e produção de conhecimento;
* Reduzir o custo com entradas manuais, integrações, mapeamento de sistemas independentes e manutenção dos sistemas de informação em saúde;
* Prover aos desenvolvedores a especificação do conjunto de dados, mensagens de interface padronizada para a comunicação da alta, reduzindo o tempo entre o desenvolvimento e implantação da comunicação do sumário de alta;
* Promover a simplificação e padronização das comunicações sobre os eventos de saúde entre os diversos envolvidos na atenção à saúde;
* Alimentar o registro pessoal de saúde do indivíduo.”
 |
| [BRCoreCapacidadeFuncional](StructureDefinition-br-core-capacidadefuncional.md) | Este perfil herda do recurso [br-core-condition](StructureDefinition-br-core-condition.md) |
| [BRCoreCarePlan](StructureDefinition-br-core-careplan.md) | Este perfil restringe o recurso [CarePlan](https://hl7.org/fhir/R4/careplan.html) que descreve a intenção de como um ou mais profissionais pretendem prestar cuidados a um determinado paciente, grupo ou comunidade por um período de tempo, possivelmente limitado ao cuidado de uma condição específica ou conjunto de condições |
| [BRCoreCondition](StructureDefinition-br-core-condition.md) | Este perfil representa as restrições aplicadas ao recurso FHIR R4 [Condition](http://hl7.org/fhir/R4/condition.html) |
| [BRCoreDiagnosticReport](StructureDefinition-br-core-diagnosticreport.md) | Este perfil restringe o recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) que representa as descobertas e a interpretação de testes diagnósticos realizados em pacientes, grupos de pacientes, dispositivos e locais, e/ou espécimes derivados destes. O relatório inclui contexto clínico, como solicitação e informações do provedor, e alguma mistura de resultados atômicos, imagens, interpretações textuais e codificadas, e representação formatada de relatórios diagnósticos |
| [BRCoreImmunization](StructureDefinition-br-core-immunization.md) | Este perfil restringe o recurso [Immunization](https://hl7.org/fhir/R4/immunization.html) que descreve o evento em que um paciente recebe uma vacina ou um registro de uma imunização conforme relatado por um paciente, um médico ou outra parte |
| [BRCoreObservation](StructureDefinition-br-core-observation.md) | O recurso [br-core-Observation](StructureDefinition-br-core-observation.md) herda do recurso FHIR R4 [observation](https://hl7.org/fhir/R4B/observation.html) e registra medidas e resumo simples feitas sobre um paciente, dispositivo ou outro assunto |
| [BRCoreObservationAlcoholUse](StructureDefinition-br-core-observationalcoholuse.md) | O perfil [br-core-observationalcoholuse](StructureDefinition-br-core-observationalcoholuse.md) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html), projetado para documentar a avaliação do uso de álcool em um resumo de paciente |
| [BRCoreObservationBreastfeedingStatus](StructureDefinition-br-core-observationbreastfeedingstatus.md) | Esse recurso [br-core-observationbreastfeedingstatus](StructureDefinition-br-core-observationbreastfeedingstatus.md) é uma restrição do perfil Observation para registrar informações sobre o tipo de aleitamento materno do paciente nos seus primeiros anos de vida |
| [BRCoreObservationPregnancyEDD](StructureDefinition-br-core-observationpregnancyedd.md) | Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar a data prevista para o parto |
| [BRCoreObservationPregnancyOutcome](StructureDefinition-br-core-observationpregnancyoutcome.md) | Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar o histórico resumido dos resultados da gravidez. |
| [BRCoreObservationPregnancyStatus](StructureDefinition-br-core-observationpregnancystatus.md) | Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar o estado da gravidez. |
| [BRCoreObservationTobaccoUse](StructureDefinition-br-core-observationtobaccouse.md) | O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.md) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html) para representar a avaliação sobre tabagismo em um registro de atendimento clínico ou em um sumário do paciente |
| [BRCoreOrganization](StructureDefinition-br-core-organization.md) | Este perfil representa um agrupamento formal ou informal reconhecido de pessoas ou organizações com o propósito de alcançar alguma forma de ação coletiva. Inclui empresas, instituições, corporações, departamentos, grupos comunitários, grupos de práticas de saúde, planos de saúde, empresas fabricantes de produtos medicinais, entre outros |
| [BRCorePatient](StructureDefinition-br-core-patient.md) | Este perfil representa o perfil [br-core-patient](StructureDefinition-br-core-patient.md) com todas as informações demográficas e administrativas necessárias para descrever um paciente no Brasil, com as respectivas legislações dos elementos e domínios obrigatórios conforme abaixo. O perfil [br-core-patient](StructureDefinition-br-core-patient.md) herda do recurso FHIR R4 [Patient](https://hl7.org/fhir/R4B/patient.html) para definições de escopo e uso. Este perfil define expectativas mínimas para o recurso [br-core-patient](StructureDefinition-br-core-patient.md) registrar, pesquisar e buscar dados demográficos básicos e outras informações administrativas sobre um paciente individual. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes e restringe como os elementos são usados. Para contemplar uma descrição do paciente com maior equidade, conforme recomendações da portaria GM/MS Nº 230, de 7 de março de 2023, foram adicionados atributos adicionais para expressar o sexo do paciente, além do sexo administrativo: sexo ao nascer descritos no ValueSet [BRSexoNascimento](https://terminologia.saude.gov.br/fhir/ValueSet/BRSexoNascimento) e identidade de gênero descrita no ValueSet [BRIdentidadeGenero](https://terminologia.saude.gov.br/fhir/ValueSet/BRIdentidadeGenero). Com relação a orientação sexual, este é um dado que pode mudar durante a vida do paciente, portanto, recomenda-se que ele seja coletado em cada evento assistencial |
| [BRCorePractitioner](StructureDefinition-br-core-practitioner.md) | O Profissional é uma pessoa que está direta ou indiretamente envolvida na prestação de cuidados de saúde ou serviços relacionados ao paciente |
| [BRCorePractitionerRole](StructureDefinition-br-core-practitionerrole.md) | Este perfil restringe o recurso PractitionerRole que representa um conjunto específico de funções/locais/especialidades/serviços que um profissional pode desempenhar em uma organização por um período de tempo |
| [BRCoreProcedure](StructureDefinition-br-core-procedure.md) | Este recurso descreve uma ação que é ou foi realizada em ou para um paciente. Pode ser uma intervenção física como uma operação, ou menos invasiva como serviços de longo prazo, aconselhamento ou hipnoterapia |
| [BRCoreRelatedPerson](StructureDefinition-br-core-relatedperson.md) | O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md) contém as informações sobre uma pessoa envolvida no cuidado de um paciente, mas que não é alvo de cuidados de saúde nem tem responsabilidade formal no processo de cuidado.A pessoa representada pelo recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md) normalmente tem um relacionamento profissional pessoal ou não específico de cuidado em saúde com o paciente. O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md) é usado principalmente para atribuição de informações, já que geralmente é uma fonte de informações sobre o paciente. Para manter informações sobre pessoas para fins de contato para um paciente, use um elemento br-core-patien.contact. Alguns indivíduos podem ser representados simultaneamente como um patient.contact e [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md).Exemplos de pessoas que podem ser um [br-core-relatedperson](StructureDefinition-br-core-relatedperson.md):* Esposa ou marido de um paciente
* Parentes ou amigos de um paciente
* Um vizinho que leva um paciente para o hospital
* O dono ou treinador de um cavalo
* Um advogado ou tutor do paciente
* Um cão-guia
 |
| [BRCoreServiceRequest](StructureDefinition-br-core-servicerequest.md) | Este recurso restringe o recurso [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) que registra uma solicitação de serviço, como investigações diagnósticas, tratamentos ou operações a serem realizadas |
| [BRCoreSpecimen](StructureDefinition-br-core-specimen.md) | Este perfil restringe o recurso Specimen para representar as características de amostras biológicas no contexto de resultados laboratoriais integrados a um Sumário do Paciente. O recurso Specimen descreve uma amostra utilizada para análise laboratorial |
| [BRCoreVitalSigns](StructureDefinition-br-core-vitalsigns.md) | Este perfil é baseado no perfil [VitalSigns](http://hl7.org/fhir/R4/observation-vitalsigns.html) e define restrições adicionais no recurso Observation para representar Observation de sinais vitais. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes no recurso e restringe como os elementos são usados. |

 

### Estruturas: perfis de tipo de dados 

 
Eles definem restrições nos tipos de dados FHIR para sistemas em conformidade com este guia de implementação. 

 

| | |
| :--- | :--- |
| [Endereço Brasileiro](StructureDefinition-br-core-address.md) | Perfil do tipo de dado Address para uso no contexto brasileiro, incluindo extensões específicas para localização de povos indígenas através de Aldeia, DSEI (Distrito Sanitário Especial Indígena) e Polo Base. |

 

### Estruturas: definições de extensão 

 
Eles definem restrições nos tipos de dados FHIR para sistemas em conformidade com este guia de implementação. 

 

| | |
| :--- | :--- |
| [Aldeia Indígena](StructureDefinition-br-core-address-aldeia.md) | Extensão que permite referenciar uma aldeia indígena como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira. |
| [BR Core DiagnosticReport Conduta](StructureDefinition-br-core-diagnosticreport-conduta.md) | Esta extensão representa uma conduta associada ao laudo, fornecendo orientações ou sugestões baseadas nos resultados do diagnóstico para o manejo clínico do paciente. |
| [Distrito Sanitário Especial Indígena (DSEI)](StructureDefinition-br-core-address-dsei.md) | Extensão que permite referenciar um Distrito Sanitário Especial Indígena (DSEI) como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira. |
| [Extensão de pesquisa clínica do Core do Brasil](StructureDefinition-br-core-pesquisaclinica.md) | Este perfil de extensão representa uma pesquisa clínica |
| [Extensão de populacao tradicional do Core do Brasil](StructureDefinition-br-core-populacaotradicional.md) | Este perfil de extensão representa um populacao tradicional com a qual uma pessoa se associa |
| [Extensão de povo itinerante do Core do Brasil](StructureDefinition-br-core-povoitinerante.md) | Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa |
| [Extensão do perfil BRCoreConsent define extensões específicas para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)](StructureDefinition-br-core-base-legal-lgpd.md) | Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa |
| [Polo Base](StructureDefinition-br-core-address-polo.md) | Extensão que permite referenciar um Polo Base como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira. |

 

### Exemplo: Instâncias de exemplo 

 
Essas são instâncias de exemplo que mostram como os dados produzidos e consumidos por sistemas em conformidade com este guia de implementação podem ser. 

 

| | |
| :--- | :--- |
| [07ce5462-f77b-4ad6-af8c-2f67a6500b97](Observation-07ce5462-f77b-4ad6-af8c-2f67a6500b97.md) |  |
| [1f311b28-03d5-411d-90a6-84edf417e01a](MedicationRequest-1f311b28-03d5-411d-90a6-84edf417e01a.md) |  |
| [2f42ddad-b9bb-4f68-b5b9-426054529f31](Specimen-2f42ddad-b9bb-4f68-b5b9-426054529f31.md) |  |
| [80589c80-643e-43ea-801b-5f32616e9a27](MedicationDispense-80589c80-643e-43ea-801b-5f32616e9a27.md) |  |
| [ae6990a3-bf35-4758-88b8-825c9e5f0e98](Condition-ae6990a3-bf35-4758-88b8-825c9e5f0e98.md) |  |
| [c2a71a42-d3cd-4be8-8bf4-fdddea59034f](MedicationAdministration-c2a71a42-d3cd-4be8-8bf4-fdddea59034f.md) |  |
| [d70c3a7e-abf0-44ab-ab0b-8c59ffee8f85](ServiceRequest-d70c3a7e-abf0-44ab-ab0b-8c59ffee8f85.md) |  |
| [d8810230-45e2-40a6-8588-ea1624030762](Observation-d8810230-45e2-40a6-8588-ea1624030762.md) |  |
| [Exemplo de alergia e intolerância.](AllergyIntolerance-42a8e4ee-cc8b-4c07-bee2-da8fe14ada34.md) | Exemplo de alergia e intolerância. |
| [Exemplo de alergia e intolerância.](AllergyIntolerance-b2549739-2479-406e-ab6e-1e4251b08bc9.md) | Exemplo de alergia e intolerância. |
| [Exemplo de composition.](Composition-5c0878bd-a787-489d-82aa-82f4fb55909e.md) | Exemplo de composition. |
| [Exemplo de condição de saúde fictícia.](Condition-91d8d24f-a70d-4ebf-8dea-71cf92ce1bd5.md) | Exemplo de condição de saúde fictícia. |
| [Exemplo de consulta fictícia.](Encounter-c6d553d8-cce0-404b-9d1f-eeffbf7fc6df.md) | Exemplo de consultae fictícia. |
| [Exemplo de declaração de medicação.](MedicationStatement-82c41d7b-b125-49ae-825e-8918885ba234.md) | Exemplo de declaração de medicação fictícia. |
| [Exemplo de declaração de medicação.](MedicationStatement-9d15b978-0743-4a5b-af6f-aac73c027f16.md) | Exemplo de declaração de medicação fictícia. |
| [Exemplo de gravidez.](Observation-90e2319e-dc54-4379-88f3-13c5e74e924e.md) | Exemplo de gravidez fictícia. |
| [Exemplo de imunização.](Immunization-714819de-cd07-4423-94ea-7057504a2cc8.md) | Exemplo de imunização fictícia. |
| [Exemplo de locação.](Location-9fea09cf-0529-4f7d-bad0-80cd5fd00cba.md) | Exemplo de locação. |
| [Exemplo de medicação.](Medication-3a46210c-7eb3-48ec-aa67-db7e7ee18864.md) | Exemplo de medicação fictícia. |
| [Exemplo de observação.](Observation-52ba1c80-5d2c-4faf-8c90-f4363e20d7bb.md) | Exemplo de observação de saúde fictícia. |
| [Exemplo de organização.](Organization-1428c345-c221-411f-880f-6fb163817387.md) | Exemplo de organização de saúde fictícia. |
| [Exemplo de organização.](Organization-2b9c99c6-f9c9-42f0-a107-ed5f0d806995.md) | Exemplo de organização de saúde fictícia. |
| [Exemplo de organização.](Organization-7b98fd1d-5f85-40f5-9436-2c767ab734ae.md) | Exemplo de organização de saúde fictícia. |
| [Exemplo de paciente.](Patient-b1997888-85fd-41b6-bf94-6242cf3c8265.md) | Exemplo de paciente fictício. |
| [Exemplo de paciente.](Patient-b2f63a4c-ddaa-4652-8481-ac1ff473104e.md) | Exemplo de paciente fictício. |
| [Exemplo de paciente.](Patient-c3a40500-5fe8-47f1-b21a-dce205e6c617.md) | Exemplo de paciente fictício. |
| [Exemplo de papel de profissional de saúde.](PractitionerRole-69ba81d5-37fe-471e-99d8-e53649ccdeed.md) | Exemplo de papel de profissional de saúde fictício. |
| [Exemplo de plano de cuidado.](CarePlan-1ed343f2-5231-40d6-a6ea-4428105b7532.md) | Exemplo de plano de cuidado. |
| [Exemplo de pregnancy status.](Observation-5f147d9b-ff84-44d1-b258-e2c9284098f4.md) | Exemplo de pregnancy status de saúde fictícia. |
| [Exemplo de procedimento de saúde.](Procedure-b0030c23-bd7d-445e-bfe5-020828f7dbaf.md) | Exemplo de procedimento de saúde. |
| [Exemplo de profissional de saúde.](Practitioner-d3b61455-f432-48f0-b83b-ba825922d735.md) | Exemplo de profissional de saúde fictício. |
| [Exemplo de reporte de diagnóstico.](DiagnosticReport-a952a5b4-2bc5-42f8-a3de-af67ec3ea791.md) | Exemplo de reporte de diagnóstico. |
| [Exemplo de resultado de gravidez.](Observation-02f99181-eab1-4634-9d58-508c7d4f195b.md) | Exemplo de resultado de gravidez fictícia. |
| [Exemplo de time de cuidado.](CareTeam-0af04a2a-5174-438d-85ae-fc83df65541e.md) | Exemplo de time de cuidado. |
| [Exemplo de uma pessoa relacionada ao paciente.](RelatedPerson-f48ffa19-7af8-4377-aab8-2c98ca1ce07b.md) | Exemplo de uma pessoa relacionada ao paciente. |
| [Exemplo de uso de tabaco.](Observation-bcdeed7f-cd8c-4d53-b61e-160471b913eb.md) | Exemplo de uso de tabaco fictícia. |
| [Exemplo de uso de álcool.](Observation-b359a2d8-dfef-4147-b5a1-3a6437263650.md) | Exemplo de uso de álcool fictícia. |
| [Registro de Atendimento Clínico](Composition-7681618d-399d-4291-b321-32ce6d645088.md) |  |
| [Sumário de Alta Hospitalar](Composition-4e14ddc8-13de-4c7f-8913-bfa81633b81b.md) |  |
| [UBS INDIANOPOLIS SIGMUND FREUD](HealthcareService-58a7b01f-72e8-411a-b1c0-5f7728ab7c51.md) |  |

 

