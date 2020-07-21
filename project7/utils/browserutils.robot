*** Settings ***
Library    SeleniumLibrary  

*** Keywords ***
launch browser and invoke app
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
kill browser
    Close Browser