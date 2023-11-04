*** Settings ***
Documentation        Essa suite de teste realiza o cadastro de um novo usuário no site
...                  'https://phptravels.com/demo/'
Resource             cadastro_sem_email_teste_resources.robot
Test Setup           Abrir o navegador
# Test Teardown        Fechar o navegador

*** Test Cases ***
Caso de Teste 2 – Tentar fazer um cadastro sem um campo obrigatório
    [Documentation]    Essa suite realiza o cadastro de um usuário novo usuário no site 'https://phptravels.com/demo/'
    [Tags]             cadastro
    Acessar a home page do site https://phptravels.com/demo/
    Visualizar o titulo do formulario "Book Your Free Demo Now - Phptravels"
    Preecher os campos solicitados e deixar apenas o campo email sem preenchimento
    Realizar o calculo da soma e preencher no campo Resulto
    Clicando no botão Submit
    Visualizando a mensagem de obrigatoriedade do campo não preenchido