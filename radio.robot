*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://training-wheels-protocol.herokuapp.com



*** Test Cases ***
Validar a seleção do radio button por id
    [Tags]          radio
    Open Browser                ${url}             chrome
    Go To                       ${url}/radios
    Select Radio Button         movies              cap
    Capture Page Screenshot
    Sleep                       2   
    Select Radio Button         movies              thor
    Capture Page Screenshot
    Sleep                       2
    Close Browser