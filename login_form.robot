*** Settings ***
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra Sessão



***Test Cases ***
Login com sucesso
    Go To                           ${url}/login
    Input Text                      css:input[name=username]                stark
    Input Text                      css:input[name=password]                jarvis!
    Click Element                   class:btn-login
    Page Should Contain             Olá, Tony Stark. Você acessou a área logada!


Senha invalida
    Go To                           ${url}/login
    Login With                      stark                                   123

    ${message}=                     Get WebElement                          id:flash
    Should Contain                  ${message.text}                         Senha é invalida!


Login invalido
    Go To                           ${url}/login
    Login With                      bob                                     123

    ${message}=                     Get WebElement                          id:flash
    Should Contain                  ${message.text}                         O usuário informado não está cadastrado!


***Keywords***
Login With
    [Arguments]     ${name}     ${password}
    Input Text                      css:input[name=username]                ${name}
    Input Text                      css:input[name=password]                ${password}
    Click Element                   class:btn-login
