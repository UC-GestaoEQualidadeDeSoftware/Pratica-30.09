Feature: Pesquisa de vagas pelo candidato

    O candidato deve conseguir pesquisar a vaga pela área de interesse, faixa salarial, localização ou empresa desejados
    
  Background: O candidato, que já está cadastrado no sistema, deseja pesquisar por vagas específicas

  Scenario: Candidato encontra a vaga
    When O candidato clica em 'Filtros de pesquisa'
    And Digita a área de interesse
    And Seleciona a faixa salarial
    And Seleciona a localização
    And Digita a empresa
    And Clica no botão 'Pesquisar'
    Then O sistema deve retornar uma lista com as vagas filtradas
   
  Scenario: Candidato não encontra a vaga
    When O candidato clica em 'Filtros de pesquisa'
    And Digita a área de interesse
    And Seleciona a faixa salarial
    And Seleciona a localização
    And Digita a empresa
    And Clica no botão 'Pesquisar'
    Then O sistema deve retorna uma menssagem informando que não há vagas compatíveis com os filtros
    And O sistema pede para o usuário tentar uma nova busca com outros filtros 
