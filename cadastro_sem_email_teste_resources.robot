*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Library    FakerLibrary

*** Variables ***
${URL}               https://phptravels.com/demo/
${BROWSER}           Chrome
${Wait Time}         10s
${logo_site}         //div[@class='mt-3']
${Submit}            //button[contains(.,'Submit')]
${Thank_You}         //strong[contains(.,'Thank you!')]
${First_name}        //input[contains(@name,'first_name')]
${Last_name}         //input[contains(@name,'last_name')]
${Business_name}     //input[contains(@name,'business_name')]
${Email}             //input[contains(@class,'email form-control')]

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}
    ...             options=add_experimental_option("detach", True)
    Maximize Browser Window
Fechar o navegador
    Capture Page Screenshot
    Close Browser

 Acessar a home page do site https://phptravels.com/demo/
     Go To    url=${URL}
     Wait Until Element Is Visible    locator=${logo_site}

Visualizar o titulo do formulario "${Titulo_form}"
    Title Should Be    title=${Titulo_form}

 Preecher os campos solicitados e deixar apenas o campo email sem preenchimento
    ${nome}         FakerLibrary.First Name    #Gera um nome aleatorio
    Input Text      ${First_name}    ${nome}

    ${sobrenome}    FakerLibrary.Last Name     #Gera um sobrenome aleatorio
    Input Text      ${Last_name}    ${sobrenome}

    ${Empresa}      FakerLibrary.Job           #Gera uma empresa aleatoria
    Input Text      ${Business_name}    ${Empresa}
 
    # ${email_aleatorio}        FakerLibrary.Email         #Gera um email aleatorio
    # Input Text      name:email    ${email_aleatorio}
    Sleep    4s


Realizar o calculo da soma e preencher no campo Resulto     
#Realizando a soma do campo
    ${numb1} =    Get Text    id:numb1
    ${numb2} =    Get Text    id:numb2
    ${result} =    Evaluate    ${numb1} + ${numb2}
    Input Text    id:number    ${result}
    Sleep    4s

Clicando no botão Submit
    Click Element    locator=${Submit}
    Sleep    3s

Visualizando a mensagem de obrigatoriedade do campo não preenchido
    ${alert_text}=    Handle Alert
    Should Be Equal As Strings    ${alert_text}    Please type your email name
    Log To Console                ${alert_text} 

Dado que o usuário esteja no site https://phptravels.com/demo/
    Acessar a home page do site https://phptravels.com/demo/
    Visualizar o titulo do formulario "Book Your Free Demo Now - Phptravels"

Quando preencher todos os dados com dados válidos menos o e-mail
    Preecher os campos solicitados e deixar apenas o campo email sem preenchimento

E realizar a soma dos calculos
    Realizar o calculo da soma e preencher no campo Resulto

E clicar no botão Submit
    Clicando no botão Submit

Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido
    Visualizando a mensagem de obrigatoriedade do campo não preenchido