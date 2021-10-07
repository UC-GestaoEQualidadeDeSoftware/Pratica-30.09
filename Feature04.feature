  Feature: Candidatura a vagas

  Feature Description
    Usuário deve poder se candidatar a uma vaga de sua escolha.

  Background:
    When Uma vaga está disponível
    And Estiver no período de inscrção
    And Clicou no botão 'Candidatar-se'
    
  Scenario: Candidato atende aos requisitos
    When a empresa recebe a candidatura
    And verifica as qualificações do candidato
    And analisa o perfil do candidato
    And valida que o candidato está apto
    Then a empresa insere na plataforma que o candidato está pré selecionado
    And a empresa agenda dia e horário para a entrevista
    And o sistema deve enviar um email ao candidato informando sua aprovação e a data da entrevista
    And o sistema solicita confirmação de presença na entrevista

  Scenario: Candidato não atende aos requisitos
    When a empresa recebe a candidatura
    And verifica as qualificações do candidato
    And analisa o perfil do candidato
    And valida que o candidato não está apto
    Then a empresa insere na plataforma que o candidato não foi aprovado
    And o sistema deve enviar um email ao candidato informando a reprovação e agradecendo a participação no processo 
