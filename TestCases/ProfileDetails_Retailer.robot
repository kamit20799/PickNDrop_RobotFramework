*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/RProfileDetails_Keyboards.robot

*** Variables ***
${url}      https://pickndeal.oidea.online/laravel_app/public/user/login
${browser}      chrome
${R_username}       potter@gmail.com
${password}     P@ssw0rd
${afterLogin}   https://pickndeal.oidea.online/laravel_app/public/user/profile
${empty}

*** Test Cases ***
TC Profile Details
    [Tags]    smoke     regression
    Open my Browser    ${url}      ${browser}
    set selenium speed  1seconds
    Maximize Browser Window

    Location Should Be      ${url}
    SignIn      ${R_username}     ${password}
    Location Should Be      ${afterLogin}
    Profile Details     OpenKart   123     445554
    

