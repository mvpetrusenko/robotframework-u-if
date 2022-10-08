*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  ${BROWSER}

 End Web Test

    Close Browser

Suite Setup  Insert Testing Data
    Log  I inserted some data

Suite Teardown  Cleanup Testing Data
    Log  Everithing is cleared
