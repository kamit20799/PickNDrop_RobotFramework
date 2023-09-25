*** Settings ***
Library    SeleniumLibrary    timeout=0.3seconds 

*** Keywords ***

Add Product to Cart
    Click Button    add-to-cart-sauce-labs-backpack
    Click Button    add-to-cart-sauce-labs-bike-light
    Click Button    add-to-cart-sauce-labs-bolt-t-shirt
    Click Button    add-to-cart-sauce-labs-fleece-jacket
    Click Button    add-to-cart-sauce-labs-onesie
    Wait Until Page Contains    Remove
    Sleep    3seconds