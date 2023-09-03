*** Settings ***
Library  SeleniumLibrary
Resource        ../Resources/SignUp_Keywords.robot

*** Variables ***
${url}      https://pickndeal.oidea.online/laravel_app/public/user/login
${browser}      chrome
${RemailID}      johndoe+10553@example.com
${SemailID}      johndoe+10554@example.com
${phone}        8787878787
${password}     P@ssw0rd
${confirmPassword}      P@ssw0rd
${afterSignUP}     https://pickndeal.oidea.online/laravel_app/public/user/register
${empty}

*** Test Cases ***
TC1 Sign Up as a Retailer with Valid Details
    Open my Browser    ${url}      ${browser}
    click element     ${SignUp_btn}
    SignUp     John     Dope      johndoe+10143@example.com     ${phone}    ${password}     ${confirmPassword}
    Location Should Be      ${afterSignUP}
    Close My Browsers


TC2 Sign Up as a Supplier with Valid Details Sign Up with Password Mismatch
    Open my Browser    ${url}      ${browser}
    click element     ${SignUp_btn}
    Click Element   ${sup_Profile}
    SignUp     Chris     Tui      christui+76877@example.com     ${phone}    ${password}     ${confirmPassword}
    Location Should Be      ${afterSignUP}
    Close My Browsers


TC3 Sign Up with Password Mismatch
    Open my Browser    ${url}      ${browser}
    click element     ${SignUp_btn}
    SignUp     Chris     Tui      christui+767@example.com     ${phone}    P@ssw0rd     P@ssw0rd54
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/user/register


TC4 Sign Up with Invalid Email Address
    Open my Browser    ${url}      ${browser}
    click element     ${SignUp_btn}
    SignUp     Chris     Tui      invalid.email.example.com    ${phone}    ${password}     ${confirmPassword}
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/user/register
    Close My Browsers


TC5 Sign Up with Existing Email Address
    Open my Browser    ${url}      ${browser}
    click element     ${SignUp_btn}
    SignUp     John     Dope      ${RemailID}     ${phone}    ${password}     ${confirmPassword}
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/user/register
    Close My Browsers


TC6 Sign Up with Empty Required Fields
    Open my Browser    ${url}      ${browser}
    click element     ${SignUp_btn}
    SignUp     John     Dope      ${RemailID}     ${empty}    ${password}     ${confirmPassword}
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/user/register
    Close My Browsers


TC7 Sign Up with Weak Password
    Open my Browser    ${url}      ${browser}
    click element     ${SignUp_btn}
    SignUp     John     Dope      johndoe+10143@example.com     ${phone}    Pw0rd     Pw0rd
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/user/register
    Close My Browsers


TC8 Sign Up with First Name or Last Name Containing Special Characters
    Open my Browser    ${url}      ${browser}
    click element     ${SignUp_btn}
    SignUp     Jo@hn     Dop#e      johndoe+10143@example.com     ${phone}    ${password}     ${confirmPassword}
    Location Should Be      https://pickndeal.oidea.online/laravel_app/public/user/register
    Close My Browsers

*** Keywords ***
