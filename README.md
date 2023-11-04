Caso de Teste 2 – Tentar fazer um cadastro sem um campo obrigatório
    Essa suite realiza o cadastro de um usuário novo usuário no site 'https://phptravels.com/demo/' <br/>
    Dado que o usuário esteja no site https://phptravels.com/demo/ <br/>
    Quando preencher todos os dados com dados válidos menos o e-mail <br/>
    E realizar a soma dos calculos <br/>
    E clicar no botão Submit <br/>
    Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido <br/>


<h1> Instruções para execução do script de teste </h1>

OBS: Certifique-se de que você possui o Robot Framework e a biblioteca SeleniumLibrary instalados em seu ambiente de desenvolvimento. Se ainda não os tiver instalado, você pode usar o pip para instalá-los: <br/>

    pip install robotframework <br/>
    pip install robotframework-seleniumlibrary <br/>

Certifique-se de ter o driver do navegador Chrome adequado instalado e configurado no seu sistema. Você pode baixar o ChromeDriver em https://sites.google.com/a/chromium.org/chromedriver/downloads. <br/>

Execute o teste usando o comando a seguir: <br/>

    robot cadastro_sem_email_teste.robot <br/>

O Robot Framework executará o script de teste, abrirá o navegador, preencherá os campos, realizará a soma, clicará no botão "Submit" e verificará se a mensagem de obrigatoriedade do campo não preenchido é exibida corretamente. <br/>

Certifique-se de que o ChromeDriver está configurado corretamente, e a versão do Chrome que você está usando é compatível com o ChromeDriver. Certifique-se também de ter as bibliotecas necessárias instaladas. Se houver erros durante a execução, você pode depurar o script com mensagens de log e ferramentas de depuração do Robot Framework. <br/>
