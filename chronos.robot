*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary    
Library    OperatingSystem
Library    Screenshot

*** Variables ***
${url}    https://www.demoblaze.com/
${navegador}    chrome


*** Test Cases ***                
Valid Login
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Click Link    Laptops
    Wait Until Element Is Visible     link=Sony vaio i5
    Click Link      Sony vaio i5
    Wait Until Element Is Visible    xpath=//*[@id="tbodyid"]/div[2]/div/a
    Click Element    xpath=//*[@id="tbodyid"]/div[2]/div/a
    Alert Should Be Present
    Take Screenshot     chrome