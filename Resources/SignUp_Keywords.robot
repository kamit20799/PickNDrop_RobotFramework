*** Settings ***
Library          SeleniumLibrary
Variables        ../PageObects/SignUp.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

SignUp
    [Arguments]     ${firstName}    ${lastName}     ${emailID}      ${phone}    ${password}    ${confirmPassword}


    Input Text      ${firstName_txtField}       ${firstName}
    Input Text      ${lastName_txtField}        ${lastName}
    Input Text      ${email_txtField}           ${emailID}
    Input Text      ${phoneNumber_txtField}     ${phone}
    Input Text      ${password_txtField}        ${password}
    Input Text      ${confirmPassword_txtField}    ${confirmPassword}
    click element   ${button}
    sleep   5seconds

Close My Browsers
    Close All Browsers