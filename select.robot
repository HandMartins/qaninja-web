*** Settings ***
#Resource        base.robot
Library         SeleniumLibrary



***Variables***
${url}          https://training-wheels-protocol.herokuapp.com



***Test Cases ***
Validar dropdown||combobox por Label id
    Open Browser                                ${url}                                  chrome
    GO TO                                       ${url}/dropdown
    Select From List By Label                   id:dropdown                             Bucky
    ${result}=                                  Get Selected List Label                 id:dropdown     
    Should Be Equal                             ${result}                               Bucky
    Sleep                                       3
    Close Browser


Validar dropdown||combobox por Value class
    Open Browser                                ${url}                                  chrome
    GO TO                                       ${url}/dropdown
    Select From List By Value                   class:avenger-list                      4
    ${result}=                                  Get Selected List Label                 class:avenger-list     
    Should Be Equal                             ${result}                               Natasha Romanoff
    Sleep                                       3
    Close Browser


Validar dropdow Label e confirmar por class
    [Tags]              banner
    Open Browser                                ${url}                                  chrome
    GO TO                                       ${url}/dropdown
    Select From List By Label                   id:dropdown                             Bruce Banner
    ${result}=                                  Get Selected List Value                 id:dropdown
    Should Be Equal                             ${result}                               5
    Sleep                                       3
    Close Browser