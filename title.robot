*** Settings ***
Library     SeleniumLibrary

** Test Cases ***
Validar o titulo da página
    Open Browser            https://training-wheels-protocol.herokuapp.com/     chrome
    Title Should Be         Training Wheels Protocol
    Close Browser
