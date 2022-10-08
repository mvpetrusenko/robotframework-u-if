*** Settings ***
Documentation  Basic info about the whole suite
# Link to the Resources folder which contains keywords
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup      Begin Web Test
Test Teardown   End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER}=  chrome
${START_URL}=  https://www.amazon.com/
${SEARCH_TERM}=  keyboard


*** Test Cases ***
User can search for product
    [Documentation]  Basic info about the test
    [Tags]  Smoke

    Amazon.Search for Product



User must sign in to check out
    [Documentation]  Basic info about the test
    [Tags]  Smoke
    Amazon.Search for Product
    Amazon.Select Product From Search Results
    Amazon.Add Product To Cart
    Amazon.Begin Checkout






