*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${xpath_fromloc}    //input[@id='from_station']
${xpath_toloc}    //input[@id='to_station']   
${xpath_class_of_travel}    //select[@id='trainClass']
${xpath_date_icon}    //a[@class='cal_openLink']//img
${xpath_date_value}    //table[1]//tbody[1]//tr[4]//td[4]//a[1]
${xpath_adults}    //select[@id='train_adults']
${xpath_submit}    //button[@id='trainFormButton']


*** Keywords ***

 
set fromloc
    Input Text    ${xpath_fromloc}    Secunderabad Junction (SC) 
    
set toloc
    Input Text    ${xpath_toloc}    Tirupati (TPTY)
    
select classof travel
    Select From List By Index    ${xpath_class_of_travel}    3
    
select date
    Click Element    ${xpath_date_icon}   
    Click Element    ${xpath_date_value}
    
select adults
    Select From List By Index    ${xpath_adults}    2
    
submit
    Click Element    ${xpath_submit}    
    
     
    
    
       
    
    