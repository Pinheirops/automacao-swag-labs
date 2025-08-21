*** Settings ***
Library    SeleniumLibrary
*** Keywords ***

Open Browsers
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window

Close Browsers
    Close Browser
    