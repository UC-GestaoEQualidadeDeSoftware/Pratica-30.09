Feature: Cadastro da vaga pela empresa autorizada

  Empresas devem poder cadastrar as vagas no site de acordo com o plano adiquirido,
  ver as informações de todos os candidatos que realizaram cadastros na vaga,
  e poder aprovar o candidato para proxima fase ou não.

  Background:
    When Empresa clicou no botão cadastrar vaga
    And Digitou todas as informações sobre a vaga
    And Digitou todas as informações sobre os requisitos do candidato
    And Escolheu os testes que ela desaja alicar ao candidato
    And Clicou no botão 'Criar vaga'

  Scenario: Vaga cadastrada com sucesso
    When A vaga chega para nossa equipe
    And Nossa equipe verifica rapidamente as informações cadastradas da vaga
    Then A nossa equipe deve liberar a vaga para visualização de todos os usuarios
    And Enviar um email avisando que a vaga foi cadastrada com sucesso e já pode
  receber candidatos

  Scenario: Erro ao cadastrar a vaga
    When A vaga chega para nossa equipe
    And Nossa equipe verifica rapidamente as informações cadastradas da vaga
    Then A nossa equipe deve recusar a vaga
    And Enviar um email avisando que o cadastr da vaga foi recusado e quais foram os motivos
