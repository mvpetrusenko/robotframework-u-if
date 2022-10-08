*** Settings ***
Library  SeleniumLibrary


*** Variables ***



*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Back to results

Add To Cart
    Click Button    //*[@id="add-to-cart-button"]

Verify Product Added
    Wait Until Page Contains    Added to Cart
