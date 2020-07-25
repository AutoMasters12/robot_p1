*** Settings ***
Library    SeleniumLibrary    
Resource    ../resources/trains.robot
Resource    ../configuartaions/config.robot

Force Tags    trains

Test Template    search trains test    

*** Test Cases ***
search trains test on chrome    ${url}    ${browser_ff}
search trains test on ff    ${url}    ${browser_chrome}


    
    
    
    