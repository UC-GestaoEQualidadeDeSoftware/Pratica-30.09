Feature: Cadastro da empresa que deseja disponibilizar a vaga

  Empresas devem poder se cadastrar no site e o cadastro validado pela nossa
  equipe, para quando as mesmas tiverem vagas disponíveis conseguirem
  cadastra-las no website.

  Background:
    When Empresa selecionou fazer cadastro na plataforma
    And Digitou todas as informações obrigatorias
    And Clicou no botão 'Enviar solicitação'

  Scenario: Empresa autorizada pela nossa equipe
    When nossa equipe recebe o cadastro da empresa
    And verifica o nome da empresa
    And verifica o CNPJ da empresa
    And verifica o plano escolhido pela empresa
    And valida que está tudo correto
    Then a nossa equipe deve liberar o acesso á plataforma para empresa em questão
    And o sistema deve enviar um email para o responsavel pelo cadastro da empresa
  avisando do cadastro.

  Scenario: Empresa não autorizada pela nossa equipe
    When nossa equipe recebe o cadastro da empresa
    And verifica o nome da empresa
    And verifica o CNPJ da empresa
    And verifica o plano escolhido pela empresa
    And verifica que á algum erro nas informações passadas pela empresa
    Then a nossa equipe deve rejeitar a solicitação de acesso á plataforma
    And o sistema deve enviar um email para o responsavel pelo cadastro da empresa
avisando que o cadastro falhou pois havia(m) erro(s) em alguma(s) informação(ões).