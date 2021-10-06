Feature: Cadastro do candidato na plataforma

  O candidato deve conseguir se cadastrar na plataforma

  Scenario: Cadastro do usuario
    When O candidato clica no botão 'Fazer cadastro'
    And Digita o nome
    And Digita o CPF
    And Digita a data de nascimento
    And Digita o endereço
    And Digita o email
    And Digita uma senha
    And Cadastra uma foto
    And Cadastra um curriculo ou importa o Linkedin
    And Clica no botão 'Salvar cadastro'
    Then O sistema deve voltar uma menssagem de sucesso
    And Enviar um email para o usuario
    And Navegar o usuario para tela inicial de vagas

  Scenario: Cadastro do usuario com erro
    When O candidato clica no botão 'Fazer cadastro'
    And Digita o nome
    And Digita o CPF
    And Digita a data de nascimento
    And Digita o endereço
    And Digita o email
    And Digita uma senha
    And Cadastra uma foto
    And Cadastra um curriculo ou importa o Linkedin
    And Clica no botão 'Salvar cadastro'
    Then O sistema deve voltar uma menssagem de erro
    And Pedir para o usuario tentar novamente