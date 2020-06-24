*** Settings ***
Resource            base.robot
Test Setup          Nova sessão
Test Teardown       Encerra Sessão 


*** Variables ***
${xpath_panter}         xpath://*[@id='checkboxes']/input[7]



*** Test Cases ***
Validar um checkbox
    Go To                               ${url}/checkboxes
    Select Checkbox                     id:thor
    Checkbox Should Be Selected         id:thor 


Marcando a opção com CSS Selector
    Go To                               ${url}/checkboxes
    Select Checkbox                     css:input[value='iron-man']
    Checkbox Should Be Selected         css:input[value='iron-man']
    Sleep                               2 


Marcando a opção com xpath
    [Tags]          iron
    Go To                               ${url}/checkboxes
    Select Checkbox                     xpath://*[@id='checkboxes']/input[7]
    Checkbox Should Be Selected         ${xpath_panter}
    Sleep                               5