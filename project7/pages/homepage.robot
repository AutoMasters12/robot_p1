*** Settings ***
Library    SeleniumLibrary  

*** Variables ***
${xpath_searchflights}    //h1[contains(text(),'Search flights')]
${xpath_trains}    //a[contains(text(),'Trains')]

*** Keywords ***
verify home page
    Element Should Be Visible    ${xpath_searchflights}    

navigate to trains page
    Click Element    ${xpath_trains}        