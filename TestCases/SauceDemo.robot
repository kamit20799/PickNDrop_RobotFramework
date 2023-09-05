*** Settings ***
Library    SeleniumLibrary    timeout=0.3seconds
Resource    ../Resources/Amazon_Keywords.robot 

*** Variables ***

*** Test Cases ***
User must visit to the Website
    Begin Testing

User can login to the website
    Login

User can add products to the Product
    Add Product to Cart

User can check the Product
    Begin Checkout

User can fill their address
    Checkout- Your Information

User can the Purchase Summary
    Checkout- Overview


Order Summary
    Checkout- Complete

Close My Browser
    Close My Browser
*** Keywords ***