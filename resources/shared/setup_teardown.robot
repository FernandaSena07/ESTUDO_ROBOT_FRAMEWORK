*** Settings ***
Resource    ../main.robot

*** Keywords ***
Dado que eu acesse o ControleConvidados
    Open Browser    https://fernandasena07.github.io/ControleDeConvidados/    Chrome

Fechar o navegador
    Close Browser
