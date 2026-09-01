# BR.GOV.SAUDE.BR-CORE.FHIR\Princípios, Premissas - FHIR v4.0.1

* [**Table of Contents**](toc.md)
* **Princípios, Premissas**

## Princípios, Premissas

 O br-core foi projetado como o núcleo padronizado de interoperabilidade para todos os sistemas de saúde no Brasil, e sua aplicação universal é fundamentada em princípios e premissas que garantem eficiência, consistência e alinhamento com padrões globais. 

## Princípios e Premissas

O br-core foi projetado como o núcleo padronizado de interoperabilidade para todos os sistemas de saúde no Brasil, e sua aplicação universal é fundamentada em princípios e premissas que garantem eficiência, consistência e alinhamento com padrões globais.

### Princípios Fundamentais

* Promover a interoperabilidade técnica e semântica, permitindo que diferentes sistemas e tecnologias se conectem e troquem informações de maneira consistente;
* Ser baseado no HL7 FHIR R4, assegurando a conformidade com os padrões internacionais mais amplamente adotados, como SNOMED CT e LOINC; 
* Definir um único conjunto de perfis e modelos que unificam a representação de dados de saúde no Brasil, para reduzir a fragmentação causada por padrões proprietários ou regionais, promovendo uma base comum para todos os atores do sistema;
* Adotar a modelagem canônica com o objetivo de minimizar a necessidade de customizações e extensões para atender a necessidades específicas, sem comprometer a conformidade com o padrão global;
* Apoiar diversos casos de uso, incluindo atenção primária, hospitalar, domiciliar, regulação, vigilância epidemiológica e saúde pública;
* Evitar redundâncias e promovendo eficiência e cuidados integrados reforçando que os dados coletados em uma consulta devem ser reutilizados em relatórios de saúde pública ou faturamento;
* Facilitar a implementação e manutenção de sistemas, reduzindo custos de integração e desenvolvimento;
* Oferecer governança técnica e semântica, com validações consistentes baseadas em terminologias padronizadas e processos robustos;

Premissas que Fundamentaram o br-core

### Premissas

* **Adoção de Modelos Abertos:** Diferentemente da abordagem fechada da RNDS, o br-core utiliza modelos abertos do FHIR, alinhando-se com padrões globais e proporcionando maior flexibilidade.
* **Centralidade no Paciente:** O br-core prioriza o acesso seguro e integrado às informações de saúde dos pacientes, promovendo cuidados centrados e de alta qualidade.
* **Suporte a Múltiplos Contextos:** Foi projetado para atender a uma ampla gama de cenários, incluindo regulação, integração de prontuários eletrônicos, faturamento, monitoramento epidemiológico e saúde pública.
* **Escalabilidade Nacional e Global:** Destaca-se por operar em diferentes escalas, conectando dados locais a redes nacionais e internacionais, assegurando interoperabilidade e continuidade de cuidado.
* **Flexibilidade e Adaptação:** Aceita extensões para necessidades locais sem perder conformidade com padrões globais.
* **Eficiência e Reuso:** Permite reutilização de dados para múltiplos propósitos, como faturamento e relatórios de saúde pública, otimizando recursos.
* **Conformidade e Governança:** Promove governança semântica e técnica, com uso de terminologias padronizadas e processos de validação.

## Convenções de Design

As convenções e o design do BR-Core são orientados para melhorar a interoperabilidade e a padronização dos dados de saúde no Brasil. Ao adaptar e evoluir os padrões da RNDS, o BR-Core fornece uma base sólida para o desenvolvimento e a integração de sistemas de informação em saúde, promovendo uma melhor comunicação e coordenação entre os diferentes atores do setor de saúde.

As convenções de design herdam os requisitos dos Guias Nacionais do HL7 e incorporam os registros da recente proposta de Framework de Guias Nacionais do HL7. 

Os Guias Nacionais do HL7 (Health Level Seven) são desenvolvidos para promover a interoperabilidade entre sistemas de informação em saúde, adaptando padrões internacionais às condições locais. Eles abrangem uma ampla gama de áreas, como registros clínicos, administração de saúde, segurança da informação, entre outros.

### Requisitos dos Guias Nacionais do HL7

* **Interoperabilidade:** Os guias nacionais devem garantir que os sistemas de saúde possam trocar informações de maneira eficiente e segura, promovendo a continuidade do cuidado ao paciente.
* **Conformidade com Padrões Internacionais:** Adaptação dos padrões internacionais do HL7 às necessidades locais, mantendo a conformidade com as normas globais para garantir a interoperabilidade em um contexto mais amplo.
* **Flexibilidade e Extensibilidade:** Os guias devem ser flexíveis o suficiente para acomodar diferentes necessidades locais e permitir a extensão dos perfis conforme necessário, sem comprometer a compatibilidade com os padrões internacionais.
* **Simplificação e Clareza:** As regras e especificações devem ser claras e simples, facilitando a implementação e a validação dos dados. Isso inclui a redução de regras condicionais complexas que possam dificultar a adoção dos padrões.
* **Governança e Atualização Contínua:** Estabelecimento de um processo robusto de governança para garantir que os guias e suas tabelas de referência sejam continuamente atualizados e revisados para atender às necessidades emergentes do sistema de saúde.

### Design Específico para BR-Core

* **Modelo de Informação:** Segue o modelo da RNDS e adota o perfil R4 canônico para garantir consistência, versatilidade e conformidade com os padrões. Adota os perfis da RNDS apenas quando há regulamentações nacionais que tornam um elemento obrigatório ou quando é necessário usar Codesystems e ValueSets específicos do Brasil.

* **Especialização de Perfis Observation:**

* **ObservationAlcoholUse:** Adaptado para registrar dados sobre o uso de álcool.
* **ObservationBreastfeeding:** Focado em documentar informações sobre amamentação.
* **ObservationSmokingStatus:** Especializado para registrar o status de tabagismo do paciente.
* **Governança dos Sistemas Terminológicos:** Os sistemas terminológicos são atualizados e governados por sistemas de gestão de terminologias, garantindo que estejam sempre atualizados e compatíveis com os codesystems e valuesets usados no IG BR.

Os modelos propostos para o BR-Core foram validados com a equipe técnica da SEIDIGI do Ministério da Saúde, visando garantir que atendessem RNDS mas também às necessidades práticas do sistema de saúde brasileiro.
