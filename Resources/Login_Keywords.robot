*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObects/Login.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

SignIn
    [Arguments]     ${username}     ${password}
    Input Text      ${username_txtField}    ${username}
    Input Text      ${password_txtField}    ${password}
    Click Button    ${button}


Close My Browsers
    Close Browser