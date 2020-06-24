*** Settings ***
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra Sessão



***Test Cases ***
Verifica o valor ao informar o numero da linha
    GO TO                                       ${url}/tables
    Table Row Should Contain                    id:actors                   2           @vindiesel
    Sleep                                       3
    

Descobre a linha pelo texto chave e valida os demais valores
    GO TO                                       ${url}/tables
    ${target}=                                  Get WebElement              xpath:.//tr[contains(., '@chadwickboseman')]
    Log                                         ${target.text}
    Log To Console                              ${target.text}
    Should Contain                              ${target.text}              $ 700.000
    Should Contain                              ${target.text}              Pantera Negra