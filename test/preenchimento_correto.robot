*** Settings ***
Resource          ../resources/main.robot
Test Setup        Dado que eu acesse o ControleConvidados
Test Teardown     Fechar o navegador

*** Test Cases ***
Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo convidado é criado 
    Dado que eu preencha os campos do formulário
    E clique no botão "Adicionar"   
    Então identificar o resultado esperado
    E validar que o convidado foi cadastrado

