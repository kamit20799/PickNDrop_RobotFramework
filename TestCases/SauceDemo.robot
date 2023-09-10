*** Settings ***
Library    SeleniumLibrary    timeout=0.3seconds
Resource    ../Resources/SauceDemo_Keywords.robot
Suite Setup           Inseting Test Data        #This test suite
Test Setup            Begin Testing             #opens browser, etc.
Test Teardown         End Web Test              #close browser
Suite Teardown        Cleanup Testing Data      #This is suite tear-down

*** Variables ***

*** Test Cases ***

User can login to the website
    Login

User can add products to the Product
    Login
    Add Product to Cart

# User can check the Product
#     Begin Checkout

# User can fill their address
#     Checkout- Your Information

# User can the Purchase Summary
#     Checkout- Overview


# Order Summary
#     Checkout- Complete



*** Keywords ***