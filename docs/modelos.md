# BR.GOV.SAUDE.BR-CORE.FHIR\Especificação - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* **Especificação**

## Especificação

 Os perfis definidos para este guia de implementação estão listados aqui. A seguir estão os perfis que foram definidos para cada seção. (R) denota uma seção obrigatória (ou seja, deve estar presente em um IPS), (S) denota uma seção recomendada, as demais são opcionais: 

|
|

|
|

[br-core-allergyintolerance](StructureDefinition-br-core-allergyintolerance.md)

Este perfil define as características mínimas para o recurso br-core-allergyintolerance registrar, pesquisar e buscar alergias/reações adversas associadas a um paciente.

[br-core-address](StructureDefinition-br-core-address.md)

Este perfil define o tipo de dado Address para uso no contexto brasileiro, incluindo extensões para aldeia, DSEI e polo base.

[br-core-appointment](StructureDefinition-br-core-appointment.md)

Este perfil descreve o agendamento de atendimentos e procedimentos, incluindo status, participantes, horários e justificativas clínicas.

[br-core-capacidadefuncional](StructureDefinition-br-core-capacidadefuncional.md)

Este perfil é utilizado para registrar informações detalhadas sobre a condição, problema, diagnóstico ou outro evento, situação, problema ou conceito clínico que caracteriza a incapacidade funcional do paciente.

[br-core-careplan](StructureDefinition-br-core-careplan.md)

Este perfil descreve a intenção de como um ou mais profissionais pretendem prestar cuidados a um determinado paciente, grupo ou comunidade por um período de tempo, possivelmente limitado ao cuidado de uma condição específica ou conjunto de condições.

[br-core-careteam](StructureDefinition-br-core-careteam.md)

Este perfil restringe o recurso CareTeam que inclui todas as pessoas e organizações que planejam participar da coordenação e prestação de cuidados a um paciente.

[br-core-composition](StructureDefinition-br-core-composition.md)

Este perfil representa conjunto de informações relacionadas aos cuidados em sáude que são reunidas em um único bundle lógico que estabelece seu próprio contexto e atesta quem está fazendo a declaração. Uma Composição define a estrutura e o conteúdo narrativo necessários para um documento. 

[br-core-condition](StructureDefinition-br-core-condition.md)

Este perfil é utilizado para registrar informações detalhadas sobre uma condição, problema, diagnóstico ou outro evento, situação, problema ou conceito clínico que atingiu um nível de preocupação.

[br-core-consent](StructureDefinition-br-core-consent.md)

Este perfil define as características mínimas para registrar consentimentos de tratamento de dados pessoais em conformidade com a LGPD.

[br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.md)

Este perfil restringe o recurso DiagnosticReport que representa as descobertas e a interpretação de testes diagnósticos realizados em pacientes, grupos de pacientes, dispositivos e locais, e/ou amostras derivadas destes.

[br-core-encounter](StructureDefinition-br-core-encounter.md)

Este perfil descreve uma interação entre um paciente e o(s) prestador(es) de serviços saúde com a finalidade de fornecer serviço(s) de saúde ou avaliar o estado de saúde de um paciente.

[br-core-healthcareservice ](StructureDefinition-br-core-healthcareservice.md)

Este perfil restringe o recurso HealthcareService que representa os detalhes de um serviço de saúde disponível em um local.

[br-core-immunization ](StructureDefinition-br-core-immunization.md)

Este perfil restringe o recurso Immunization que descreve o evento em que um paciente recebe uma vacina ou um registro de uma imunização conforme relatado por um paciente, um médico ou outra parte.

[br-core-location ](StructureDefinition-br-core-location.md)

Este perfil restringe o recurso Location que aborda detalhes e informações da posição de um local físico onde os serviços são fornecidos e os recursos e participantes podem ser armazenados, encontrados, contidos ou acomodados.

[br-core-medication ](StructureDefinition-br-core-medication.md)

Este perfil restringe o recurso FHIR Medication e identifica um medicamento para fins de prescrição, dispensação e administração de um medicamento, bem como para fazer declarações sobre medicamentos no Brasil.

[br-core-medicationrequest ](StructureDefinition-br-core-medicationrequest.md)

Este perfil restringe o recurso FHIR MedicationRequest e descreve uma solicitação para fornecimento instruções para administração de um medicamento ao paciente.

[br-core-medicationadministration ](StructureDefinition-br-core-medicationadministration.md)

Este perfil restringe o recurso FHIR MedicationAdministration e descreve o evento de um paciente consumindo ou de algum medicamento sendo administrado a um paciente. Isso pode ser tão simples quanto engolir um comprimido ou pode ser uma infusão de longa duração. Recursos relacionados vinculam esse evento à prescrição de autorização e ao atendimento specífco entre o paciente e o profissional de saúde.

[br-core-medicationdispense ](StructureDefinition-br-core-medicationdispense.md)

Este perfil restringe o recurso FHIR MedicationDispense e descreve que um medicamento deve ser ou foi dispensado para uma pessoa/paciente. O recurso inclui a descrição do medicamento (suprimento) fornecido bem como as instruções para a sua administração. A dispensação do medicamento é o resultado de um pedido de medicamentos feito por um sistema de informações. 

[br-core-medicationstatement ](StructureDefinition-br-core-medicationstatement.md)

Este perfil restringe o recurso FHIR R4 MedicationStatement e descreve uma declaração de um paciente, um prestador de serviços de saúde ou outra parte de que um medicamento é tomado, foi tomado ou deve ser tomado por um paciente. 

[br-core-observation ](StructureDefinition-br-core-observation.md)

Este rperfil restringe o recurso FHIR R4 Observation e registra medidas e declarações simples feitas sobre um paciente, dispositivo ou outro assunto. 

[br-core-observationalcohooluse ](StructureDefinition-br-core-observationalcoholuse.md)

Este perfil restringe o recurso FHIR Observation, projetado para documentar a avaliação do uso de álcool em um resumo de paciente. 

[br-core-observationbreastfeedingstatus ](StructureDefinition-br-core-observationbreastfeedingstatus.md)

Esse perfil restringe o recurso Observation para registrar informações sobre o tipo de aleitamento materno do paciente nos seus primeiros anos de vida 

[br-core-obserobservationpregnancyedd ](StructureDefinition-br-core-observationpregnancyedd.md)

Este perfil restringe o recurso Observation para representar a data prevista para o parto. 

[br-core-pbservationpregnancyoutcome ](StructureDefinition-br-core-observationpregnancyoutcome.md)

Este perfil restringe o recurso Observation para representar a data prevista para o parto. 

[br-core-observationpregnancystatus ](StructureDefinition-br-core-observationpregnancystatus.md)

Este perfil restringe o recurso Observation para representar o histórico resumido dos resultados da gravidez. 

[br-core-observationtobaccouse ](StructureDefinition-br-core-observationtobaccouse.md)

Este perfil restringe o recurso Observation para representar a avaliação sobre tabagismo em um registro de atendimento clínico ou em um sumário do paciente. 

[br-core-organization ](StructureDefinition-br-core-organization.md)

Este perfil representa um agrupamento formal ou informal reconhecido de pessoas ou organizações com o propósito de alcançar alguma forma de ação coletiva. Inclui empresas, instituições, corporações, departamentos, grupos comunitários, grupos de práticas de saúde, planos de saúde, empresas fabricantes de produtos medicinais, entre outros. 

[br-core-patient ](StructureDefinition-br-core-patient.md)
Este perfil representa todas as informações demográficas e administrativas necessárias para descrever um paciente no Brasil, com as respectivas legislações dos elementos e domínios obrigatórios conforme abaixo. O perfil br-core-patient herda do recurso FHIR R4 Patient para definições de escopo e uso. Este perfil representa um agrupamento formal ou informal reconhecido de pessoas ou organizações com o propósito de alcançar alguma forma de ação coletiva. Inclui empresas, instituições, corporações, departamentos, grupos comunitários, grupos de práticas de saúde, planos de saúde, empresas fabricantes de produtos medicinais, entre outros.

[br-core-practitioner ](StructureDefinition-br-core-practitioner.md)
Este perfil representa uma pessoa que está direta ou indiretamente envolvida na prestação de cuidados de saúde ou serviços relacionados ao paciente.

[br-core-practitionerrole ](StructureDefinition-br-core-practitionerrole.md)
Este perfil representa um conjunto específico de funções/locais/especialidades/serviços que um profissional pode desempenhar em uma organização por um período de tempo.

[br-core-procedure ](StructureDefinition-br-core-procedure.md)
Este perfil descreve uma ação que é ou foi realizada em ou para um paciente. Pode ser uma intervenção física como uma operação, ou menos invasiva como serviços de longo prazo, aconselhamento ou hipnoterapia.

[br-core-registroatendimentoclinico ](StructureDefinition-br-core-registroatendimentoclinico.md)
Esse perfil representa um documento clínico, o registro de atendimento clínico, definido pela PORTARIA Nº 234, DE 18 DE JULHO DE 2022, que institui o Modelo de Informação (MI) Registro de Atendimento Clínico (RAC).

[br-core-relatedperson ](StructureDefinition-br-core-relatedperson.md)
Este perfil contém as informações sobre uma pessoa envolvida no cuidado de um paciente, mas que não é alvo de cuidados de saúde nem tem responsabilidade formal no processo de cuidado.

[br-core-servicerequest ](StructureDefinition-br-core-servicerequest.md)
Este perfil representa uma solicitação de serviço, como investigações diagnósticas, tratamentos ou operações a serem realizadas.

[br-core-schedule ](StructureDefinition-br-core-schedule.md)
Este perfil representa agendas e disponibilidades de profissionais, serviços ou locais de saúde para suporte ao processo de agendamento.

[br-core-slot ](StructureDefinition-br-core-slot.md)
Este perfil representa blocos de tempo disponíveis ou reservados em uma agenda para marcação de consultas e procedimentos.

[br-core-specimen ](StructureDefinition-br-core-specimen.md)
Este perfil representa as características de amostras biológicas no contexto de resultados laboratoriais.

[br-core-sumarioalta ](StructureDefinition-br-core-sumarioalta.md)
Este perfil representa as informações da alta hospitalar, conforme a PORTARIA Nº 701, DE 29 DE SETEMBRO DE 2022.

[br-core-vitalsigns ](StructureDefinition-br-core-vitalsigns.md)
Este perfil representa medidas de sinais vitais. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes no recurso e restringe como os elementos são usados.