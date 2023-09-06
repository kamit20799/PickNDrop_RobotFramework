*** Settings ***
Library    SeleniumLibrary    timeout=0.3seconds 

*** Keywords ***
Begin Testing
    Open Browser    about:blank       chrome
    Maximize Browser Window
    Sleep    3seconds

Login
    Go To    https://www.saucedemo.com/
    Input Text    user-name    standard_user
    Input Text    password    secret_sauce
    Click Element    login-button
    Wait Until Page Contains    Swag Labs
    Sleep    3seconds

Add Product to Cart
    Click Button    add-to-cart-sauce-labs-backpack
    Click Button    add-to-cart-sauce-labs-fleece-jacket
    Wait Until Page Contains    Remove
    Sleep    3seconds

Begin Checkout
    Click Element    css=.shopping_cart_link
    Sleep    2seconds
    Click Button    checkout
    Sleep    3seconds

Checkout- Your Information
    Input Text    first-name    Amit
    Input Text    last-name    Kumar
    Input Text    postal-code    852369
    Click Element    continue
    Sleep    4seconds

Checkout- Overview
    Click Button    finish

Checkout- Complete
    Page Should Contain    Thank you for your order!
Close My Browser
    Log    temp

Inseting Test Data
    log     1

Beign Test Data
    Log    2

End Web Test
    log     3

Cleanup Testing Data
    Log    4