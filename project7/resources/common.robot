*** Settings ***
Library    SeleniumLibrary  

*** Variables ***
${xpath_close}    //a[@id='close']

*** Keywords ***
verify login popup
    Wait Until Element Is Visible    ${xpath_close}    10