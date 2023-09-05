*** Settings ***
Library    SeleniumLibrary    timeout = .2seconds;

*** Variables ***
${url}            https://automationplayground.com/crm/
${browser}        chrome

*** Test Cases ***
login test
    [Documentation]        This test case verifies that the login page is working
    [Tags]                 100    smoke
    Open Browser           ${url}        ${browser}
    Maximize Browser Window
    Click Link    Sign In
    Page Should Contain    Login
    Input Text    email-id        demo@gmail.com
    Input Text    password        text
    Select Checkbox    remember
    Click Button    submit-id
    Page Should Contain    Our Happy Customers

should be able to add new coustomer
    [Documentation]        This test case should add new coustomer
    [Tags]                 100    smoke
    Open Browser           ${url}        ${browser}
    Maximize Browser Window

    Click Link    Sign In
    Page Should Contain    Login

    Input Text    email-id        demo@gmail.com
    Input Text    password        text

    Select Checkbox    remember
    Click Button    submit-id

    Page Should Contain    Our Happy Customers

    Click Link    new-customer

    Page Should Contain    Add Customer
    Input Text    EmailAddress       admin@gmail.com
    Input Text    FirstName          Martin
    Input Text    LastName           Luther
    Input Text    City               Chandigarh
    Select From List By Value        StateOrRegion        KS
    Select Radio Button    gender    male
    Select Checkbox        promos-name
    Click Button    Submit

    Wait Until Page Contains    Success

    Sleep    3s
    Close Browser