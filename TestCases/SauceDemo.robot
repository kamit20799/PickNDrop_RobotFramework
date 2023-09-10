*** Settings ***
Library    SeleniumLibrary    timeout=0.3seconds
Resource    ../Resources/SauceDemo_Keywords.robot
# Suite Setup        Inseting Test Data
Test Setup            Begin Testing
Test Teardown         End Web Test
# Suite Teardown    Cleanup Testing Data

*** Variables ***

*** Test Cases ***
# User must visit to the Website
#     Begin Testing

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