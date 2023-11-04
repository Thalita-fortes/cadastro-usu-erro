*** Settings ***
Documentation        Essa suite de teste realiza o cadastro de um novo usuário no site
...                  'https://phptravels.com/demo/''
Resource             cadastro_sem_email_teste_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***
Caso de Teste 2 – Tentar fazer um cadastro sem um campo obrigatório
    [Documentation]    Essa suite realiza o cadastro de um usuário novo usuário no site 'https://phptravels.com/demo/'
    [Tags]             cadastro
    Dado que o usuário esteja no site https://phptravels.com/demo/
    Quando preencher todos os dados com dados válidos menos o e-mail
    E realizar a soma dos calculos
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido