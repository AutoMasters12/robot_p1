*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/trainspage.robot
Library    SeleniumLibrary    
Resource    ../utils/browserutils.robot
Resource    ../configuartaions/config.robot
Resource    ../pages/homepage.robot
Resource    ../resources/trains.robot
Resource    ../resources/common.robot
Resource    ../configuartaions/config.robot

*** Variables ***
${xpath_searchtrains}    //h1[contains(text(),'Search trains')]     


*** Keywords ***
verify trains page
    Element Should Be Visible    ${xpath_searchtrains}      
    
perform serach trains
    set fromloc
    set toloc
    select classof travel
    select date
    select adults
    submit
    
search trains test    
    [Arguments]    ${url}    ${browser}
    launch browser and invoke app    ${url}    ${browser}
    verify home page
    navigate to trains page
    verify trains page
    perform serach trains
    verify login popup
    kill browser
