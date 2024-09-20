*** Settings ***
Resource  ../main.robot


*** Variables ***
${CAMPO_NOME}      id:nome
${CAMPO_TELEFONE}  id:telefone
${CAMPO_EMAIL}     id:email
${CAMPO_LISTA}     id:lista


*** Keywords ***
Dado que eu preencha os campos do formulário
    ${Nome}=          Set Variable    Fernanda
    Input Text       ${CAMPO_NOME}       ${Nome}
    ${Telefone}=      Set Variable    (11) 91234-5678
    Input Text       ${CAMPO_TELEFONE}   ${Telefone}
    ${Email}=         Set Variable    exemplo@teste.com
    Input Text       ${CAMPO_EMAIL}      ${Email}
    
E clique no botão "Adicionar"
    Click Button    Adicionar

Então identificar o resultado esperado
    Element Should Be Visible    ${CAMPO_LISTA}  # Verifica se a lista de convidados está visível

E validar que o convidado foi cadastrado
    ${nome} =    Get Text    ${CAMPO_NOME}  # Captura o nome que foi inserido
    Element Should Be Visible    ${CAMPO_LISTA}  # Garante que a lista está visível
    Element Should Contain    ${CAMPO_LISTA}    ${nome}  # Verifica se o nome aparece na lista


