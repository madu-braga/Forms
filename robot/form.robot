*** Settings *** 
Library     SeleniumLibrary



*** Variables *** 
${input_username}       id:username
${input_email}          id:email
${input_password}       id:password
${input_password2}      id:password2

${button_submit}        id:submit


*** Keywords *** 
Abrir navegador e acessar o site
    Open Browser       file:///C:/Users/mbraga/Documents/Python/Robot/Forms-main/robot/index.html  Chrome


Preencher campos
    Input Text      ${input_username}           Duda
    Sleep            1s
    Input Text      ${input_email}              Duda@gmail.com
    Sleep           1s
    Input Text      ${input_password}           tlg17@N#     
    Sleep           1s
    Input Text      ${input_password2}          tlg17@N#   
    

Clicar em submit
    Click Element   ${button_submit}


Fechar navegador
    Close Browser


*** Test Cases *** 
Cenário 1: preencher formulário
    Abrir navegador e acessar o site
    Preencher campos
    Clicar em submit
    Fechar navegador

