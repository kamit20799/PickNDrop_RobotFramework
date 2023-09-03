*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/Login_Keywords.robot

*** Variables ***
${url}            https://pickndeal.oidea.online/laravel_app/public/
${browser}      chrome
${R_username}       johndoe+953@example.com
${S_username}       christui+978@example.com
${password}     P@ssw0rd
${afterLogin}   https://pickndeal.oidea.online/laravel_app/public/user/dashboard
${empty}


*** Test Cases ***
TC1 Verify successful login for Retailer
    [Documentation]        This test case verifies that a user can successfully log in.
    [Tags]    smoke     regression
    Open my Browser    ${url}      ${browser}
    set selenium speed  1seconds
    Maximize Browser Window
    SignIn          ${R_username}     ${password}
    Location Should Be      ${afterLogin}
    Close My Browsers

TC2 Verify successful login for Suplier
    [Tags]    smoke     
    Open my Browser    ${url}       ${browser}
    SignIn      ${S_username}       ${password}
    Location Should Be      ${afterLogin}
    Close My Browsers


TC3 Verify Unsuccessful Sign In with Incorrect Credentials
    [Tags]    regression
    Open my Browser    ${url}       ${browser}
    SignIn      ${S_username}       545454
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/user/login
    Close My Browsers


TC4 Verify Unsuccessful Sign In with Incorrect Credentials
    [Tags]    regression
    Open my Browser    ${url}       ${browser}
    SignIn      ${empty}       ${empty}
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/
    Close My Browsers


TC5 Verify Sign Up and Forget Password Button Visibility
    [Tags]    smoke     
    Open my Browser    ${url}       ${browser}
    Element Should Be Visible       ${button}
    Element Should Be Visible       ${forgetBtn}
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/
    Close My Browsers


TC6 Verify Forget Password Button Functionality
    [Tags]    smoke     
    Open my Browser    ${url}       ${browser}
    Click Element       ${forgetBtn}
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/user/forgot
    Close My Browsers


*** Keywords ***